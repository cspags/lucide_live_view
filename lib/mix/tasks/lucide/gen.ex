defmodule Mix.Tasks.Lucide.Gen do
  use Mix.Task

  @shortdoc "Convert source SVG files into Phoenix LiveView components"
  def run(_) do
    loop_directory()

    Mix.Task.run("format")
  end

  defp loop_directory() do
    src_path = "./priv/lucide/icons/"
    dest_path = "./lib/lucide.ex"
    module_name = "Lucide"

    File.rm(dest_path)

    content =
      src_path
      |> File.ls!()
      |> Enum.filter(&(Path.extname(&1) == ".svg"))
      |> Enum.sort()
      |> Enum.map(&build_component(src_path, &1))
      |> build_module(module_name)

    File.write!(dest_path, content)
  end

  defp build_component(src_path, filename) do
    svg_filepath = Path.join(src_path, filename)
    docs = filename

    svg_content =
      File.read!(svg_filepath)
      |> String.trim()
      |> String.replace(~r/<svg[:blank]*/, "<svg {@attrs}")

    filename |> function_name() |> build_function(docs, svg_content)
  end

  defp function_name(current_filename) do
    current_filename
    |> Path.basename(".svg")
    |> String.split("-")
    |> Enum.join("_")
  end

  defp build_module(functions, module_name) do
    """
    defmodule #{module_name} do
      use Phoenix.Component

      def render(%{icon: icon} = assigns) when is_bitstring(icon) do
        # load the function names into the atom table
        __MODULE__.module_info(:functions) |> Keyword.keys()
        icon_atom = icon |> String.replace("-", "_") |> String.downcase() |> String.to_existing_atom()

        apply(__MODULE__, icon_atom, [assigns])
      end

      def render(%{icon: icon} = assigns), do: apply(__MODULE__, icon, [assigns])

      #{Enum.join(functions, "\n")}
    end
    """
  end

  defp build_function(function_name, docs, svg) do
    """
    @doc "#{docs}"
    def #{function_name}(assigns) do
      attrs = assigns_to_attributes(assigns)
      assigns = assign(assigns, :attrs, attrs)

      ~H\"\"\"
      #{svg}
      \"\"\"
    end
    """
  end
end
