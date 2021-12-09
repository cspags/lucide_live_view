defmodule Lucide.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/cspags/lucide_live_view"

  def project do
    [
      app: :lucide_live_view,
      version: @version,
      elixir: "~> 1.10",
      elixirc_paths: elixirc_paths(Mix.env()),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),

      # Hex
      description:
        "A collection of Phoenix LiveView Components for all SVG Lucide Icons (formerly Feather Icons).",
      package: package(),

      # Docs
      name: "Lucide LiveView",
      source_url: @source_url,
      homepage_url: @source_url,
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md", "LICENSE.md"],
      source_url: @source_url,
      source_ref: "v#{@version}"
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.22", only: :dev, runtime: false},
      {:phoenix_live_view, ">= 0.16.0"}
    ]
  end

  defp aliases do
    [
      setup: ["deps.get", "deps.compile", "compile"]
    ]
  end

  defp package do
    [
      maintainers: ["Chris Spags"],
      licenses: ["MIT"],
      links: %{
        github: @source_url
      },
      files: ["lib", "mix.exs", ".formatter.exs", "README.md", "LICENSE.md"]
    ]
  end
end
