defmodule Lucide do
  use Phoenix.Component

  def render(%{icon: icon} = assigns) when is_bitstring(icon) do
    # load the function names into the atom table
    __MODULE__.module_info(:functions) |> Keyword.keys()
    icon_atom = icon |> String.replace("-", "_") |> String.downcase() |> String.to_existing_atom()

    apply(__MODULE__, icon_atom, [assigns])
  end

  def render(%{icon: icon} = assigns), do: apply(__MODULE__, icon, [assigns])

  @doc "a-arrow-down.svg"
  def a_arrow_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.5 13h6" />
    <path d="m2 16 4.5-9 4.5 9" />
    <path d="M18 7v9" />
    <path d="m14 12 4 4 4-4" />
    </svg>
    """
  end

  @doc "a-arrow-up.svg"
  def a_arrow_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.5 13h6" />
    <path d="m2 16 4.5-9 4.5 9" />
    <path d="M18 16V7" />
    <path d="m14 11 4-4 4 4" />
    </svg>
    """
  end

  @doc "a-large-small.svg"
  def a_large_small(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 14h-5" />
    <path d="M16 16v-3.5a2.5 2.5 0 0 1 5 0V16" />
    <path d="M4.5 13h6" />
    <path d="m3 16 4.5-9 4.5 9" />
    </svg>
    """
  end

  @doc "accessibility.svg"
  def accessibility(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="16" cy="4" r="1" />
    <path d="m18 19 1-7-6 1" />
    <path d="m5 8 3-3 5.5 3-2.36 3.5" />
    <path d="M4.24 14.5a5 5 0 0 0 6.88 6" />
    <path d="M13.76 17.5a5 5 0 0 0-6.88-6" />
    </svg>
    """
  end

  @doc "activity-square.svg"
  def activity_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M17 12h-2l-2 5-2-10-2 5H7" />
    </svg>
    """
  end

  @doc "activity.svg"
  def activity(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 12h-4l-3 9L9 3l-3 9H2" />
    </svg>
    """
  end

  @doc "air-vent.svg"
  def air_vent(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 12H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2" />
    <path d="M6 8h12" />
    <path d="M18.3 17.7a2.5 2.5 0 0 1-3.16 3.83 2.53 2.53 0 0 1-1.14-2V12" />
    <path d="M6.6 15.6A2 2 0 1 0 10 17v-5" />
    </svg>
    """
  end

  @doc "airplay.svg"
  def airplay(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 17H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-1" />
    <polygon points="12 15 17 21 7 21 12 15" />
    </svg>
    """
  end

  @doc "alarm-clock-check.svg"
  def alarm_clock_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="13" r="8" />
    <path d="M5 3 2 6" />
    <path d="m22 6-3-3" />
    <path d="M6.38 18.7 4 21" />
    <path d="M17.64 18.67 20 21" />
    <path d="m9 13 2 2 4-4" />
    </svg>
    """
  end

  @doc "alarm-clock-minus.svg"
  def alarm_clock_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="13" r="8" />
    <path d="M5 3 2 6" />
    <path d="m22 6-3-3" />
    <path d="M6.38 18.7 4 21" />
    <path d="M17.64 18.67 20 21" />
    <path d="M9 13h6" />
    </svg>
    """
  end

  @doc "alarm-clock-off.svg"
  def alarm_clock_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6.87 6.87a8 8 0 1 0 11.26 11.26" />
    <path d="M19.9 14.25a8 8 0 0 0-9.15-9.15" />
    <path d="m22 6-3-3" />
    <path d="M6.26 18.67 4 21" />
    <path d="m2 2 20 20" />
    <path d="M4 4 2 6" />
    </svg>
    """
  end

  @doc "alarm-clock-plus.svg"
  def alarm_clock_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="13" r="8" />
    <path d="M5 3 2 6" />
    <path d="m22 6-3-3" />
    <path d="M6.38 18.7 4 21" />
    <path d="M17.64 18.67 20 21" />
    <path d="M12 10v6" />
    <path d="M9 13h6" />
    </svg>
    """
  end

  @doc "alarm-clock.svg"
  def alarm_clock(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="13" r="8" />
    <path d="M12 9v4l2 2" />
    <path d="M5 3 2 6" />
    <path d="m22 6-3-3" />
    <path d="M6.38 18.7 4 21" />
    <path d="M17.64 18.67 20 21" />
    </svg>
    """
  end

  @doc "alarm-smoke.svg"
  def alarm_smoke(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 8a2 2 0 0 1-2-2V3h20v3a2 2 0 0 1-2 2Z" />
    <path d="m19 8-.8 3c-.1.6-.6 1-1.2 1H7c-.6 0-1.1-.4-1.2-1L5 8" />
    <path d="M16 21c0-2.5 2-2.5 2-5" />
    <path d="M11 21c0-2.5 2-2.5 2-5" />
    <path d="M6 21c0-2.5 2-2.5 2-5" />
    </svg>
    """
  end

  @doc "album.svg"
  def album(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" ry="2" />
    <polyline points="11 3 11 11 14 8 17 11 17 3" />
    </svg>
    """
  end

  @doc "alert-circle.svg"
  def alert_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <line x1="12" x2="12" y1="8" y2="12" />
    <line x1="12" x2="12.01" y1="16" y2="16" />
    </svg>
    """
  end

  @doc "alert-octagon.svg"
  def alert_octagon(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2" />
    <line x1="12" x2="12" y1="8" y2="12" />
    <line x1="12" x2="12.01" y1="16" y2="16" />
    </svg>
    """
  end

  @doc "alert-triangle.svg"
  def alert_triangle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m21.73 18-8-14a2 2 0 0 0-3.48 0l-8 14A2 2 0 0 0 4 21h16a2 2 0 0 0 1.73-3Z" />
    <path d="M12 9v4" />
    <path d="M12 17h.01" />
    </svg>
    """
  end

  @doc "align-center-horizontal.svg"
  def align_center_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 12h20" />
    <path d="M10 16v4a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2v-4" />
    <path d="M10 8V4a2 2 0 0 0-2-2H6a2 2 0 0 0-2 2v4" />
    <path d="M20 16v1a2 2 0 0 1-2 2h-2a2 2 0 0 1-2-2v-1" />
    <path d="M14 8V7c0-1.1.9-2 2-2h2a2 2 0 0 1 2 2v1" />
    </svg>
    """
  end

  @doc "align-center-vertical.svg"
  def align_center_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 2v20" />
    <path d="M8 10H4a2 2 0 0 1-2-2V6c0-1.1.9-2 2-2h4" />
    <path d="M16 10h4a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-4" />
    <path d="M8 20H7a2 2 0 0 1-2-2v-2c0-1.1.9-2 2-2h1" />
    <path d="M16 14h1a2 2 0 0 1 2 2v2a2 2 0 0 1-2 2h-1" />
    </svg>
    """
  end

  @doc "align-center.svg"
  def align_center(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="21" x2="3" y1="6" y2="6" />
    <line x1="17" x2="7" y1="12" y2="12" />
    <line x1="19" x2="5" y1="18" y2="18" />
    </svg>
    """
  end

  @doc "align-end-horizontal.svg"
  def align_end_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="6" height="16" x="4" y="2" rx="2" />
    <rect width="6" height="9" x="14" y="9" rx="2" />
    <path d="M22 22H2" />
    </svg>
    """
  end

  @doc "align-end-vertical.svg"
  def align_end_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="16" height="6" x="2" y="4" rx="2" />
    <rect width="9" height="6" x="9" y="14" rx="2" />
    <path d="M22 22V2" />
    </svg>
    """
  end

  @doc "align-horizontal-distribute-center.svg"
  def align_horizontal_distribute_center(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="6" height="14" x="4" y="5" rx="2" />
    <rect width="6" height="10" x="14" y="7" rx="2" />
    <path d="M17 22v-5" />
    <path d="M17 7V2" />
    <path d="M7 22v-3" />
    <path d="M7 5V2" />
    </svg>
    """
  end

  @doc "align-horizontal-distribute-end.svg"
  def align_horizontal_distribute_end(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="6" height="14" x="4" y="5" rx="2" />
    <rect width="6" height="10" x="14" y="7" rx="2" />
    <path d="M10 2v20" />
    <path d="M20 2v20" />
    </svg>
    """
  end

  @doc "align-horizontal-distribute-start.svg"
  def align_horizontal_distribute_start(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="6" height="14" x="4" y="5" rx="2" />
    <rect width="6" height="10" x="14" y="7" rx="2" />
    <path d="M4 2v20" />
    <path d="M14 2v20" />
    </svg>
    """
  end

  @doc "align-horizontal-justify-center.svg"
  def align_horizontal_justify_center(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="6" height="14" x="2" y="5" rx="2" />
    <rect width="6" height="10" x="16" y="7" rx="2" />
    <path d="M12 2v20" />
    </svg>
    """
  end

  @doc "align-horizontal-justify-end.svg"
  def align_horizontal_justify_end(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="6" height="14" x="2" y="5" rx="2" />
    <rect width="6" height="10" x="12" y="7" rx="2" />
    <path d="M22 2v20" />
    </svg>
    """
  end

  @doc "align-horizontal-justify-start.svg"
  def align_horizontal_justify_start(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="6" height="14" x="6" y="5" rx="2" />
    <rect width="6" height="10" x="16" y="7" rx="2" />
    <path d="M2 2v20" />
    </svg>
    """
  end

  @doc "align-horizontal-space-around.svg"
  def align_horizontal_space_around(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="6" height="10" x="9" y="7" rx="2" />
    <path d="M4 22V2" />
    <path d="M20 22V2" />
    </svg>
    """
  end

  @doc "align-horizontal-space-between.svg"
  def align_horizontal_space_between(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="6" height="14" x="3" y="5" rx="2" />
    <rect width="6" height="10" x="15" y="7" rx="2" />
    <path d="M3 2v20" />
    <path d="M21 2v20" />
    </svg>
    """
  end

  @doc "align-justify.svg"
  def align_justify(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="3" x2="21" y1="6" y2="6" />
    <line x1="3" x2="21" y1="12" y2="12" />
    <line x1="3" x2="21" y1="18" y2="18" />
    </svg>
    """
  end

  @doc "align-left.svg"
  def align_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="21" x2="3" y1="6" y2="6" />
    <line x1="15" x2="3" y1="12" y2="12" />
    <line x1="17" x2="3" y1="18" y2="18" />
    </svg>
    """
  end

  @doc "align-right.svg"
  def align_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="21" x2="3" y1="6" y2="6" />
    <line x1="21" x2="9" y1="12" y2="12" />
    <line x1="21" x2="7" y1="18" y2="18" />
    </svg>
    """
  end

  @doc "align-start-horizontal.svg"
  def align_start_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="6" height="16" x="4" y="6" rx="2" />
    <rect width="6" height="9" x="14" y="6" rx="2" />
    <path d="M22 2H2" />
    </svg>
    """
  end

  @doc "align-start-vertical.svg"
  def align_start_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="9" height="6" x="6" y="14" rx="2" />
    <rect width="16" height="6" x="6" y="4" rx="2" />
    <path d="M2 2v20" />
    </svg>
    """
  end

  @doc "align-vertical-distribute-center.svg"
  def align_vertical_distribute_center(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="14" height="6" x="5" y="14" rx="2" />
    <rect width="10" height="6" x="7" y="4" rx="2" />
    <path d="M22 7h-5" />
    <path d="M7 7H1" />
    <path d="M22 17h-3" />
    <path d="M5 17H2" />
    </svg>
    """
  end

  @doc "align-vertical-distribute-end.svg"
  def align_vertical_distribute_end(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="14" height="6" x="5" y="14" rx="2" />
    <rect width="10" height="6" x="7" y="4" rx="2" />
    <path d="M2 20h20" />
    <path d="M2 10h20" />
    </svg>
    """
  end

  @doc "align-vertical-distribute-start.svg"
  def align_vertical_distribute_start(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="14" height="6" x="5" y="14" rx="2" />
    <rect width="10" height="6" x="7" y="4" rx="2" />
    <path d="M2 14h20" />
    <path d="M2 4h20" />
    </svg>
    """
  end

  @doc "align-vertical-justify-center.svg"
  def align_vertical_justify_center(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="14" height="6" x="5" y="16" rx="2" />
    <rect width="10" height="6" x="7" y="2" rx="2" />
    <path d="M2 12h20" />
    </svg>
    """
  end

  @doc "align-vertical-justify-end.svg"
  def align_vertical_justify_end(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="14" height="6" x="5" y="12" rx="2" />
    <rect width="10" height="6" x="7" y="2" rx="2" />
    <path d="M2 22h20" />
    </svg>
    """
  end

  @doc "align-vertical-justify-start.svg"
  def align_vertical_justify_start(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="14" height="6" x="5" y="16" rx="2" />
    <rect width="10" height="6" x="7" y="6" rx="2" />
    <path d="M2 2h20" />
    </svg>
    """
  end

  @doc "align-vertical-space-around.svg"
  def align_vertical_space_around(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="10" height="6" x="7" y="9" rx="2" />
    <path d="M22 20H2" />
    <path d="M22 4H2" />
    </svg>
    """
  end

  @doc "align-vertical-space-between.svg"
  def align_vertical_space_between(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="14" height="6" x="5" y="15" rx="2" />
    <rect width="10" height="6" x="7" y="3" rx="2" />
    <path d="M2 21h20" />
    <path d="M2 3h20" />
    </svg>
    """
  end

  @doc "ambulance.svg"
  def ambulance(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 10H6" />
    <path d="M14 18V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v11a1 1 0 0 0 1 1h2" />
    <path
      d="M19 18h2a1 1 0 0 0 1-1v-3.28a1 1 0 0 0-.684-.948l-1.923-.641a1 1 0 0 1-.578-.502l-1.539-3.076A1 1 0 0 0 16.382 8H14" />
    <path d="M8 8v4" />
    <path d="M9 18h6" />
    <circle cx="17" cy="18" r="2" />
    <circle cx="7" cy="18" r="2" />
    </svg>
    """
  end

  @doc "ampersand.svg"
  def ampersand(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17.5 12c0 4.4-3.6 8-8 8A4.5 4.5 0 0 1 5 15.5c0-6 8-4 8-8.5a3 3 0 1 0-6 0c0 3 2.5 8.5 12 13" />
    <path d="M16 12h3" />
    </svg>
    """
  end

  @doc "ampersands.svg"
  def ampersands(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 17c-5-3-7-7-7-9a2 2 0 0 1 4 0c0 2.5-5 2.5-5 6 0 1.7 1.3 3 3 3 2.8 0 5-2.2 5-5" />
    <path d="M22 17c-5-3-7-7-7-9a2 2 0 0 1 4 0c0 2.5-5 2.5-5 6 0 1.7 1.3 3 3 3 2.8 0 5-2.2 5-5" />
    </svg>
    """
  end

  @doc "anchor.svg"
  def anchor(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22V8" />
    <path d="M5 12H2a10 10 0 0 0 20 0h-3" />
    <circle cx="12" cy="5" r="3" />
    </svg>
    """
  end

  @doc "angry.svg"
  def angry(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M16 16s-1.5-2-4-2-4 2-4 2" />
    <path d="M7.5 8 10 9" />
    <path d="m14 9 2.5-1" />
    <path d="M9 10h0" />
    <path d="M15 10h0" />
    </svg>
    """
  end

  @doc "annoyed.svg"
  def annoyed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M8 15h8" />
    <path d="M8 9h2" />
    <path d="M14 9h2" />
    </svg>
    """
  end

  @doc "antenna.svg"
  def antenna(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 12 7 2" />
    <path d="m7 12 5-10" />
    <path d="m12 12 5-10" />
    <path d="m17 12 5-10" />
    <path d="M4.5 7h15" />
    <path d="M12 16v6" />
    </svg>
    """
  end

  @doc "anvil.svg"
  def anvil(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 10c-2.8 0-5-2.2-5-5h5" />
    <path d="M7 4v8h7a8 8 0 0 0 8-8Z" />
    <path d="M9 12v5" />
    <path d="M15 12v5" />
    <path d="M5 20a3 3 0 0 1 3-3h8a3 3 0 0 1 3 3v1H5Z" />
    </svg>
    """
  end

  @doc "aperture.svg"
  def aperture(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="m14.31 8 5.74 9.94" />
    <path d="M9.69 8h11.48" />
    <path d="m7.38 12 5.74-9.94" />
    <path d="M9.69 16 3.95 6.06" />
    <path d="M14.31 16H2.83" />
    <path d="m16.62 12-5.74 9.94" />
    </svg>
    """
  end

  @doc "app-window.svg"
  def app_window(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect x="2" y="4" width="20" height="16" rx="2" />
    <path d="M10 4v4" />
    <path d="M2 8h20" />
    <path d="M6 4v4" />
    </svg>
    """
  end

  @doc "apple.svg"
  def apple(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 20.94c1.5 0 2.75 1.06 4 1.06 3 0 6-8 6-12.22A4.91 4.91 0 0 0 17 5c-2.22 0-4 1.44-5 2-1-.56-2.78-2-5-2a4.9 4.9 0 0 0-5 4.78C2 14 5 22 8 22c1.25 0 2.5-1.06 4-1.06Z" />
    <path d="M10 2c1 .5 2 2 2 5" />
    </svg>
    """
  end

  @doc "archive-restore.svg"
  def archive_restore(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="5" x="2" y="3" rx="1" />
    <path d="M4 8v11a2 2 0 0 0 2 2h2" />
    <path d="M20 8v11a2 2 0 0 1-2 2h-2" />
    <path d="m9 15 3-3 3 3" />
    <path d="M12 12v9" />
    </svg>
    """
  end

  @doc "archive-x.svg"
  def archive_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="5" x="2" y="3" rx="1" />
    <path d="M4 8v11a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8" />
    <path d="m9.5 17 5-5" />
    <path d="m9.5 12 5 5" />
    </svg>
    """
  end

  @doc "archive.svg"
  def archive(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="5" x="2" y="3" rx="1" />
    <path d="M4 8v11a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8" />
    <path d="M10 12h4" />
    </svg>
    """
  end

  @doc "area-chart.svg"
  def area_chart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 3v18h18" />
    <path d="M7 12v5h12V8l-5 5-4-4Z" />
    </svg>
    """
  end

  @doc "armchair.svg"
  def armchair(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19 9V6a2 2 0 0 0-2-2H7a2 2 0 0 0-2 2v3" />
    <path d="M3 16a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-5a2 2 0 0 0-4 0v2H7v-2a2 2 0 0 0-4 0Z" />
    <path d="M5 18v2" />
    <path d="M19 18v2" />
    </svg>
    """
  end

  @doc "arrow-big-down-dash.svg"
  def arrow_big_down_dash(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 5H9" />
    <path d="M15 9v3h4l-7 7-7-7h4V9z" />
    </svg>
    """
  end

  @doc "arrow-big-down.svg"
  def arrow_big_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 6v6h4l-7 7-7-7h4V6h6z" />
    </svg>
    """
  end

  @doc "arrow-big-left-dash.svg"
  def arrow_big_left_dash(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19 15V9" />
    <path d="M15 15h-3v4l-7-7 7-7v4h3v6z" />
    </svg>
    """
  end

  @doc "arrow-big-left.svg"
  def arrow_big_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 15h-6v4l-7-7 7-7v4h6v6z" />
    </svg>
    """
  end

  @doc "arrow-big-right-dash.svg"
  def arrow_big_right_dash(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 9v6" />
    <path d="M9 9h3V5l7 7-7 7v-4H9V9z" />
    </svg>
    """
  end

  @doc "arrow-big-right.svg"
  def arrow_big_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 9h6V5l7 7-7 7v-4H6V9z" />
    </svg>
    """
  end

  @doc "arrow-big-up-dash.svg"
  def arrow_big_up_dash(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 19h6" />
    <path d="M9 15v-3H5l7-7 7 7h-4v3H9z" />
    </svg>
    """
  end

  @doc "arrow-big-up.svg"
  def arrow_big_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 18v-6H5l7-7 7 7h-4v6H9z" />
    </svg>
    """
  end

  @doc "arrow-down-0-1.svg"
  def arrow_down_0_1(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 16 4 4 4-4" />
    <path d="M7 20V4" />
    <rect x="15" y="4" width="4" height="6" ry="2" />
    <path d="M17 20v-6h-2" />
    <path d="M15 20h4" />
    </svg>
    """
  end

  @doc "arrow-down-1-0.svg"
  def arrow_down_1_0(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 16 4 4 4-4" />
    <path d="M7 20V4" />
    <path d="M17 10V4h-2" />
    <path d="M15 10h4" />
    <rect x="15" y="14" width="4" height="6" ry="2" />
    </svg>
    """
  end

  @doc "arrow-down-a-z.svg"
  def arrow_down_a_z(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 16 4 4 4-4" />
    <path d="M7 20V4" />
    <path d="M20 8h-5" />
    <path d="M15 10V6.5a2.5 2.5 0 0 1 5 0V10" />
    <path d="M15 14h5l-5 6h5" />
    </svg>
    """
  end

  @doc "arrow-down-circle.svg"
  def arrow_down_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M12 8v8" />
    <path d="m8 12 4 4 4-4" />
    </svg>
    """
  end

  @doc "arrow-down-from-line.svg"
  def arrow_down_from_line(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19 3H5" />
    <path d="M12 21V7" />
    <path d="m6 15 6 6 6-6" />
    </svg>
    """
  end

  @doc "arrow-down-left-from-circle.svg"
  def arrow_down_left_from_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 12a10 10 0 1 1 10 10" />
    <path d="m2 22 10-10" />
    <path d="M8 22H2v-6" />
    </svg>
    """
  end

  @doc "arrow-down-left-from-square.svg"
  def arrow_down_left_from_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13 21h6a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v6" />
    <path d="m3 21 9-9" />
    <path d="M9 21H3v-6" />
    </svg>
    """
  end

  @doc "arrow-down-left-square.svg"
  def arrow_down_left_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="m16 8-8 8" />
    <path d="M16 16H8V8" />
    </svg>
    """
  end

  @doc "arrow-down-left.svg"
  def arrow_down_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 7 7 17" />
    <path d="M17 17H7V7" />
    </svg>
    """
  end

  @doc "arrow-down-narrow-wide.svg"
  def arrow_down_narrow_wide(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 16 4 4 4-4" />
    <path d="M7 20V4" />
    <path d="M11 4h4" />
    <path d="M11 8h7" />
    <path d="M11 12h10" />
    </svg>
    """
  end

  @doc "arrow-down-right-from-circle.svg"
  def arrow_down_right_from_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22a10 10 0 1 1 10-10" />
    <path d="M22 22 12 12" />
    <path d="M22 16v6h-6" />
    </svg>
    """
  end

  @doc "arrow-down-right-from-square.svg"
  def arrow_down_right_from_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 11V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h6" />
    <path d="m21 21-9-9" />
    <path d="M21 15v6h-6" />
    </svg>
    """
  end

  @doc "arrow-down-right-square.svg"
  def arrow_down_right_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="m8 8 8 8" />
    <path d="M16 8v8H8" />
    </svg>
    """
  end

  @doc "arrow-down-right.svg"
  def arrow_down_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m7 7 10 10" />
    <path d="M17 7v10H7" />
    </svg>
    """
  end

  @doc "arrow-down-square.svg"
  def arrow_down_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M12 8v8" />
    <path d="m8 12 4 4 4-4" />
    </svg>
    """
  end

  @doc "arrow-down-to-dot.svg"
  def arrow_down_to_dot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 2v14" />
    <path d="m19 9-7 7-7-7" />
    <circle cx="12" cy="21" r="1" />
    </svg>
    """
  end

  @doc "arrow-down-to-line.svg"
  def arrow_down_to_line(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 17V3" />
    <path d="m6 11 6 6 6-6" />
    <path d="M19 21H5" />
    </svg>
    """
  end

  @doc "arrow-down-up.svg"
  def arrow_down_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 16 4 4 4-4" />
    <path d="M7 20V4" />
    <path d="m21 8-4-4-4 4" />
    <path d="M17 4v16" />
    </svg>
    """
  end

  @doc "arrow-down-wide-narrow.svg"
  def arrow_down_wide_narrow(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 16 4 4 4-4" />
    <path d="M7 20V4" />
    <path d="M11 4h10" />
    <path d="M11 8h7" />
    <path d="M11 12h4" />
    </svg>
    """
  end

  @doc "arrow-down-z-a.svg"
  def arrow_down_z_a(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 16 4 4 4-4" />
    <path d="M7 4v16" />
    <path d="M15 4h5l-5 6h5" />
    <path d="M15 20v-3.5a2.5 2.5 0 0 1 5 0V20" />
    <path d="M20 18h-5" />
    </svg>
    """
  end

  @doc "arrow-down.svg"
  def arrow_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 5v14" />
    <path d="m19 12-7 7-7-7" />
    </svg>
    """
  end

  @doc "arrow-left-circle.svg"
  def arrow_left_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M16 12H8" />
    <path d="m12 8-4 4 4 4" />
    </svg>
    """
  end

  @doc "arrow-left-from-line.svg"
  def arrow_left_from_line(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m9 6-6 6 6 6" />
    <path d="M3 12h14" />
    <path d="M21 19V5" />
    </svg>
    """
  end

  @doc "arrow-left-right.svg"
  def arrow_left_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 3 4 7l4 4" />
    <path d="M4 7h16" />
    <path d="m16 21 4-4-4-4" />
    <path d="M20 17H4" />
    </svg>
    """
  end

  @doc "arrow-left-square.svg"
  def arrow_left_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="m12 8-4 4 4 4" />
    <path d="M16 12H8" />
    </svg>
    """
  end

  @doc "arrow-left-to-line.svg"
  def arrow_left_to_line(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 19V5" />
    <path d="m13 6-6 6 6 6" />
    <path d="M7 12h14" />
    </svg>
    """
  end

  @doc "arrow-left.svg"
  def arrow_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m12 19-7-7 7-7" />
    <path d="M19 12H5" />
    </svg>
    """
  end

  @doc "arrow-right-circle.svg"
  def arrow_right_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M8 12h8" />
    <path d="m12 16 4-4-4-4" />
    </svg>
    """
  end

  @doc "arrow-right-from-line.svg"
  def arrow_right_from_line(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 5v14" />
    <path d="M21 12H7" />
    <path d="m15 18 6-6-6-6" />
    </svg>
    """
  end

  @doc "arrow-right-left.svg"
  def arrow_right_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m16 3 4 4-4 4" />
    <path d="M20 7H4" />
    <path d="m8 21-4-4 4-4" />
    <path d="M4 17h16" />
    </svg>
    """
  end

  @doc "arrow-right-square.svg"
  def arrow_right_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M8 12h8" />
    <path d="m12 16 4-4-4-4" />
    </svg>
    """
  end

  @doc "arrow-right-to-line.svg"
  def arrow_right_to_line(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 12H3" />
    <path d="m11 18 6-6-6-6" />
    <path d="M21 5v14" />
    </svg>
    """
  end

  @doc "arrow-right.svg"
  def arrow_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 12h14" />
    <path d="m12 5 7 7-7 7" />
    </svg>
    """
  end

  @doc "arrow-up-0-1.svg"
  def arrow_up_0_1(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 8 4-4 4 4" />
    <path d="M7 4v16" />
    <rect x="15" y="4" width="4" height="6" ry="2" />
    <path d="M17 20v-6h-2" />
    <path d="M15 20h4" />
    </svg>
    """
  end

  @doc "arrow-up-1-0.svg"
  def arrow_up_1_0(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 8 4-4 4 4" />
    <path d="M7 4v16" />
    <path d="M17 10V4h-2" />
    <path d="M15 10h4" />
    <rect x="15" y="14" width="4" height="6" ry="2" />
    </svg>
    """
  end

  @doc "arrow-up-a-z.svg"
  def arrow_up_a_z(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 8 4-4 4 4" />
    <path d="M7 4v16" />
    <path d="M20 8h-5" />
    <path d="M15 10V6.5a2.5 2.5 0 0 1 5 0V10" />
    <path d="M15 14h5l-5 6h5" />
    </svg>
    """
  end

  @doc "arrow-up-circle.svg"
  def arrow_up_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="m16 12-4-4-4 4" />
    <path d="M12 16V8" />
    </svg>
    """
  end

  @doc "arrow-up-down.svg"
  def arrow_up_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m21 16-4 4-4-4" />
    <path d="M17 20V4" />
    <path d="m3 8 4-4 4 4" />
    <path d="M7 4v16" />
    </svg>
    """
  end

  @doc "arrow-up-from-dot.svg"
  def arrow_up_from_dot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m5 9 7-7 7 7" />
    <path d="M12 16V2" />
    <circle cx="12" cy="21" r="1" />
    </svg>
    """
  end

  @doc "arrow-up-from-line.svg"
  def arrow_up_from_line(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m18 9-6-6-6 6" />
    <path d="M12 3v14" />
    <path d="M5 21h14" />
    </svg>
    """
  end

  @doc "arrow-up-left-from-circle.svg"
  def arrow_up_left_from_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 8V2h6" />
    <path d="m2 2 10 10" />
    <path d="M12 2A10 10 0 1 1 2 12" />
    </svg>
    """
  end

  @doc "arrow-up-left-from-square.svg"
  def arrow_up_left_from_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13 3h6a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-6" />
    <path d="m3 3 9 9" />
    <path d="M3 9V3h6" />
    </svg>
    """
  end

  @doc "arrow-up-left-square.svg"
  def arrow_up_left_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M8 16V8h8" />
    <path d="M16 16 8 8" />
    </svg>
    """
  end

  @doc "arrow-up-left.svg"
  def arrow_up_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 17V7h10" />
    <path d="M17 17 7 7" />
    </svg>
    """
  end

  @doc "arrow-up-narrow-wide.svg"
  def arrow_up_narrow_wide(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 8 4-4 4 4" />
    <path d="M7 4v16" />
    <path d="M11 12h4" />
    <path d="M11 16h7" />
    <path d="M11 20h10" />
    </svg>
    """
  end

  @doc "arrow-up-right-from-circle.svg"
  def arrow_up_right_from_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 12A10 10 0 1 1 12 2" />
    <path d="M22 2 12 12" />
    <path d="M16 2h6v6" />
    </svg>
    """
  end

  @doc "arrow-up-right-from-square.svg"
  def arrow_up_right_from_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h6" />
    <path d="m21 3-9 9" />
    <path d="M15 3h6v6" />
    </svg>
    """
  end

  @doc "arrow-up-right-square.svg"
  def arrow_up_right_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M8 8h8v8" />
    <path d="m8 16 8-8" />
    </svg>
    """
  end

  @doc "arrow-up-right.svg"
  def arrow_up_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 7h10v10" />
    <path d="M7 17 17 7" />
    </svg>
    """
  end

  @doc "arrow-up-square.svg"
  def arrow_up_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="m16 12-4-4-4 4" />
    <path d="M12 16V8" />
    </svg>
    """
  end

  @doc "arrow-up-to-line.svg"
  def arrow_up_to_line(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 3h14" />
    <path d="m18 13-6-6-6 6" />
    <path d="M12 7v14" />
    </svg>
    """
  end

  @doc "arrow-up-wide-narrow.svg"
  def arrow_up_wide_narrow(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 8 4-4 4 4" />
    <path d="M7 4v16" />
    <path d="M11 12h10" />
    <path d="M11 16h7" />
    <path d="M11 20h4" />
    </svg>
    """
  end

  @doc "arrow-up-z-a.svg"
  def arrow_up_z_a(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 8 4-4 4 4" />
    <path d="M7 4v16" />
    <path d="M15 4h5l-5 6h5" />
    <path d="M15 20v-3.5a2.5 2.5 0 0 1 5 0V20" />
    <path d="M20 18h-5" />
    </svg>
    """
  end

  @doc "arrow-up.svg"
  def arrow_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m5 12 7-7 7 7" />
    <path d="M12 19V5" />
    </svg>
    """
  end

  @doc "arrows-up-from-line.svg"
  def arrows_up_from_line(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m4 6 3-3 3 3" />
    <path d="M7 17V3" />
    <path d="m14 6 3-3 3 3" />
    <path d="M17 17V3" />
    <path d="M4 21h16" />
    </svg>
    """
  end

  @doc "asterisk-square.svg"
  def asterisk_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M12 8v8" />
    <path d="m8.5 14 7-4" />
    <path d="m8.5 10 7 4" />
    </svg>
    """
  end

  @doc "asterisk.svg"
  def asterisk(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 6v12" />
    <path d="M17.196 9 6.804 15" />
    <path d="m6.804 9 10.392 6" />
    </svg>
    """
  end

  @doc "at-sign.svg"
  def at_sign(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="4" />
    <path d="M16 8v5a3 3 0 0 0 6 0v-1a10 10 0 1 0-4 8" />
    </svg>
    """
  end

  @doc "atom.svg"
  def atom(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="1" />
    <path d="M20.2 20.2c2.04-2.03.02-7.36-4.5-11.9-4.54-4.52-9.87-6.54-11.9-4.5-2.04 2.03-.02 7.36 4.5 11.9 4.54 4.52 9.87 6.54 11.9 4.5Z" />
    <path d="M15.7 15.7c4.52-4.54 6.54-9.87 4.5-11.9-2.03-2.04-7.36-.02-11.9 4.5-4.52 4.54-6.54 9.87-4.5 11.9 2.03 2.04 7.36.02 11.9-4.5Z" />
    </svg>
    """
  end

  @doc "audio-lines.svg"
  def audio_lines(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 10v3" />
    <path d="M6 6v11" />
    <path d="M10 3v18" />
    <path d="M14 8v7" />
    <path d="M18 5v13" />
    <path d="M22 10v3" />
    </svg>
    """
  end

  @doc "audio-waveform.svg"
  def audio_waveform(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 13a2 2 0 0 0 2-2V7a2 2 0 0 1 4 0v13a2 2 0 0 0 4 0V4a2 2 0 0 1 4 0v13a2 2 0 0 0 4 0v-4a2 2 0 0 1 2-2" />
    </svg>
    """
  end

  @doc "award.svg"
  def award(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="8" r="6" />
    <path d="M15.477 12.89 17 22l-5-3-5 3 1.523-9.11" />
    </svg>
    """
  end

  @doc "axe.svg"
  def axe(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m14 12-8.5 8.5a2.12 2.12 0 1 1-3-3L11 9" />
    <path d="M15 13 9 7l4-4 6 6h3a8 8 0 0 1-7 7z" />
    </svg>
    """
  end

  @doc "axis-3d.svg"
  def axis_3d(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 4v16h16" />
    <path d="m4 20 7-7" />
    </svg>
    """
  end

  @doc "baby.svg"
  def baby(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 12h.01" />
    <path d="M15 12h.01" />
    <path d="M10 16c.5.3 1.2.5 2 .5s1.5-.2 2-.5" />
    <path d="M19 6.3a9 9 0 0 1 1.8 3.9 2 2 0 0 1 0 3.6 9 9 0 0 1-17.6 0 2 2 0 0 1 0-3.6A9 9 0 0 1 12 3c2 0 3.5 1.1 3.5 2.5s-.9 2.5-2 2.5c-.8 0-1.5-.4-1.5-1" />
    </svg>
    """
  end

  @doc "backpack.svg"
  def backpack(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 10a4 4 0 0 1 4-4h8a4 4 0 0 1 4 4v10a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2Z" />
    <path d="M9 6V4a2 2 0 0 1 2-2h2a2 2 0 0 1 2 2v2" />
    <path d="M8 21v-5a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v5" />
    <path d="M8 10h8" />
    <path d="M8 18h8" />
    </svg>
    """
  end

  @doc "badge-alert.svg"
  def badge_alert(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <line x1="12" x2="12" y1="8" y2="12" />
    <line x1="12" x2="12.01" y1="16" y2="16" />
    </svg>
    """
  end

  @doc "badge-cent.svg"
  def badge_cent(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <path d="M12 7v10" />
    <path d="M15.4 10a4 4 0 1 0 0 4" />
    </svg>
    """
  end

  @doc "badge-check.svg"
  def badge_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <path d="m9 12 2 2 4-4" />
    </svg>
    """
  end

  @doc "badge-dollar-sign.svg"
  def badge_dollar_sign(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <path d="M16 8h-6a2 2 0 1 0 0 4h4a2 2 0 1 1 0 4H8" />
    <path d="M12 18V6" />
    </svg>
    """
  end

  @doc "badge-euro.svg"
  def badge_euro(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <path d="M7 12h5" />
    <path d="M15 9.4a4 4 0 1 0 0 5.2" />
    </svg>
    """
  end

  @doc "badge-help.svg"
  def badge_help(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3" />
    <line x1="12" x2="12.01" y1="17" y2="17" />
    </svg>
    """
  end

  @doc "badge-indian-rupee.svg"
  def badge_indian_rupee(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <path d="M8 8h8" />
    <path d="M8 12h8" />
    <path d="m13 17-5-1h1a4 4 0 0 0 0-8" />
    </svg>
    """
  end

  @doc "badge-info.svg"
  def badge_info(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <line x1="12" x2="12" y1="16" y2="12" />
    <line x1="12" x2="12.01" y1="8" y2="8" />
    </svg>
    """
  end

  @doc "badge-japanese-yen.svg"
  def badge_japanese_yen(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <path d="m9 8 3 3v7" />
    <path d="m12 11 3-3" />
    <path d="M9 12h6" />
    <path d="M9 16h6" />
    </svg>
    """
  end

  @doc "badge-minus.svg"
  def badge_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <line x1="8" x2="16" y1="12" y2="12" />
    </svg>
    """
  end

  @doc "badge-percent.svg"
  def badge_percent(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <path d="m15 9-6 6" />
    <path d="M9 9h.01" />
    <path d="M15 15h.01" />
    </svg>
    """
  end

  @doc "badge-plus.svg"
  def badge_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <line x1="12" x2="12" y1="8" y2="16" />
    <line x1="8" x2="16" y1="12" y2="12" />
    </svg>
    """
  end

  @doc "badge-pound-sterling.svg"
  def badge_pound_sterling(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <path d="M8 12h4" />
    <path d="M10 16V9.5a2.5 2.5 0 0 1 5 0" />
    <path d="M8 16h7" />
    </svg>
    """
  end

  @doc "badge-russian-ruble.svg"
  def badge_russian_ruble(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <path d="M9 16h5" />
    <path d="M9 12h5a2 2 0 1 0 0-4h-3v9" />
    </svg>
    """
  end

  @doc "badge-swiss-franc.svg"
  def badge_swiss_franc(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <path d="M11 17V8h4" />
    <path d="M11 12h3" />
    <path d="M9 16h4" />
    </svg>
    """
  end

  @doc "badge-x.svg"
  def badge_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    <line x1="15" x2="9" y1="9" y2="15" />
    <line x1="9" x2="15" y1="9" y2="15" />
    </svg>
    """
  end

  @doc "badge.svg"
  def badge(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.85 8.62a4 4 0 0 1 4.78-4.77 4 4 0 0 1 6.74 0 4 4 0 0 1 4.78 4.78 4 4 0 0 1 0 6.74 4 4 0 0 1-4.77 4.78 4 4 0 0 1-6.75 0 4 4 0 0 1-4.78-4.77 4 4 0 0 1 0-6.76Z" />
    </svg>
    """
  end

  @doc "baggage-claim.svg"
  def baggage_claim(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 18H6a2 2 0 0 1-2-2V7a2 2 0 0 0-2-2" />
    <path d="M17 14V4a2 2 0 0 0-2-2h-1a2 2 0 0 0-2 2v10" />
    <rect width="13" height="8" x="8" y="6" rx="1" />
    <circle cx="18" cy="20" r="2" />
    <circle cx="9" cy="20" r="2" />
    </svg>
    """
  end

  @doc "ban.svg"
  def ban(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="m4.9 4.9 14.2 14.2" />
    </svg>
    """
  end

  @doc "banana.svg"
  def banana(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 13c3.5-2 8-2 10 2a5.5 5.5 0 0 1 8 5" />
    <path d="M5.15 17.89c5.52-1.52 8.65-6.89 7-12C11.55 4 11.5 2 13 2c3.22 0 5 5.5 5 8 0 6.5-4.2 12-10.49 12C5.11 22 2 22 2 20c0-1.5 1.14-1.55 3.15-2.11Z" />
    </svg>
    """
  end

  @doc "banknote.svg"
  def banknote(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="12" x="2" y="6" rx="2" />
    <circle cx="12" cy="12" r="2" />
    <path d="M6 12h.01M18 12h.01" />
    </svg>
    """
  end

  @doc "bar-chart-2.svg"
  def bar_chart_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="18" x2="18" y1="20" y2="10" />
    <line x1="12" x2="12" y1="20" y2="4" />
    <line x1="6" x2="6" y1="20" y2="14" />
    </svg>
    """
  end

  @doc "bar-chart-3.svg"
  def bar_chart_3(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 3v18h18" />
    <path d="M18 17V9" />
    <path d="M13 17V5" />
    <path d="M8 17v-3" />
    </svg>
    """
  end

  @doc "bar-chart-4.svg"
  def bar_chart_4(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 3v18h18" />
    <path d="M13 17V9" />
    <path d="M18 17V5" />
    <path d="M8 17v-3" />
    </svg>
    """
  end

  @doc "bar-chart-big.svg"
  def bar_chart_big(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 3v18h18" />
    <rect width="4" height="7" x="7" y="10" rx="1" />
    <rect width="4" height="12" x="15" y="5" rx="1" />
    </svg>
    """
  end

  @doc "bar-chart-horizontal-big.svg"
  def bar_chart_horizontal_big(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 3v18h18" />
    <rect width="12" height="4" x="7" y="5" rx="1" />
    <rect width="7" height="4" x="7" y="13" rx="1" />
    </svg>
    """
  end

  @doc "bar-chart-horizontal.svg"
  def bar_chart_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 3v18h18" />
    <path d="M7 16h8" />
    <path d="M7 11h12" />
    <path d="M7 6h3" />
    </svg>
    """
  end

  @doc "bar-chart.svg"
  def bar_chart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="12" x2="12" y1="20" y2="10" />
    <line x1="18" x2="18" y1="20" y2="4" />
    <line x1="6" x2="6" y1="20" y2="16" />
    </svg>
    """
  end

  @doc "barcode.svg"
  def barcode(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 5v14" />
    <path d="M8 5v14" />
    <path d="M12 5v14" />
    <path d="M17 5v14" />
    <path d="M21 5v14" />
    </svg>
    """
  end

  @doc "baseline.svg"
  def baseline(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 20h16" />
    <path d="m6 16 6-12 6 12" />
    <path d="M8 12h8" />
    </svg>
    """
  end

  @doc "bath.svg"
  def bath(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 6 6.5 3.5a1.5 1.5 0 0 0-1-.5C4.683 3 4 3.683 4 4.5V17a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-5" />
    <line x1="10" x2="8" y1="5" y2="7" />
    <line x1="2" x2="22" y1="12" y2="12" />
    <line x1="7" x2="7" y1="19" y2="21" />
    <line x1="17" x2="17" y1="19" y2="21" />
    </svg>
    """
  end

  @doc "battery-charging.svg"
  def battery_charging(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 7h1a2 2 0 0 1 2 2v6a2 2 0 0 1-2 2h-2" />
    <path d="M6 7H4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h1" />
    <path d="m11 7-3 5h4l-3 5" />
    <line x1="22" x2="22" y1="11" y2="13" />
    </svg>
    """
  end

  @doc "battery-full.svg"
  def battery_full(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="16" height="10" x="2" y="7" rx="2" ry="2" />
    <line x1="22" x2="22" y1="11" y2="13" />
    <line x1="6" x2="6" y1="11" y2="13" />
    <line x1="10" x2="10" y1="11" y2="13" />
    <line x1="14" x2="14" y1="11" y2="13" />
    </svg>
    """
  end

  @doc "battery-low.svg"
  def battery_low(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="16" height="10" x="2" y="7" rx="2" ry="2" />
    <line x1="22" x2="22" y1="11" y2="13" />
    <line x1="6" x2="6" y1="11" y2="13" />
    </svg>
    """
  end

  @doc "battery-medium.svg"
  def battery_medium(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="16" height="10" x="2" y="7" rx="2" ry="2" />
    <line x1="22" x2="22" y1="11" y2="13" />
    <line x1="6" x2="6" y1="11" y2="13" />
    <line x1="10" x2="10" y1="11" y2="13" />
    </svg>
    """
  end

  @doc "battery-warning.svg"
  def battery_warning(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14 7h2a2 2 0 0 1 2 2v6c0 1-1 2-2 2h-2" />
    <path d="M6 7H4a2 2 0 0 0-2 2v6c0 1 1 2 2 2h2" />
    <line x1="22" x2="22" y1="11" y2="13" />
    <line x1="10" x2="10" y1="7" y2="13" />
    <line x1="10" x2="10" y1="17" y2="17.01" />
    </svg>
    """
  end

  @doc "battery.svg"
  def battery(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="16" height="10" x="2" y="7" rx="2" ry="2" />
    <line x1="22" x2="22" y1="11" y2="13" />
    </svg>
    """
  end

  @doc "beaker.svg"
  def beaker(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4.5 3h15" />
    <path d="M6 3v16a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V3" />
    <path d="M6 14h12" />
    </svg>
    """
  end

  @doc "bean-off.svg"
  def bean_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 9c-.64.64-1.521.954-2.402 1.165A6 6 0 0 0 8 22a13.96 13.96 0 0 0 9.9-4.1" />
    <path d="M10.75 5.093A6 6 0 0 1 22 8c0 2.411-.61 4.68-1.683 6.66" />
    <path d="M5.341 10.62a4 4 0 0 0 6.487 1.208M10.62 5.341a4.015 4.015 0 0 1 2.039 2.04" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "bean.svg"
  def bean(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10.165 6.598C9.954 7.478 9.64 8.36 9 9c-.64.64-1.521.954-2.402 1.165A6 6 0 0 0 8 22c7.732 0 14-6.268 14-14a6 6 0 0 0-11.835-1.402Z" />
    <path d="M5.341 10.62a4 4 0 1 0 5.279-5.28" />
    </svg>
    """
  end

  @doc "bed-double.svg"
  def bed_double(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 20v-8a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v8" />
    <path d="M4 10V6a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v4" />
    <path d="M12 4v6" />
    <path d="M2 18h20" />
    </svg>
    """
  end

  @doc "bed-single.svg"
  def bed_single(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 20v-8a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v8" />
    <path d="M5 10V6a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v4" />
    <path d="M3 18h18" />
    </svg>
    """
  end

  @doc "bed.svg"
  def bed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 4v16" />
    <path d="M2 8h18a2 2 0 0 1 2 2v10" />
    <path d="M2 17h20" />
    <path d="M6 8v9" />
    </svg>
    """
  end

  @doc "beef.svg"
  def beef(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12.5" cy="8.5" r="2.5" />
    <path d="M12.5 2a6.5 6.5 0 0 0-6.22 4.6c-1.1 3.13-.78 3.9-3.18 6.08A3 3 0 0 0 5 18c4 0 8.4-1.8 11.4-4.3A6.5 6.5 0 0 0 12.5 2Z" />
    <path d="m18.5 6 2.19 4.5a6.48 6.48 0 0 1 .31 2 6.49 6.49 0 0 1-2.6 5.2C15.4 20.2 11 22 7 22a3 3 0 0 1-2.68-1.66L2.4 16.5" />
    </svg>
    """
  end

  @doc "beer.svg"
  def beer(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 11h1a3 3 0 0 1 0 6h-1" />
    <path d="M9 12v6" />
    <path d="M13 12v6" />
    <path d="M14 7.5c-1 0-1.44.5-3 .5s-2-.5-3-.5-1.72.5-2.5.5a2.5 2.5 0 0 1 0-5c.78 0 1.57.5 2.5.5S9.44 2 11 2s2 1.5 3 1.5 1.72-.5 2.5-.5a2.5 2.5 0 0 1 0 5c-.78 0-1.5-.5-2.5-.5Z" />
    <path d="M5 8v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V8" />
    </svg>
    """
  end

  @doc "bell-dot.svg"
  def bell_dot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19.4 14.9C20.2 16.4 21 17 21 17H3s3-2 3-9c0-3.3 2.7-6 6-6 .7 0 1.3.1 1.9.3" />
    <path d="M10.3 21a1.94 1.94 0 0 0 3.4 0" />
    <circle cx="18" cy="8" r="3" />
    </svg>
    """
  end

  @doc "bell-electric.svg"
  def bell_electric(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18.8 4A6.3 8.7 0 0 1 20 9" />
    <path d="M9 9h.01" />
    <circle cx="9" cy="9" r="7" />
    <rect width="10" height="6" x="4" y="16" rx="2" />
    <path d="M14 19c3 0 4.6-1.6 4.6-1.6" />
    <circle cx="20" cy="16" r="2" />
    </svg>
    """
  end

  @doc "bell-minus.svg"
  def bell_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18.4 12c.8 3.8 2.6 5 2.6 5H3s3-2 3-9c0-3.3 2.7-6 6-6 1.8 0 3.4.8 4.5 2" />
    <path d="M10.3 21a1.94 1.94 0 0 0 3.4 0" />
    <path d="M15 8h6" />
    </svg>
    """
  end

  @doc "bell-off.svg"
  def bell_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8.7 3A6 6 0 0 1 18 8a21.3 21.3 0 0 0 .6 5" />
    <path d="M17 17H3s3-2 3-9a4.67 4.67 0 0 1 .3-1.7" />
    <path d="M10.3 21a1.94 1.94 0 0 0 3.4 0" />
    <path d="m2 2 20 20" />
    </svg>
    """
  end

  @doc "bell-plus.svg"
  def bell_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19.3 14.8C20.1 16.4 21 17 21 17H3s3-2 3-9c0-3.3 2.7-6 6-6 1 0 1.9.2 2.8.7" />
    <path d="M10.3 21a1.94 1.94 0 0 0 3.4 0" />
    <path d="M15 8h6" />
    <path d="M18 5v6" />
    </svg>
    """
  end

  @doc "bell-ring.svg"
  def bell_ring(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 8a6 6 0 0 1 12 0c0 7 3 9 3 9H3s3-2 3-9" />
    <path d="M10.3 21a1.94 1.94 0 0 0 3.4 0" />
    <path d="M4 2C2.8 3.7 2 5.7 2 8" />
    <path d="M22 8c0-2.3-.8-4.3-2-6" />
    </svg>
    """
  end

  @doc "bell.svg"
  def bell(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 8a6 6 0 0 1 12 0c0 7 3 9 3 9H3s3-2 3-9" />
    <path d="M10.3 21a1.94 1.94 0 0 0 3.4 0" />
    </svg>
    """
  end

  @doc "between-horizontal-end.svg"
  def between_horizontal_end(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="13" height="7" x="3" y="3" rx="1" />
    <path d="m22 15-3-3 3-3" />
    <rect width="13" height="7" x="3" y="14" rx="1" />
    </svg>
    """
  end

  @doc "between-horizontal-start.svg"
  def between_horizontal_start(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="13" height="7" x="8" y="3" rx="1" />
    <path d="m2 9 3 3-3 3" />
    <rect width="13" height="7" x="8" y="14" rx="1" />
    </svg>
    """
  end

  @doc "between-vertical-end.svg"
  def between_vertical_end(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="7" height="13" x="3" y="3" rx="1" />
    <path d="m9 22 3-3 3 3" />
    <rect width="7" height="13" x="14" y="3" rx="1" />
    </svg>
    """
  end

  @doc "between-vertical-start.svg"
  def between_vertical_start(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="7" height="13" x="3" y="8" rx="1" />
    <path d="m15 2-3 3-3-3" />
    <rect width="7" height="13" x="14" y="8" rx="1" />
    </svg>
    """
  end

  @doc "bike.svg"
  def bike(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="18.5" cy="17.5" r="3.5" />
    <circle cx="5.5" cy="17.5" r="3.5" />
    <circle cx="15" cy="5" r="1" />
    <path d="M12 17.5V14l-3-3 4-3 2 3h2" />
    </svg>
    """
  end

  @doc "binary.svg"
  def binary(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect x="14" y="14" width="4" height="6" rx="2" />
    <rect x="6" y="4" width="4" height="6" rx="2" />
    <path d="M6 20h4" />
    <path d="M14 10h4" />
    <path d="M6 14h2v6" />
    <path d="M14 4h2v6" />
    </svg>
    """
  end

  @doc "biohazard.svg"
  def biohazard(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="11.9" r="2" />
    <path d="M6.7 3.4c-.9 2.5 0 5.2 2.2 6.7C6.5 9 3.7 9.6 2 11.6" />
    <path d="m8.9 10.1 1.4.8" />
    <path d="M17.3 3.4c.9 2.5 0 5.2-2.2 6.7 2.4-1.2 5.2-.6 6.9 1.5" />
    <path d="m15.1 10.1-1.4.8" />
    <path d="M16.7 20.8c-2.6-.4-4.6-2.6-4.7-5.3-.2 2.6-2.1 4.8-4.7 5.2" />
    <path d="M12 13.9v1.6" />
    <path d="M13.5 5.4c-1-.2-2-.2-3 0" />
    <path d="M17 16.4c.7-.7 1.2-1.6 1.5-2.5" />
    <path d="M5.5 13.9c.3.9.8 1.8 1.5 2.5" />
    </svg>
    """
  end

  @doc "bird.svg"
  def bird(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 7h.01" />
    <path d="M3.4 18H12a8 8 0 0 0 8-8V7a4 4 0 0 0-7.28-2.3L2 20" />
    <path d="m20 7 2 .5-2 .5" />
    <path d="M10 18v3" />
    <path d="M14 17.75V21" />
    <path d="M7 18a6 6 0 0 0 3.84-10.61" />
    </svg>
    """
  end

  @doc "bitcoin.svg"
  def bitcoin(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11.767 19.089c4.924.868 6.14-6.025 1.216-6.894m-1.216 6.894L5.86 18.047m5.908 1.042-.347 1.97m1.563-8.864c4.924.869 6.14-6.025 1.215-6.893m-1.215 6.893-3.94-.694m5.155-6.2L8.29 4.26m5.908 1.042.348-1.97M7.48 20.364l3.126-17.727" />
    </svg>
    """
  end

  @doc "blend.svg"
  def blend(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="9" cy="9" r="7" />
    <circle cx="15" cy="15" r="7" />
    </svg>
    """
  end

  @doc "blinds.svg"
  def blinds(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 3h18" />
    <path d="M20 7H8" />
    <path d="M20 11H8" />
    <path d="M10 19h10" />
    <path d="M8 15h12" />
    <path d="M4 3v14" />
    <circle cx="4" cy="19" r="2" />
    </svg>
    """
  end

  @doc "blocks.svg"
  def blocks(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="7" height="7" x="14" y="3" rx="1" />
    <path d="M10 21V8a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-5a1 1 0 0 0-1-1H3" />
    </svg>
    """
  end

  @doc "bluetooth-connected.svg"
  def bluetooth_connected(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m7 7 10 10-5 5V2l5 5L7 17" />
    <line x1="18" x2="21" y1="12" y2="12" />
    <line x1="3" x2="6" y1="12" y2="12" />
    </svg>
    """
  end

  @doc "bluetooth-off.svg"
  def bluetooth_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m17 17-5 5V12l-5 5" />
    <path d="m2 2 20 20" />
    <path d="M14.5 9.5 17 7l-5-5v4.5" />
    </svg>
    """
  end

  @doc "bluetooth-searching.svg"
  def bluetooth_searching(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m7 7 10 10-5 5V2l5 5L7 17" />
    <path d="M20.83 14.83a4 4 0 0 0 0-5.66" />
    <path d="M18 12h.01" />
    </svg>
    """
  end

  @doc "bluetooth.svg"
  def bluetooth(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m7 7 10 10-5 5V2l5 5L7 17" />
    </svg>
    """
  end

  @doc "bold.svg"
  def bold(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14 12a4 4 0 0 0 0-8H6v8" />
    <path d="M15 20a4 4 0 0 0 0-8H6v8Z" />
    </svg>
    """
  end

  @doc "bolt.svg"
  def bolt(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z" />
    <circle cx="12" cy="12" r="4" />
    </svg>
    """
  end

  @doc "bomb.svg"
  def bomb(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="11" cy="13" r="9" />
    <path d="M14.35 4.65 16.3 2.7a2.41 2.41 0 0 1 3.4 0l1.6 1.6a2.4 2.4 0 0 1 0 3.4l-1.95 1.95" />
    <path d="m22 2-1.5 1.5" />
    </svg>
    """
  end

  @doc "bone.svg"
  def bone(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 10c.7-.7 1.69 0 2.5 0a2.5 2.5 0 1 0 0-5 .5.5 0 0 1-.5-.5 2.5 2.5 0 1 0-5 0c0 .81.7 1.8 0 2.5l-7 7c-.7.7-1.69 0-2.5 0a2.5 2.5 0 0 0 0 5c.28 0 .5.22.5.5a2.5 2.5 0 1 0 5 0c0-.81-.7-1.8 0-2.5Z" />
    </svg>
    """
  end

  @doc "book-a.svg"
  def book_a(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <path d="m8 13 4-7 4 7" />
    <path d="M9.1 11h5.7" />
    </svg>
    """
  end

  @doc "book-audio.svg"
  def book_audio(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <path d="M8 8v3" />
    <path d="M12 6v7" />
    <path d="M16 8v3" />
    </svg>
    """
  end

  @doc "book-check.svg"
  def book_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <path d="m9 9.5 2 2 4-4" />
    </svg>
    """
  end

  @doc "book-copy.svg"
  def book_copy(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 16V4a2 2 0 0 1 2-2h11" />
    <path d="M5 14H4a2 2 0 1 0 0 4h1" />
    <path d="M22 18H11a2 2 0 1 0 0 4h11V6H11a2 2 0 0 0-2 2v12" />
    </svg>
    """
  end

  @doc "book-dashed.svg"
  def book_dashed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 22h-2" />
    <path d="M20 15v2h-2" />
    <path d="M4 19.5V15" />
    <path d="M20 8v3" />
    <path d="M18 2h2v2" />
    <path d="M4 11V9" />
    <path d="M12 2h2" />
    <path d="M12 22h2" />
    <path d="M12 17h2" />
    <path d="M8 22H6.5a2.5 2.5 0 0 1 0-5H8" />
    <path d="M4 5v-.5A2.5 2.5 0 0 1 6.5 2H8" />
    </svg>
    """
  end

  @doc "book-down.svg"
  def book_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <path d="M12 13V7" />
    <path d="m9 10 3 3 3-3" />
    </svg>
    """
  end

  @doc "book-headphones.svg"
  def book_headphones(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <circle cx="9" cy="12" r="1" />
    <path d="M8 12v-2a4 4 0 0 1 8 0v2" />
    <circle cx="15" cy="12" r="1" />
    </svg>
    """
  end

  @doc "book-heart.svg"
  def book_heart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <path d="M16 8.2C16 7 15 6 13.8 6c-.8 0-1.4.3-1.8.9-.4-.6-1-.9-1.8-.9C9 6 8 7 8 8.2c0 .6.3 1.2.7 1.6h0C10 11.1 12 13 12 13s2-1.9 3.3-3.1h0c.4-.4.7-1 .7-1.7z" />
    </svg>
    """
  end

  @doc "book-image.svg"
  def book_image(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <circle cx="10" cy="8" r="2" />
    <path d="m20 13.7-2.1-2.1c-.8-.8-2-.8-2.8 0L9.7 17" />
    </svg>
    """
  end

  @doc "book-key.svg"
  def book_key(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H14" />
    <path d="M20 8v14H6.5a2.5 2.5 0 0 1 0-5H20" />
    <circle cx="14" cy="8" r="2" />
    <path d="m20 2-4.5 4.5" />
    <path d="m19 3 1 1" />
    </svg>
    """
  end

  @doc "book-lock.svg"
  def book_lock(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H10" />
    <path d="M20 15v7H6.5a2.5 2.5 0 0 1 0-5H20" />
    <rect width="8" height="5" x="12" y="6" rx="1" />
    <path d="M18 6V4a2 2 0 1 0-4 0v2" />
    </svg>
    """
  end

  @doc "book-marked.svg"
  def book_marked(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <polyline points="10 2 10 10 13 7 16 10 16 2" />
    </svg>
    """
  end

  @doc "book-minus.svg"
  def book_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <path d="M9 10h6" />
    </svg>
    """
  end

  @doc "book-open-check.svg"
  def book_open_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 3H2v15h7c1.7 0 3 1.3 3 3V7c0-2.2-1.8-4-4-4Z" />
    <path d="m16 12 2 2 4-4" />
    <path d="M22 6V3h-6c-2.2 0-4 1.8-4 4v14c0-1.7 1.3-3 3-3h7v-2.3" />
    </svg>
    """
  end

  @doc "book-open-text.svg"
  def book_open_text(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z" />
    <path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z" />
    <path d="M6 8h2" />
    <path d="M6 12h2" />
    <path d="M16 8h2" />
    <path d="M16 12h2" />
    </svg>
    """
  end

  @doc "book-open.svg"
  def book_open(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z" />
    <path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z" />
    </svg>
    """
  end

  @doc "book-plus.svg"
  def book_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <path d="M9 10h6" />
    <path d="M12 7v6" />
    </svg>
    """
  end

  @doc "book-text.svg"
  def book_text(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <path d="M8 7h6" />
    <path d="M8 11h8" />
    </svg>
    """
  end

  @doc "book-type.svg"
  def book_type(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <path d="M16 8V6H8v2" />
    <path d="M12 6v7" />
    <path d="M10 13h4" />
    </svg>
    """
  end

  @doc "book-up-2.svg"
  def book_up_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2" />
    <path d="M18 2h2v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <path d="M12 13V7" />
    <path d="m9 10 3-3 3 3" />
    <path d="m9 5 3-3 3 3" />
    </svg>
    """
  end

  @doc "book-up.svg"
  def book_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <path d="M12 13V7" />
    <path d="m9 10 3-3 3 3" />
    </svg>
    """
  end

  @doc "book-user.svg"
  def book_user(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <circle cx="12" cy="8" r="2" />
    <path d="M15 13a3 3 0 1 0-6 0" />
    </svg>
    """
  end

  @doc "book-x.svg"
  def book_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    <path d="m14.5 7-5 5" />
    <path d="m9.5 7 5 5" />
    </svg>
    """
  end

  @doc "book.svg"
  def book(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 19.5v-15A2.5 2.5 0 0 1 6.5 2H20v20H6.5a2.5 2.5 0 0 1 0-5H20" />
    </svg>
    """
  end

  @doc "bookmark-check.svg"
  def bookmark_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m19 21-7-4-7 4V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2Z" />
    <path d="m9 10 2 2 4-4" />
    </svg>
    """
  end

  @doc "bookmark-minus.svg"
  def bookmark_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m19 21-7-4-7 4V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v16z" />
    <line x1="15" x2="9" y1="10" y2="10" />
    </svg>
    """
  end

  @doc "bookmark-plus.svg"
  def bookmark_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m19 21-7-4-7 4V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v16z" />
    <line x1="12" x2="12" y1="7" y2="13" />
    <line x1="15" x2="9" y1="10" y2="10" />
    </svg>
    """
  end

  @doc "bookmark-x.svg"
  def bookmark_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m19 21-7-4-7 4V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2Z" />
    <path d="m14.5 7.5-5 5" />
    <path d="m9.5 7.5 5 5" />
    </svg>
    """
  end

  @doc "bookmark.svg"
  def bookmark(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m19 21-7-4-7 4V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v16z" />
    </svg>
    """
  end

  @doc "boom-box.svg"
  def boom_box(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 9V5a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v4" />
    <path d="M8 8v1" />
    <path d="M12 8v1" />
    <path d="M16 8v1" />
    <rect width="20" height="12" x="2" y="9" rx="2" />
    <circle cx="8" cy="15" r="2" />
    <circle cx="16" cy="15" r="2" />
    </svg>
    """
  end

  @doc "bot.svg"
  def bot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 8V4H8" />
    <rect width="16" height="12" x="4" y="8" rx="2" />
    <path d="M2 14h2" />
    <path d="M20 14h2" />
    <path d="M15 13v2" />
    <path d="M9 13v2" />
    </svg>
    """
  end

  @doc "box-select.svg"
  def box_select(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 3a2 2 0 0 0-2 2" />
    <path d="M19 3a2 2 0 0 1 2 2" />
    <path d="M21 19a2 2 0 0 1-2 2" />
    <path d="M5 21a2 2 0 0 1-2-2" />
    <path d="M9 3h1" />
    <path d="M9 21h1" />
    <path d="M14 3h1" />
    <path d="M14 21h1" />
    <path d="M3 9v1" />
    <path d="M21 9v1" />
    <path d="M3 14v1" />
    <path d="M21 14v1" />
    </svg>
    """
  end

  @doc "box.svg"
  def box(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16Z" />
    <path d="m3.3 7 8.7 5 8.7-5" />
    <path d="M12 22V12" />
    </svg>
    """
  end

  @doc "boxes.svg"
  def boxes(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2.97 12.92A2 2 0 0 0 2 14.63v3.24a2 2 0 0 0 .97 1.71l3 1.8a2 2 0 0 0 2.06 0L12 19v-5.5l-5-3-4.03 2.42Z" />
    <path d="m7 16.5-4.74-2.85" />
    <path d="m7 16.5 5-3" />
    <path d="M7 16.5v5.17" />
    <path d="M12 13.5V19l3.97 2.38a2 2 0 0 0 2.06 0l3-1.8a2 2 0 0 0 .97-1.71v-3.24a2 2 0 0 0-.97-1.71L17 10.5l-5 3Z" />
    <path d="m17 16.5-5-3" />
    <path d="m17 16.5 4.74-2.85" />
    <path d="M17 16.5v5.17" />
    <path d="M7.97 4.42A2 2 0 0 0 7 6.13v4.37l5 3 5-3V6.13a2 2 0 0 0-.97-1.71l-3-1.8a2 2 0 0 0-2.06 0l-3 1.8Z" />
    <path d="M12 8 7.26 5.15" />
    <path d="m12 8 4.74-2.85" />
    <path d="M12 13.5V8" />
    </svg>
    """
  end

  @doc "braces.svg"
  def braces(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 3H7a2 2 0 0 0-2 2v5a2 2 0 0 1-2 2 2 2 0 0 1 2 2v5c0 1.1.9 2 2 2h1" />
    <path d="M16 21h1a2 2 0 0 0 2-2v-5c0-1.1.9-2 2-2a2 2 0 0 1-2-2V5a2 2 0 0 0-2-2h-1" />
    </svg>
    """
  end

  @doc "brackets.svg"
  def brackets(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 3h3v18h-3" />
    <path d="M8 21H5V3h3" />
    </svg>
    """
  end

  @doc "brain-circuit.svg"
  def brain_circuit(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 4.5a2.5 2.5 0 0 0-4.96-.46 2.5 2.5 0 0 0-1.98 3 2.5 2.5 0 0 0-1.32 4.24 3 3 0 0 0 .34 5.58 2.5 2.5 0 0 0 2.96 3.08 2.5 2.5 0 0 0 4.91.05L12 20V4.5Z" />
    <path d="M16 8V5c0-1.1.9-2 2-2" />
    <path d="M12 13h4" />
    <path d="M12 18h6a2 2 0 0 1 2 2v1" />
    <path d="M12 8h8" />
    <path d="M20.5 8a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0Z" />
    <path d="M16.5 13a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0Z" />
    <path d="M20.5 21a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0Z" />
    <path d="M18.5 3a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0Z" />
    </svg>
    """
  end

  @doc "brain-cog.svg"
  def brain_cog(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="3" />
    <path d="M12 4.5a2.5 2.5 0 0 0-4.96-.46 2.5 2.5 0 0 0-1.98 3 2.5 2.5 0 0 0-1.32 4.24 3 3 0 0 0 .34 5.58 2.5 2.5 0 0 0 2.96 3.08A2.5 2.5 0 0 0 12 19.5a2.5 2.5 0 0 0 4.96.44 2.5 2.5 0 0 0 2.96-3.08 3 3 0 0 0 .34-5.58 2.5 2.5 0 0 0-1.32-4.24 2.5 2.5 0 0 0-1.98-3A2.5 2.5 0 0 0 12 4.5" />
    <path d="m15.7 10.4-.9.4" />
    <path d="m9.2 13.2-.9.4" />
    <path d="m13.6 15.7-.4-.9" />
    <path d="m10.8 9.2-.4-.9" />
    <path d="m15.7 13.5-.9-.4" />
    <path d="m9.2 10.9-.9-.4" />
    <path d="m10.5 15.7.4-.9" />
    <path d="m13.1 9.2.4-.9" />
    </svg>
    """
  end

  @doc "brain.svg"
  def brain(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9.5 2A2.5 2.5 0 0 1 12 4.5v15a2.5 2.5 0 0 1-4.96.44 2.5 2.5 0 0 1-2.96-3.08 3 3 0 0 1-.34-5.58 2.5 2.5 0 0 1 1.32-4.24 2.5 2.5 0 0 1 1.98-3A2.5 2.5 0 0 1 9.5 2Z" />
    <path d="M14.5 2A2.5 2.5 0 0 0 12 4.5v15a2.5 2.5 0 0 0 4.96.44 2.5 2.5 0 0 0 2.96-3.08 3 3 0 0 0 .34-5.58 2.5 2.5 0 0 0-1.32-4.24 2.5 2.5 0 0 0-1.98-3A2.5 2.5 0 0 0 14.5 2Z" />
    </svg>
    """
  end

  @doc "brick-wall.svg"
  def brick_wall(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M12 9v6" />
    <path d="M16 15v6" />
    <path d="M16 3v6" />
    <path d="M3 15h18" />
    <path d="M3 9h18" />
    <path d="M8 15v6" />
    <path d="M8 3v6" />
    </svg>
    """
  end

  @doc "briefcase.svg"
  def briefcase(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="14" x="2" y="7" rx="2" ry="2" />
    <path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16" />
    </svg>
    """
  end

  @doc "bring-to-front.svg"
  def bring_to_front(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect x="8" y="8" width="8" height="8" rx="2" />
    <path d="M4 10a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2" />
    <path d="M14 20a2 2 0 0 0 2 2h4a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2" />
    </svg>
    """
  end

  @doc "brush.svg"
  def brush(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m9.06 11.9 8.07-8.06a2.85 2.85 0 1 1 4.03 4.03l-8.06 8.08" />
    <path d="M7.07 14.94c-1.66 0-3 1.35-3 3.02 0 1.33-2.5 1.52-2 2.02 1.08 1.1 2.49 2.02 4 2.02 2.2 0 4-1.8 4-4.04a3.01 3.01 0 0 0-3-3.02z" />
    </svg>
    """
  end

  @doc "bug-off.svg"
  def bug_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 7.13V6a3 3 0 0 0-5.14-2.1L8 2" />
    <path d="M14.12 3.88 16 2" />
    <path d="M22 13h-4v-2a4 4 0 0 0-4-4h-1.3" />
    <path d="M20.97 5c0 2.1-1.6 3.8-3.5 4" />
    <path d="m2 2 20 20" />
    <path d="M7.7 7.7A4 4 0 0 0 6 11v3a6 6 0 0 0 11.13 3.13" />
    <path d="M12 20v-8" />
    <path d="M6 13H2" />
    <path d="M3 21c0-2.1 1.7-3.9 3.8-4" />
    </svg>
    """
  end

  @doc "bug-play.svg"
  def bug_play(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m8 2 1.88 1.88" />
    <path d="M14.12 3.88 16 2" />
    <path d="M9 7.13v-1a3.003 3.003 0 1 1 6 0v1" />
    <path d="M18 11a4 4 0 0 0-4-4h-4a4 4 0 0 0-4 4v3a6.1 6.1 0 0 0 2 4.5" />
    <path d="M6.53 9C4.6 8.8 3 7.1 3 5" />
    <path d="M6 13H2" />
    <path d="M3 21c0-2.1 1.7-3.9 3.8-4" />
    <path d="M20.97 5c0 2.1-1.6 3.8-3.5 4" />
    <path d="m12 12 8 5-8 5Z" />
    </svg>
    """
  end

  @doc "bug.svg"
  def bug(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m8 2 1.88 1.88" />
    <path d="M14.12 3.88 16 2" />
    <path d="M9 7.13v-1a3.003 3.003 0 1 1 6 0v1" />
    <path d="M12 20c-3.3 0-6-2.7-6-6v-3a4 4 0 0 1 4-4h4a4 4 0 0 1 4 4v3c0 3.3-2.7 6-6 6" />
    <path d="M12 20v-9" />
    <path d="M6.53 9C4.6 8.8 3 7.1 3 5" />
    <path d="M6 13H2" />
    <path d="M3 21c0-2.1 1.7-3.9 3.8-4" />
    <path d="M20.97 5c0 2.1-1.6 3.8-3.5 4" />
    <path d="M22 13h-4" />
    <path d="M17.2 17c2.1.1 3.8 1.9 3.8 4" />
    </svg>
    """
  end

  @doc "building-2.svg"
  def building_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 22V4a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v18Z" />
    <path d="M6 12H4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h2" />
    <path d="M18 9h2a2 2 0 0 1 2 2v9a2 2 0 0 1-2 2h-2" />
    <path d="M10 6h4" />
    <path d="M10 10h4" />
    <path d="M10 14h4" />
    <path d="M10 18h4" />
    </svg>
    """
  end

  @doc "building.svg"
  def building(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="16" height="20" x="4" y="2" rx="2" ry="2" />
    <path d="M9 22v-4h6v4" />
    <path d="M8 6h.01" />
    <path d="M16 6h.01" />
    <path d="M12 6h.01" />
    <path d="M12 10h.01" />
    <path d="M12 14h.01" />
    <path d="M16 10h.01" />
    <path d="M16 14h.01" />
    <path d="M8 10h.01" />
    <path d="M8 14h.01" />
    </svg>
    """
  end

  @doc "bus-front.svg"
  def bus_front(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 6 2 7" />
    <path d="M10 6h4" />
    <path d="m22 7-2-1" />
    <rect width="16" height="16" x="4" y="3" rx="2" />
    <path d="M4 11h16" />
    <path d="M8 15h.01" />
    <path d="M16 15h.01" />
    <path d="M6 19v2" />
    <path d="M18 21v-2" />
    </svg>
    """
  end

  @doc "bus.svg"
  def bus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 6v6" />
    <path d="M15 6v6" />
    <path d="M2 12h19.6" />
    <path d="M18 18h3s.5-1.7.8-2.8c.1-.4.2-.8.2-1.2 0-.4-.1-.8-.2-1.2l-1.4-5C20.1 6.8 19.1 6 18 6H4a2 2 0 0 0-2 2v10h3" />
    <circle cx="7" cy="18" r="2" />
    <path d="M9 18h5" />
    <circle cx="16" cy="18" r="2" />
    </svg>
    """
  end

  @doc "cable-car.svg"
  def cable_car(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 3h.01" />
    <path d="M14 2h.01" />
    <path d="m2 9 20-5" />
    <path d="M12 12V6.5" />
    <rect width="16" height="10" x="4" y="12" rx="3" />
    <path d="M9 12v5" />
    <path d="M15 12v5" />
    <path d="M4 17h16" />
    </svg>
    """
  end

  @doc "cable.svg"
  def cable(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 9a2 2 0 0 1-2-2V5h6v2a2 2 0 0 1-2 2Z" />
    <path d="M3 5V3" />
    <path d="M7 5V3" />
    <path d="M19 15V6.5a3.5 3.5 0 0 0-7 0v11a3.5 3.5 0 0 1-7 0V9" />
    <path d="M17 21v-2" />
    <path d="M21 21v-2" />
    <path d="M22 19h-6v-2a2 2 0 0 1 2-2h2a2 2 0 0 1 2 2Z" />
    </svg>
    """
  end

  @doc "cake-slice.svg"
  def cake_slice(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="9" cy="7" r="2" />
    <path d="M7.2 7.9 3 11v9c0 .6.4 1 1 1h16c.6 0 1-.4 1-1v-9c0-2-3-6-7-8l-3.6 2.6" />
    <path d="M16 13H3" />
    <path d="M16 17H3" />
    </svg>
    """
  end

  @doc "cake.svg"
  def cake(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 21v-8a2 2 0 0 0-2-2H6a2 2 0 0 0-2 2v8" />
    <path d="M4 16s.5-1 2-1 2.5 2 4 2 2.5-2 4-2 2.5 2 4 2 2-1 2-1" />
    <path d="M2 21h20" />
    <path d="M7 8v3" />
    <path d="M12 8v3" />
    <path d="M17 8v3" />
    <path d="M7 4h0.01" />
    <path d="M12 4h0.01" />
    <path d="M17 4h0.01" />
    </svg>
    """
  end

  @doc "calculator.svg"
  def calculator(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="16" height="20" x="4" y="2" rx="2" />
    <line x1="8" x2="16" y1="6" y2="6" />
    <line x1="16" x2="16" y1="14" y2="18" />
    <path d="M16 10h.01" />
    <path d="M12 10h.01" />
    <path d="M8 10h.01" />
    <path d="M12 14h.01" />
    <path d="M8 14h.01" />
    <path d="M12 18h.01" />
    <path d="M8 18h.01" />
    </svg>
    """
  end

  @doc "calendar-check-2.svg"
  def calendar_check_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2v4" />
    <path d="M16 2v4" />
    <path d="M21 14V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h8" />
    <path d="M3 10h18" />
    <path d="m16 20 2 2 4-4" />
    </svg>
    """
  end

  @doc "calendar-check.svg"
  def calendar_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2v4" />
    <path d="M16 2v4" />
    <rect width="18" height="18" x="3" y="4" rx="2" />
    <path d="M3 10h18" />
    <path d="m9 16 2 2 4-4" />
    </svg>
    """
  end

  @doc "calendar-clock.svg"
  def calendar_clock(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 7.5V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h3.5" />
    <path d="M16 2v4" />
    <path d="M8 2v4" />
    <path d="M3 10h5" />
    <path d="M17.5 17.5 16 16.3V14" />
    <circle cx="16" cy="16" r="6" />
    </svg>
    """
  end

  @doc "calendar-days.svg"
  def calendar_days(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2v4" />
    <path d="M16 2v4" />
    <rect width="18" height="18" x="3" y="4" rx="2" />
    <path d="M3 10h18" />
    <path d="M8 14h.01" />
    <path d="M12 14h.01" />
    <path d="M16 14h.01" />
    <path d="M8 18h.01" />
    <path d="M12 18h.01" />
    <path d="M16 18h.01" />
    </svg>
    """
  end

  @doc "calendar-fold.svg"
  def calendar_fold(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2v4" />
    <path d="M16 2v4" />
    <path d="M21 17V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h11Z" />
    <path d="M3 10h18" />
    <path d="M15 22v-4a2 2 0 0 1 2-2h4" />
    </svg>
    """
  end

  @doc "calendar-heart.svg"
  def calendar_heart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 10h18V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h7" />
    <path d="M8 2v4" />
    <path d="M16 2v4" />
    <path d="M21.29 14.7a2.43 2.43 0 0 0-2.65-.52c-.3.12-.57.3-.8.53l-.34.34-.35-.34a2.43 2.43 0 0 0-2.65-.53c-.3.12-.56.3-.79.53-.95.94-1 2.53.2 3.74L17.5 22l3.6-3.55c1.2-1.21 1.14-2.8.19-3.74Z" />
    </svg>
    """
  end

  @doc "calendar-minus-2.svg"
  def calendar_minus_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2v4" />
    <path d="M16 2v4" />
    <rect width="18" height="18" x="3" y="4" rx="2" />
    <path d="M3 10h18" />
    <path d="M10 16h4" />
    </svg>
    """
  end

  @doc "calendar-minus.svg"
  def calendar_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2v4" />
    <path d="M16 2v4" />
    <path d="M21 13V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h8" />
    <path d="M3 10h18" />
    <path d="M16 19h6" />
    </svg>
    """
  end

  @doc "calendar-off.svg"
  def calendar_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4.2 4.2A2 2 0 0 0 3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 1.82-1.18" />
    <path d="M21 15.5V6a2 2 0 0 0-2-2H9.5" />
    <path d="M16 2v4" />
    <path d="M3 10h7" />
    <path d="M21 10h-5.5" />
    <path d="m2 2 20 20" />
    </svg>
    """
  end

  @doc "calendar-plus-2.svg"
  def calendar_plus_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2v4" />
    <path d="M16 2v4" />
    <rect width="18" height="18" x="3" y="4" rx="2" />
    <path d="M3 10h18" />
    <path d="M10 16h4" />
    <path d="M12 14v4" />
    </svg>
    """
  end

  @doc "calendar-plus.svg"
  def calendar_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2v4" />
    <path d="M16 2v4" />
    <path d="M21 13V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h8" />
    <path d="M3 10h18" />
    <path d="M16 19h6" />
    <path d="M19 16v6" />
    </svg>
    """
  end

  @doc "calendar-range.svg"
  def calendar_range(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="4" rx="2" />
    <path d="M16 2v4" />
    <path d="M3 10h18" />
    <path d="M8 2v4" />
    <path d="M17 14h-6" />
    <path d="M13 18H7" />
    <path d="M7 14h.01" />
    <path d="M17 18h.01" />
    </svg>
    """
  end

  @doc "calendar-search.svg"
  def calendar_search(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 12V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h7.5" />
    <path d="M16 2v4" />
    <path d="M8 2v4" />
    <path d="M3 10h18" />
    <circle cx="18" cy="18" r="3" />
    <path d="m22 22-1.5-1.5" />
    </svg>
    """
  end

  @doc "calendar-x-2.svg"
  def calendar_x_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2v4" />
    <path d="M16 2v4" />
    <path d="M21 13V6a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h8" />
    <path d="M3 10h18" />
    <path d="m17 22 5-5" />
    <path d="m17 17 5 5" />
    </svg>
    """
  end

  @doc "calendar-x.svg"
  def calendar_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2v4" />
    <path d="M16 2v4" />
    <rect width="18" height="18" x="3" y="4" rx="2" />
    <path d="M3 10h18" />
    <path d="m14 14-4 4" />
    <path d="m10 14 4 4" />
    </svg>
    """
  end

  @doc "calendar.svg"
  def calendar(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2v4" />
    <path d="M16 2v4" />
    <rect width="18" height="18" x="3" y="4" rx="2" />
    <path d="M3 10h18" />
    </svg>
    """
  end

  @doc "camera-off.svg"
  def camera_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="2" x2="22" y1="2" y2="22" />
    <path d="M7 7H4a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h16" />
    <path d="M9.5 4h5L17 7h3a2 2 0 0 1 2 2v7.5" />
    <path d="M14.121 15.121A3 3 0 1 1 9.88 10.88" />
    </svg>
    """
  end

  @doc "camera.svg"
  def camera(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14.5 4h-5L7 7H4a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2h-3l-2.5-3z" />
    <circle cx="12" cy="13" r="3" />
    </svg>
    """
  end

  @doc "candlestick-chart.svg"
  def candlestick_chart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 5v4" />
    <rect width="4" height="6" x="7" y="9" rx="1" />
    <path d="M9 15v2" />
    <path d="M17 3v2" />
    <rect width="4" height="8" x="15" y="5" rx="1" />
    <path d="M17 13v3" />
    <path d="M3 3v18h18" />
    </svg>
    """
  end

  @doc "candy-cane.svg"
  def candy_cane(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5.7 21a2 2 0 0 1-3.5-2l8.6-14a6 6 0 0 1 10.4 6 2 2 0 1 1-3.464-2 2 2 0 1 0-3.464-2Z" />
    <path d="M17.75 7 15 2.1" />
    <path d="M10.9 4.8 13 9" />
    <path d="m7.9 9.7 2 4.4" />
    <path d="M4.9 14.7 7 18.9" />
    </svg>
    """
  end

  @doc "candy-off.svg"
  def candy_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m8.5 8.5-1 1a4.95 4.95 0 0 0 7 7l1-1" />
    <path d="M11.843 6.187A4.947 4.947 0 0 1 16.5 7.5a4.947 4.947 0 0 1 1.313 4.657" />
    <path d="M14 16.5V14" />
    <path d="M14 6.5v1.843" />
    <path d="M10 10v7.5" />
    <path d="m16 7 1-5 1.367.683A3 3 0 0 0 19.708 3H21v1.292a3 3 0 0 0 .317 1.341L22 7l-5 1" />
    <path d="m8 17-1 5-1.367-.683A3 3 0 0 0 4.292 21H3v-1.292a3 3 0 0 0-.317-1.341L2 17l5-1" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "candy.svg"
  def candy(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m9.5 7.5-2 2a4.95 4.95 0 1 0 7 7l2-2a4.95 4.95 0 1 0-7-7Z" />
    <path d="M14 6.5v10" />
    <path d="M10 7.5v10" />
    <path d="m16 7 1-5 1.37.68A3 3 0 0 0 19.7 3H21v1.3c0 .46.1.92.32 1.33L22 7l-5 1" />
    <path d="m8 17-1 5-1.37-.68A3 3 0 0 0 4.3 21H3v-1.3a3 3 0 0 0-.32-1.33L2 17l5-1" />
    </svg>
    """
  end

  @doc "captions-off.svg"
  def captions_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10.5 5H19a2 2 0 0 1 2 2v8.5" />
    <path d="M17 11h-.5" />
    <path d="M19 19H5a2 2 0 0 1-2-2V7a2 2 0 0 1 2-2" />
    <path d="m2 2 20 20" />
    <path d="M7 11h4" />
    <path d="M7 15h2.5" />
    </svg>
    """
  end

  @doc "captions.svg"
  def captions(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="14" x="3" y="5" rx="2" ry="2" />
    <path d="M7 15h4M15 15h2M7 11h2M13 11h4" />
    </svg>
    """
  end

  @doc "car-front.svg"
  def car_front(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m21 8-2 2-1.5-3.7A2 2 0 0 0 15.646 5H8.4a2 2 0 0 0-1.903 1.257L5 10 3 8" />
    <path d="M7 14h.01" />
    <path d="M17 14h.01" />
    <rect width="18" height="8" x="3" y="10" rx="2" />
    <path d="M5 18v2" />
    <path d="M19 18v2" />
    </svg>
    """
  end

  @doc "car-taxi-front.svg"
  def car_taxi_front(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 2h4" />
    <path d="m21 8-2 2-1.5-3.7A2 2 0 0 0 15.646 5H8.4a2 2 0 0 0-1.903 1.257L5 10 3 8" />
    <path d="M7 14h.01" />
    <path d="M17 14h.01" />
    <rect width="18" height="8" x="3" y="10" rx="2" />
    <path d="M5 18v2" />
    <path d="M19 18v2" />
    </svg>
    """
  end

  @doc "car.svg"
  def car(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19 17h2c.6 0 1-.4 1-1v-3c0-.9-.7-1.7-1.5-1.9C18.7 10.6 16 10 16 10s-1.3-1.4-2.2-2.3c-.5-.4-1.1-.7-1.8-.7H5c-.6 0-1.1.4-1.4.9l-1.4 2.9A3.7 3.7 0 0 0 2 12v4c0 .6.4 1 1 1h2" />
    <circle cx="7" cy="17" r="2" />
    <path d="M9 17h6" />
    <circle cx="17" cy="17" r="2" />
    </svg>
    """
  end

  @doc "caravan.svg"
  def caravan(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="4" height="4" x="2" y="9" />
    <rect width="4" height="10" x="10" y="9" />
    <path d="M18 19V9a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v8a2 2 0 0 0 2 2h2" />
    <circle cx="8" cy="19" r="2" />
    <path d="M10 19h12v-2" />
    </svg>
    """
  end

  @doc "carrot.svg"
  def carrot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2.27 21.7s9.87-3.5 12.73-6.36a4.5 4.5 0 0 0-6.36-6.37C5.77 11.84 2.27 21.7 2.27 21.7zM8.64 14l-2.05-2.04M15.34 15l-2.46-2.46" />
    <path d="M22 9s-1.33-2-3.5-2C16.86 7 15 9 15 9s1.33 2 3.5 2S22 9 22 9z" />
    <path d="M15 2s-2 1.33-2 3.5S15 9 15 9s2-1.84 2-3.5C17 3.33 15 2 15 2z" />
    </svg>
    """
  end

  @doc "case-lower.svg"
  def case_lower(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="7" cy="12" r="3" />
    <path d="M10 9v6" />
    <circle cx="17" cy="12" r="3" />
    <path d="M14 7v8" />
    </svg>
    """
  end

  @doc "case-sensitive.svg"
  def case_sensitive(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 15 4-8 4 8" />
    <path d="M4 13h6" />
    <circle cx="18" cy="12" r="3" />
    <path d="M21 9v6" />
    </svg>
    """
  end

  @doc "case-upper.svg"
  def case_upper(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 15 4-8 4 8" />
    <path d="M4 13h6" />
    <path d="M15 11h4.5a2 2 0 0 1 0 4H15V7h4a2 2 0 0 1 0 4" />
    </svg>
    """
  end

  @doc "cassette-tape.svg"
  def cassette_tape(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="16" x="2" y="4" rx="2" />
    <circle cx="8" cy="10" r="2" />
    <path d="M8 12h8" />
    <circle cx="16" cy="10" r="2" />
    <path d="m6 20 .7-2.9A1.4 1.4 0 0 1 8.1 16h7.8a1.4 1.4 0 0 1 1.4 1l.7 3" />
    </svg>
    """
  end

  @doc "cast.svg"
  def cast(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 8V6a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2h-6" />
    <path d="M2 12a9 9 0 0 1 8 8" />
    <path d="M2 16a5 5 0 0 1 4 4" />
    <line x1="2" x2="2.01" y1="20" y2="20" />
    </svg>
    """
  end

  @doc "castle.svg"
  def castle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 20v-9H2v9a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2Z" />
    <path d="M18 11V4H6v7" />
    <path d="M15 22v-4a3 3 0 0 0-3-3v0a3 3 0 0 0-3 3v4" />
    <path d="M22 11V9" />
    <path d="M2 11V9" />
    <path d="M6 4V2" />
    <path d="M18 4V2" />
    <path d="M10 4V2" />
    <path d="M14 4V2" />
    </svg>
    """
  end

  @doc "cat.svg"
  def cat(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 5c.67 0 1.35.09 2 .26 1.78-2 5.03-2.84 6.42-2.26 1.4.58-.42 7-.42 7 .57 1.07 1 2.24 1 3.44C21 17.9 16.97 21 12 21s-9-3-9-7.56c0-1.25.5-2.4 1-3.44 0 0-1.89-6.42-.5-7 1.39-.58 4.72.23 6.5 2.23A9.04 9.04 0 0 1 12 5Z" />
    <path d="M8 14v.5" />
    <path d="M16 14v.5" />
    <path d="M11.25 16.25h1.5L12 17l-.75-.75Z" />
    </svg>
    """
  end

  @doc "cctv.svg"
  def cctv(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 9h.01" />
    <path d="M16.75 12H22l-3.5 7-3.09-4.32" />
    <path d="M18 9.5l-4 8-10.39-5.2a2.92 2.92 0 0 1-1.3-3.91L3.69 5.6a2.92 2.92 0 0 1 3.92-1.3Z" />
    <path d="M2 19h3.76a2 2 0 0 0 1.8-1.1L9 15" />
    <path d="M2 21v-4" />
    </svg>
    """
  end

  @doc "check-check.svg"
  def check_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 6 7 17l-5-5" />
    <path d="m22 10-7.5 7.5L13 16" />
    </svg>
    """
  end

  @doc "check-circle-2.svg"
  def check_circle_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="m9 12 2 2 4-4" />
    </svg>
    """
  end

  @doc "check-circle.svg"
  def check_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14" />
    <path d="m9 11 3 3L22 4" />
    </svg>
    """
  end

  @doc "check-square-2.svg"
  def check_square_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="m9 12 2 2 4-4" />
    </svg>
    """
  end

  @doc "check-square.svg"
  def check_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m9 11 3 3L22 4" />
    <path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11" />
    </svg>
    """
  end

  @doc "check.svg"
  def check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 6 9 17l-5-5" />
    </svg>
    """
  end

  @doc "chef-hat.svg"
  def chef_hat(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 13.87A4 4 0 0 1 7.41 6a5.11 5.11 0 0 1 1.05-1.54 5 5 0 0 1 7.08 0A5.11 5.11 0 0 1 16.59 6 4 4 0 0 1 18 13.87V21H6Z" />
    <line x1="6" x2="18" y1="17" y2="17" />
    </svg>
    """
  end

  @doc "cherry.svg"
  def cherry(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 17a5 5 0 0 0 10 0c0-2.76-2.5-5-5-3-2.5-2-5 .24-5 3Z" />
    <path d="M12 17a5 5 0 0 0 10 0c0-2.76-2.5-5-5-3-2.5-2-5 .24-5 3Z" />
    <path d="M7 14c3.22-2.91 4.29-8.75 5-12 1.66 2.38 4.94 9 5 12" />
    <path d="M22 9c-4.29 0-7.14-2.33-10-7 5.71 0 10 4.67 10 7Z" />
    </svg>
    """
  end

  @doc "chevron-down-circle.svg"
  def chevron_down_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="m16 10-4 4-4-4" />
    </svg>
    """
  end

  @doc "chevron-down-square.svg"
  def chevron_down_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="m16 10-4 4-4-4" />
    </svg>
    """
  end

  @doc "chevron-down.svg"
  def chevron_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m6 9 6 6 6-6" />
    </svg>
    """
  end

  @doc "chevron-first.svg"
  def chevron_first(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m17 18-6-6 6-6" />
    <path d="M7 6v12" />
    </svg>
    """
  end

  @doc "chevron-last.svg"
  def chevron_last(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m7 18 6-6-6-6" />
    <path d="M17 6v12" />
    </svg>
    """
  end

  @doc "chevron-left-circle.svg"
  def chevron_left_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="m14 16-4-4 4-4" />
    </svg>
    """
  end

  @doc "chevron-left-square.svg"
  def chevron_left_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="m14 16-4-4 4-4" />
    </svg>
    """
  end

  @doc "chevron-left.svg"
  def chevron_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m15 18-6-6 6-6" />
    </svg>
    """
  end

  @doc "chevron-right-circle.svg"
  def chevron_right_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="m10 8 4 4-4 4" />
    </svg>
    """
  end

  @doc "chevron-right-square.svg"
  def chevron_right_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="m10 8 4 4-4 4" />
    </svg>
    """
  end

  @doc "chevron-right.svg"
  def chevron_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m9 18 6-6-6-6" />
    </svg>
    """
  end

  @doc "chevron-up-circle.svg"
  def chevron_up_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="m8 14 4-4 4 4" />
    </svg>
    """
  end

  @doc "chevron-up-square.svg"
  def chevron_up_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="m8 14 4-4 4 4" />
    </svg>
    """
  end

  @doc "chevron-up.svg"
  def chevron_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m18 15-6-6-6 6" />
    </svg>
    """
  end

  @doc "chevrons-down-up.svg"
  def chevrons_down_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m7 20 5-5 5 5" />
    <path d="m7 4 5 5 5-5" />
    </svg>
    """
  end

  @doc "chevrons-down.svg"
  def chevrons_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m7 6 5 5 5-5" />
    <path d="m7 13 5 5 5-5" />
    </svg>
    """
  end

  @doc "chevrons-left-right.svg"
  def chevrons_left_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m9 7-5 5 5 5" />
    <path d="m15 7 5 5-5 5" />
    </svg>
    """
  end

  @doc "chevrons-left.svg"
  def chevrons_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m11 17-5-5 5-5" />
    <path d="m18 17-5-5 5-5" />
    </svg>
    """
  end

  @doc "chevrons-right-left.svg"
  def chevrons_right_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m20 17-5-5 5-5" />
    <path d="m4 17 5-5-5-5" />
    </svg>
    """
  end

  @doc "chevrons-right.svg"
  def chevrons_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m6 17 5-5-5-5" />
    <path d="m13 17 5-5-5-5" />
    </svg>
    """
  end

  @doc "chevrons-up-down.svg"
  def chevrons_up_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m7 15 5 5 5-5" />
    <path d="m7 9 5-5 5 5" />
    </svg>
    """
  end

  @doc "chevrons-up.svg"
  def chevrons_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m17 11-5-5-5 5" />
    <path d="m17 18-5-5-5 5" />
    </svg>
    """
  end

  @doc "chrome.svg"
  def chrome(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <circle cx="12" cy="12" r="4" />
    <line x1="21.17" x2="12" y1="8" y2="8" />
    <line x1="3.95" x2="8.54" y1="6.06" y2="14" />
    <line x1="10.88" x2="15.46" y1="21.94" y2="14" />
    </svg>
    """
  end

  @doc "church.svg"
  def church(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m18 7 4 2v11a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V9l4-2" />
    <path d="M14 22v-4a2 2 0 0 0-2-2v0a2 2 0 0 0-2 2v4" />
    <path d="M18 22V5l-6-3-6 3v17" />
    <path d="M12 7v5" />
    <path d="M10 9h4" />
    </svg>
    """
  end

  @doc "cigarette-off.svg"
  def cigarette_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="2" x2="22" y1="2" y2="22" />
    <path d="M12 12H2v4h14" />
    <path d="M22 12v4" />
    <path d="M18 12h-.5" />
    <path d="M7 12v4" />
    <path d="M18 8c0-2.5-2-2.5-2-5" />
    <path d="M22 8c0-2.5-2-2.5-2-5" />
    </svg>
    """
  end

  @doc "cigarette.svg"
  def cigarette(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 12H2v4h16" />
    <path d="M22 12v4" />
    <path d="M7 12v4" />
    <path d="M18 8c0-2.5-2-2.5-2-5" />
    <path d="M22 8c0-2.5-2-2.5-2-5" />
    </svg>
    """
  end

  @doc "circle-dashed.svg"
  def circle_dashed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10.1 2.182a10 10 0 0 1 3.8 0" />
    <path d="M13.9 21.818a10 10 0 0 1-3.8 0" />
    <path d="M17.609 3.721a10 10 0 0 1 2.69 2.7" />
    <path d="M2.182 13.9a10 10 0 0 1 0-3.8" />
    <path d="M20.279 17.609a10 10 0 0 1-2.7 2.69" />
    <path d="M21.818 10.1a10 10 0 0 1 0 3.8" />
    <path d="M3.721 6.391a10 10 0 0 1 2.7-2.69" />
    <path d="M6.391 20.279a10 10 0 0 1-2.69-2.7" />
    </svg>
    """
  end

  @doc "circle-dollar-sign.svg"
  def circle_dollar_sign(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M16 8h-6a2 2 0 1 0 0 4h4a2 2 0 1 1 0 4H8" />
    <path d="M12 18V6" />
    </svg>
    """
  end

  @doc "circle-dot-dashed.svg"
  def circle_dot_dashed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10.1 2.18a9.93 9.93 0 0 1 3.8 0" />
    <path d="M17.6 3.71a9.95 9.95 0 0 1 2.69 2.7" />
    <path d="M21.82 10.1a9.93 9.93 0 0 1 0 3.8" />
    <path d="M20.29 17.6a9.95 9.95 0 0 1-2.7 2.69" />
    <path d="M13.9 21.82a9.94 9.94 0 0 1-3.8 0" />
    <path d="M6.4 20.29a9.95 9.95 0 0 1-2.69-2.7" />
    <path d="M2.18 13.9a9.93 9.93 0 0 1 0-3.8" />
    <path d="M3.71 6.4a9.95 9.95 0 0 1 2.7-2.69" />
    <circle cx="12" cy="12" r="1" />
    </svg>
    """
  end

  @doc "circle-dot.svg"
  def circle_dot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <circle cx="12" cy="12" r="1" />
    </svg>
    """
  end

  @doc "circle-ellipsis.svg"
  def circle_ellipsis(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M17 12h.01" />
    <path d="M12 12h.01" />
    <path d="M7 12h.01" />
    </svg>
    """
  end

  @doc "circle-equal.svg"
  def circle_equal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 10h10" />
    <path d="M7 14h10" />
    <circle cx="12" cy="12" r="10" />
    </svg>
    """
  end

  @doc "circle-fading-plus.svg"
  def circle_fading_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 2a10 10 0 0 1 7.38 16.75" />
    <path d="M12 8v8" />
    <path d="M16 12H8" />
    <path d="M2.5 8.875a10 10 0 0 0-.5 3" />
    <path d="M2.83 16a10 10 0 0 0 2.43 3.4" />
    <path d="M4.636 5.235a10 10 0 0 1 .891-.857" />
    <path d="M8.644 21.42a10 10 0 0 0 7.631-.38" />
    </svg>
    """
  end

  @doc "circle-off.svg"
  def circle_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m2 2 20 20" />
    <path d="M8.35 2.69A10 10 0 0 1 21.3 15.65" />
    <path d="M19.08 19.08A10 10 0 1 1 4.92 4.92" />
    </svg>
    """
  end

  @doc "circle-slash-2.svg"
  def circle_slash_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M22 2 2 22" />
    </svg>
    """
  end

  @doc "circle-slash.svg"
  def circle_slash(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="9" x2="15" y1="15" y2="9" />
    <circle cx="12" cy="12" r="10" />
    </svg>
    """
  end

  @doc "circle-user-round.svg"
  def circle_user_round(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 20a6 6 0 0 0-12 0" />
    <circle cx="12" cy="10" r="4" />
    <circle cx="12" cy="12" r="10" />
    </svg>
    """
  end

  @doc "circle-user.svg"
  def circle_user(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <circle cx="12" cy="10" r="3" />
    <path d="M7 20.662V19a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v1.662" />
    </svg>
    """
  end

  @doc "circle.svg"
  def circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    </svg>
    """
  end

  @doc "circuit-board.svg"
  def circuit_board(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M11 9h4a2 2 0 0 0 2-2V3" />
    <circle cx="9" cy="9" r="2" />
    <path d="M7 21v-4a2 2 0 0 1 2-2h4" />
    <circle cx="15" cy="15" r="2" />
    </svg>
    """
  end

  @doc "citrus.svg"
  def citrus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21.66 17.67a1.08 1.08 0 0 1-.04 1.6A12 12 0 0 1 4.73 2.38a1.1 1.1 0 0 1 1.61-.04z" />
    <path d="M19.65 15.66A8 8 0 0 1 8.35 4.34" />
    <path d="m14 10-5.5 5.5" />
    <path d="M14 17.85V10H6.15" />
    </svg>
    """
  end

  @doc "clapperboard.svg"
  def clapperboard(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20.2 6 3 11l-.9-2.4c-.3-1.1.3-2.2 1.3-2.5l13.5-4c1.1-.3 2.2.3 2.5 1.3Z" />
    <path d="m6.2 5.3 3.1 3.9" />
    <path d="m12.4 3.4 3.1 4" />
    <path d="M3 11h18v8a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2Z" />
    </svg>
    """
  end

  @doc "clipboard-check.svg"
  def clipboard_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="4" x="8" y="2" rx="1" ry="1" />
    <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2" />
    <path d="m9 14 2 2 4-4" />
    </svg>
    """
  end

  @doc "clipboard-copy.svg"
  def clipboard_copy(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="4" x="8" y="2" rx="1" ry="1" />
    <path d="M8 4H6a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-2" />
    <path d="M16 4h2a2 2 0 0 1 2 2v4" />
    <path d="M21 14H11" />
    <path d="m15 10-4 4 4 4" />
    </svg>
    """
  end

  @doc "clipboard-list.svg"
  def clipboard_list(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="4" x="8" y="2" rx="1" ry="1" />
    <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2" />
    <path d="M12 11h4" />
    <path d="M12 16h4" />
    <path d="M8 11h.01" />
    <path d="M8 16h.01" />
    </svg>
    """
  end

  @doc "clipboard-minus.svg"
  def clipboard_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="4" x="8" y="2" rx="1" ry="1" />
    <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2" />
    <path d="M9 14h6" />
    </svg>
    """
  end

  @doc "clipboard-paste.svg"
  def clipboard_paste(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H9a1 1 0 0 0-1 1v2c0 .6.4 1 1 1h6c.6 0 1-.4 1-1V3c0-.6-.4-1-1-1Z" />
    <path d="M8 4H6a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2M16 4h2a2 2 0 0 1 2 2v2M11 14h10" />
    <path d="m17 10 4 4-4 4" />
    </svg>
    """
  end

  @doc "clipboard-pen-line.svg"
  def clipboard_pen_line(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="4" x="8" y="2" rx="1" />
    <path d="M8 4H6a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-.5" />
    <path d="M16 4h2a2 2 0 0 1 1.73 1" />
    <path d="M8 18h1" />
    <path d="M18.4 9.6a2 2 0 0 1 3 3L17 17l-4 1 1-4Z" />
    </svg>
    """
  end

  @doc "clipboard-pen.svg"
  def clipboard_pen(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="4" x="8" y="2" rx="1" />
    <path d="M10.4 12.6a2 2 0 0 1 3 3L8 21l-4 1 1-4Z" />
    <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-5.5" />
    <path d="M4 13.5V6a2 2 0 0 1 2-2h2" />
    </svg>
    """
  end

  @doc "clipboard-plus.svg"
  def clipboard_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="4" x="8" y="2" rx="1" ry="1" />
    <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2" />
    <path d="M9 14h6" />
    <path d="M12 17v-6" />
    </svg>
    """
  end

  @doc "clipboard-type.svg"
  def clipboard_type(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="4" x="8" y="2" rx="1" ry="1" />
    <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2" />
    <path d="M9 12v-1h6v1" />
    <path d="M11 17h2" />
    <path d="M12 11v6" />
    </svg>
    """
  end

  @doc "clipboard-x.svg"
  def clipboard_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="4" x="8" y="2" rx="1" ry="1" />
    <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2" />
    <path d="m15 11-6 6" />
    <path d="m9 11 6 6" />
    </svg>
    """
  end

  @doc "clipboard.svg"
  def clipboard(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="4" x="8" y="2" rx="1" ry="1" />
    <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2" />
    </svg>
    """
  end

  @doc "clock-1.svg"
  def clock_1(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polyline points="12 6 12 12 14.5 8" />
    </svg>
    """
  end

  @doc "clock-10.svg"
  def clock_10(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polyline points="12 6 12 12 8 10" />
    </svg>
    """
  end

  @doc "clock-11.svg"
  def clock_11(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polyline points="12 6 12 12 9.5 8" />
    </svg>
    """
  end

  @doc "clock-12.svg"
  def clock_12(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polyline points="12 6 12 12" />
    </svg>
    """
  end

  @doc "clock-2.svg"
  def clock_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polyline points="12 6 12 12 16 10" />
    </svg>
    """
  end

  @doc "clock-3.svg"
  def clock_3(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polyline points="12 6 12 12 16.5 12" />
    </svg>
    """
  end

  @doc "clock-4.svg"
  def clock_4(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polyline points="12 6 12 12 16 14" />
    </svg>
    """
  end

  @doc "clock-5.svg"
  def clock_5(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polyline points="12 6 12 12 14.5 16" />
    </svg>
    """
  end

  @doc "clock-6.svg"
  def clock_6(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polyline points="12 6 12 12 12 16.5" />
    </svg>
    """
  end

  @doc "clock-7.svg"
  def clock_7(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polyline points="12 6 12 12 9.5 16" />
    </svg>
    """
  end

  @doc "clock-8.svg"
  def clock_8(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polyline points="12 6 12 12 8 14" />
    </svg>
    """
  end

  @doc "clock-9.svg"
  def clock_9(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polyline points="12 6 12 12 7.5 12" />
    </svg>
    """
  end

  @doc "clock.svg"
  def clock(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polyline points="12 6 12 12 16 14" />
    </svg>
    """
  end

  @doc "cloud-cog.svg"
  def cloud_cog(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="17" r="3" />
    <path d="M4.2 15.1A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.2" />
    <path d="m15.7 18.4-.9-.3" />
    <path d="m9.2 15.9-.9-.3" />
    <path d="m10.6 20.7.3-.9" />
    <path d="m13.1 14.2.3-.9" />
    <path d="m13.6 20.7-.4-1" />
    <path d="m10.8 14.3-.4-1" />
    <path d="m8.3 18.6 1-.4" />
    <path d="m14.7 15.8 1-.4" />
    </svg>
    """
  end

  @doc "cloud-drizzle.svg"
  def cloud_drizzle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242" />
    <path d="M8 19v1" />
    <path d="M8 14v1" />
    <path d="M16 19v1" />
    <path d="M16 14v1" />
    <path d="M12 21v1" />
    <path d="M12 16v1" />
    </svg>
    """
  end

  @doc "cloud-fog.svg"
  def cloud_fog(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242" />
    <path d="M16 17H7" />
    <path d="M17 21H9" />
    </svg>
    """
  end

  @doc "cloud-hail.svg"
  def cloud_hail(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242" />
    <path d="M16 14v2" />
    <path d="M8 14v2" />
    <path d="M16 20h.01" />
    <path d="M8 20h.01" />
    <path d="M12 16v2" />
    <path d="M12 22h.01" />
    </svg>
    """
  end

  @doc "cloud-lightning.svg"
  def cloud_lightning(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 16.326A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 .5 8.973" />
    <path d="m13 12-3 5h4l-3 5" />
    </svg>
    """
  end

  @doc "cloud-moon-rain.svg"
  def cloud_moon_rain(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10.083 9A6.002 6.002 0 0 1 16 4a4.243 4.243 0 0 0 6 6c0 2.22-1.206 4.16-3 5.197" />
    <path d="M3 20a5 5 0 1 1 8.9-4H13a3 3 0 0 1 2 5.24" />
    <path d="M11 20v2" />
    <path d="M7 19v2" />
    </svg>
    """
  end

  @doc "cloud-moon.svg"
  def cloud_moon(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13 16a3 3 0 1 1 0 6H7a5 5 0 1 1 4.9-6Z" />
    <path d="M10.1 9A6 6 0 0 1 16 4a4.24 4.24 0 0 0 6 6 6 6 0 0 1-3 5.197" />
    </svg>
    """
  end

  @doc "cloud-off.svg"
  def cloud_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m2 2 20 20" />
    <path d="M5.782 5.782A7 7 0 0 0 9 19h8.5a4.5 4.5 0 0 0 1.307-.193" />
    <path d="M21.532 16.5A4.5 4.5 0 0 0 17.5 10h-1.79A7.008 7.008 0 0 0 10 5.07" />
    </svg>
    """
  end

  @doc "cloud-rain-wind.svg"
  def cloud_rain_wind(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242" />
    <path d="m9.2 22 3-7" />
    <path d="m9 13-3 7" />
    <path d="m17 13-3 7" />
    </svg>
    """
  end

  @doc "cloud-rain.svg"
  def cloud_rain(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242" />
    <path d="M16 14v6" />
    <path d="M8 14v6" />
    <path d="M12 16v6" />
    </svg>
    """
  end

  @doc "cloud-snow.svg"
  def cloud_snow(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242" />
    <path d="M8 15h.01" />
    <path d="M8 19h.01" />
    <path d="M12 17h.01" />
    <path d="M12 21h.01" />
    <path d="M16 15h.01" />
    <path d="M16 19h.01" />
    </svg>
    """
  end

  @doc "cloud-sun-rain.svg"
  def cloud_sun_rain(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 2v2" />
    <path d="m4.93 4.93 1.41 1.41" />
    <path d="M20 12h2" />
    <path d="m19.07 4.93-1.41 1.41" />
    <path d="M15.947 12.65a4 4 0 0 0-5.925-4.128" />
    <path d="M3 20a5 5 0 1 1 8.9-4H13a3 3 0 0 1 2 5.24" />
    <path d="M11 20v2" />
    <path d="M7 19v2" />
    </svg>
    """
  end

  @doc "cloud-sun.svg"
  def cloud_sun(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 2v2" />
    <path d="m4.93 4.93 1.41 1.41" />
    <path d="M20 12h2" />
    <path d="m19.07 4.93-1.41 1.41" />
    <path d="M15.947 12.65a4 4 0 0 0-5.925-4.128" />
    <path d="M13 22H7a5 5 0 1 1 4.9-6H13a3 3 0 0 1 0 6Z" />
    </svg>
    """
  end

  @doc "cloud.svg"
  def cloud(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17.5 19H9a7 7 0 1 1 6.71-9h1.79a4.5 4.5 0 1 1 0 9Z" />
    </svg>
    """
  end

  @doc "cloudy.svg"
  def cloudy(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17.5 21H9a7 7 0 1 1 6.71-9h1.79a4.5 4.5 0 1 1 0 9Z" />
    <path d="M22 10a3 3 0 0 0-3-3h-2.207a5.502 5.502 0 0 0-10.702.5" />
    </svg>
    """
  end

  @doc "clover.svg"
  def clover(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16.17 7.83 2 22" />
    <path d="M4.02 12a2.827 2.827 0 1 1 3.81-4.17A2.827 2.827 0 1 1 12 4.02a2.827 2.827 0 1 1 4.17 3.81A2.827 2.827 0 1 1 19.98 12a2.827 2.827 0 1 1-3.81 4.17A2.827 2.827 0 1 1 12 19.98a2.827 2.827 0 1 1-4.17-3.81A1 1 0 1 1 4 12" />
    <path d="m7.83 7.83 8.34 8.34" />
    </svg>
    """
  end

  @doc "club.svg"
  def club(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17.28 9.05a5.5 5.5 0 1 0-10.56 0A5.5 5.5 0 1 0 12 17.66a5.5 5.5 0 1 0 5.28-8.6Z" />
    <path d="M12 17.66L12 22" />
    </svg>
    """
  end

  @doc "code-2.svg"
  def code_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m18 16 4-4-4-4" />
    <path d="m6 8-4 4 4 4" />
    <path d="m14.5 4-5 16" />
    </svg>
    """
  end

  @doc "code-square.svg"
  def code_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="m10 10-2 2 2 2" />
    <path d="m14 14 2-2-2-2" />
    </svg>
    """
  end

  @doc "code.svg"
  def code(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="16 18 22 12 16 6" />
    <polyline points="8 6 2 12 8 18" />
    </svg>
    """
  end

  @doc "codepen.svg"
  def codepen(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="12 2 22 8.5 22 15.5 12 22 2 15.5 2 8.5 12 2" />
    <line x1="12" x2="12" y1="22" y2="15.5" />
    <polyline points="22 8.5 12 15.5 2 8.5" />
    <polyline points="2 15.5 12 8.5 22 15.5" />
    <line x1="12" x2="12" y1="2" y2="8.5" />
    </svg>
    """
  end

  @doc "codesandbox.svg"
  def codesandbox(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z" />
    <polyline points="7.5 4.21 12 6.81 16.5 4.21" />
    <polyline points="7.5 19.79 7.5 14.6 3 12" />
    <polyline points="21 12 16.5 14.6 16.5 19.79" />
    <polyline points="3.27 6.96 12 12.01 20.73 6.96" />
    <line x1="12" x2="12" y1="22.08" y2="12" />
    </svg>
    """
  end

  @doc "coffee.svg"
  def coffee(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 8h1a4 4 0 1 1 0 8h-1" />
    <path d="M3 8h14v9a4 4 0 0 1-4 4H7a4 4 0 0 1-4-4Z" />
    <line x1="6" x2="6" y1="2" y2="4" />
    <line x1="10" x2="10" y1="2" y2="4" />
    <line x1="14" x2="14" y1="2" y2="4" />
    </svg>
    """
  end

  @doc "cog.svg"
  def cog(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 20a8 8 0 1 0 0-16 8 8 0 0 0 0 16Z" />
    <path d="M12 14a2 2 0 1 0 0-4 2 2 0 0 0 0 4Z" />
    <path d="M12 2v2" />
    <path d="M12 22v-2" />
    <path d="m17 20.66-1-1.73" />
    <path d="M11 10.27 7 3.34" />
    <path d="m20.66 17-1.73-1" />
    <path d="m3.34 7 1.73 1" />
    <path d="M14 12h8" />
    <path d="M2 12h2" />
    <path d="m20.66 7-1.73 1" />
    <path d="m3.34 17 1.73-1" />
    <path d="m17 3.34-1 1.73" />
    <path d="m11 13.73-4 6.93" />
    </svg>
    """
  end

  @doc "coins.svg"
  def coins(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="8" cy="8" r="6" />
    <path d="M18.09 10.37A6 6 0 1 1 10.34 18" />
    <path d="M7 6h1v4" />
    <path d="m16.71 13.88.7.71-2.82 2.82" />
    </svg>
    """
  end

  @doc "columns-2.svg"
  def columns_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M12 3v18" />
    </svg>
    """
  end

  @doc "columns-3.svg"
  def columns_3(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M9 3v18" />
    <path d="M15 3v18" />
    </svg>
    """
  end

  @doc "columns-4.svg"
  def columns_4(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M7.5 3v18" />
    <path d="M12 3v18" />
    <path d="M16.5 3v18" />
    </svg>
    """
  end

  @doc "combine.svg"
  def combine(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="8" x="2" y="2" rx="2" />
    <path d="M14 2c1.1 0 2 .9 2 2v4c0 1.1-.9 2-2 2" />
    <path d="M20 2c1.1 0 2 .9 2 2v4c0 1.1-.9 2-2 2" />
    <path d="M10 18H5c-1.7 0-3-1.3-3-3v-1" />
    <polyline points="7 21 10 18 7 15" />
    <rect width="8" height="8" x="14" y="14" rx="2" />
    </svg>
    """
  end

  @doc "command.svg"
  def command(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 6v12a3 3 0 1 0 3-3H6a3 3 0 1 0 3 3V6a3 3 0 1 0-3 3h12a3 3 0 1 0-3-3" />
    </svg>
    """
  end

  @doc "compass.svg"
  def compass(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polygon points="16.24 7.76 14.12 14.12 7.76 16.24 9.88 9.88 16.24 7.76" />
    </svg>
    """
  end

  @doc "component.svg"
  def component(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5.5 8.5 9 12l-3.5 3.5L2 12l3.5-3.5Z" />
    <path d="m12 2 3.5 3.5L12 9 8.5 5.5 12 2Z" />
    <path d="M18.5 8.5 22 12l-3.5 3.5L15 12l3.5-3.5Z" />
    <path d="m12 15 3.5 3.5L12 22l-3.5-3.5L12 15Z" />
    </svg>
    """
  end

  @doc "computer.svg"
  def computer(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="14" height="8" x="5" y="2" rx="2" />
    <rect width="20" height="8" x="2" y="14" rx="2" />
    <path d="M6 18h2" />
    <path d="M12 18h6" />
    </svg>
    """
  end

  @doc "concierge-bell.svg"
  def concierge_bell(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 18a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v2H2v-2Z" />
    <path d="M20 16a8 8 0 1 0-16 0" />
    <path d="M12 4v4" />
    <path d="M10 4h4" />
    </svg>
    """
  end

  @doc "cone.svg"
  def cone(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m20.9 18.55-8-15.98a1 1 0 0 0-1.8 0l-8 15.98" />
    <ellipse cx="12" cy="19" rx="9" ry="3" />
    </svg>
    """
  end

  @doc "construction.svg"
  def construction(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect x="2" y="6" width="20" height="8" rx="1" />
    <path d="M17 14v7" />
    <path d="M7 14v7" />
    <path d="M17 3v3" />
    <path d="M7 3v3" />
    <path d="M10 14 2.3 6.3" />
    <path d="m14 6 7.7 7.7" />
    <path d="m8 6 8 8" />
    </svg>
    """
  end

  @doc "contact-2.svg"
  def contact_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 18a4 4 0 0 0-8 0" />
    <circle cx="12" cy="11" r="3" />
    <rect width="18" height="18" x="3" y="4" rx="2" />
    <line x1="8" x2="8" y1="2" y2="4" />
    <line x1="16" x2="16" y1="2" y2="4" />
    </svg>
    """
  end

  @doc "contact.svg"
  def contact(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 18a2 2 0 0 0-2-2H9a2 2 0 0 0-2 2" />
    <rect width="18" height="18" x="3" y="4" rx="2" />
    <circle cx="12" cy="10" r="2" />
    <line x1="8" x2="8" y1="2" y2="4" />
    <line x1="16" x2="16" y1="2" y2="4" />
    </svg>
    """
  end

  @doc "container.svg"
  def container(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 7.7c0-.6-.4-1.2-.8-1.5l-6.3-3.9a1.72 1.72 0 0 0-1.7 0l-10.3 6c-.5.2-.9.8-.9 1.4v6.6c0 .5.4 1.2.8 1.5l6.3 3.9a1.72 1.72 0 0 0 1.7 0l10.3-6c.5-.3.9-1 .9-1.5Z" />
    <path d="M10 21.9V14L2.1 9.1" />
    <path d="m10 14 11.9-6.9" />
    <path d="M14 19.8v-8.1" />
    <path d="M18 17.5V9.4" />
    </svg>
    """
  end

  @doc "contrast.svg"
  def contrast(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M12 18a6 6 0 0 0 0-12v12z" />
    </svg>
    """
  end

  @doc "cookie.svg"
  def cookie(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 2a10 10 0 1 0 10 10 4 4 0 0 1-5-5 4 4 0 0 1-5-5" />
    <path d="M8.5 8.5v.01" />
    <path d="M16 15.5v.01" />
    <path d="M12 12v.01" />
    <path d="M11 17v.01" />
    <path d="M7 14v.01" />
    </svg>
    """
  end

  @doc "cooking-pot.svg"
  def cooking_pot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 12h20" />
    <path d="M20 12v8a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2v-8" />
    <path d="m4 8 16-4" />
    <path d="m8.86 6.78-.45-1.81a2 2 0 0 1 1.45-2.43l1.94-.48a2 2 0 0 1 2.43 1.46l.45 1.8" />
    </svg>
    """
  end

  @doc "copy-check.svg"
  def copy_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m12 15 2 2 4-4" />
    <rect width="14" height="14" x="8" y="8" rx="2" ry="2" />
    <path d="M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2" />
    </svg>
    """
  end

  @doc "copy-minus.svg"
  def copy_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="12" x2="18" y1="15" y2="15" />
    <rect width="14" height="14" x="8" y="8" rx="2" ry="2" />
    <path d="M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2" />
    </svg>
    """
  end

  @doc "copy-plus.svg"
  def copy_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="15" x2="15" y1="12" y2="18" />
    <line x1="12" x2="18" y1="15" y2="15" />
    <rect width="14" height="14" x="8" y="8" rx="2" ry="2" />
    <path d="M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2" />
    </svg>
    """
  end

  @doc "copy-slash.svg"
  def copy_slash(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="12" x2="18" y1="18" y2="12" />
    <rect width="14" height="14" x="8" y="8" rx="2" ry="2" />
    <path d="M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2" />
    </svg>
    """
  end

  @doc "copy-x.svg"
  def copy_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="12" x2="18" y1="12" y2="18" />
    <line x1="12" x2="18" y1="18" y2="12" />
    <rect width="14" height="14" x="8" y="8" rx="2" ry="2" />
    <path d="M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2" />
    </svg>
    """
  end

  @doc "copy.svg"
  def copy(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="14" height="14" x="8" y="8" rx="2" ry="2" />
    <path d="M4 16c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2" />
    </svg>
    """
  end

  @doc "copyleft.svg"
  def copyleft(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M9.17 14.83a4 4 0 1 0 0-5.66" />
    </svg>
    """
  end

  @doc "copyright.svg"
  def copyright(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M14.83 14.83a4 4 0 1 1 0-5.66" />
    </svg>
    """
  end

  @doc "corner-down-left.svg"
  def corner_down_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="9 10 4 15 9 20" />
    <path d="M20 4v7a4 4 0 0 1-4 4H4" />
    </svg>
    """
  end

  @doc "corner-down-right.svg"
  def corner_down_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="15 10 20 15 15 20" />
    <path d="M4 4v7a4 4 0 0 0 4 4h12" />
    </svg>
    """
  end

  @doc "corner-left-down.svg"
  def corner_left_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="14 15 9 20 4 15" />
    <path d="M20 4h-7a4 4 0 0 0-4 4v12" />
    </svg>
    """
  end

  @doc "corner-left-up.svg"
  def corner_left_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="14 9 9 4 4 9" />
    <path d="M20 20h-7a4 4 0 0 1-4-4V4" />
    </svg>
    """
  end

  @doc "corner-right-down.svg"
  def corner_right_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="10 15 15 20 20 15" />
    <path d="M4 4h7a4 4 0 0 1 4 4v12" />
    </svg>
    """
  end

  @doc "corner-right-up.svg"
  def corner_right_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="10 9 15 4 20 9" />
    <path d="M4 20h7a4 4 0 0 0 4-4V4" />
    </svg>
    """
  end

  @doc "corner-up-left.svg"
  def corner_up_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="9 14 4 9 9 4" />
    <path d="M20 20v-7a4 4 0 0 0-4-4H4" />
    </svg>
    """
  end

  @doc "corner-up-right.svg"
  def corner_up_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="15 14 20 9 15 4" />
    <path d="M4 20v-7a4 4 0 0 1 4-4h12" />
    </svg>
    """
  end

  @doc "cpu.svg"
  def cpu(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect x="4" y="4" width="16" height="16" rx="2" />
    <rect x="9" y="9" width="6" height="6" />
    <path d="M15 2v2" />
    <path d="M15 20v2" />
    <path d="M2 15h2" />
    <path d="M2 9h2" />
    <path d="M20 15h2" />
    <path d="M20 9h2" />
    <path d="M9 2v2" />
    <path d="M9 20v2" />
    </svg>
    """
  end

  @doc "creative-commons.svg"
  def creative_commons(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M10 9.3a2.8 2.8 0 0 0-3.5 1 3.1 3.1 0 0 0 0 3.4 2.7 2.7 0 0 0 3.5 1" />
    <path d="M17 9.3a2.8 2.8 0 0 0-3.5 1 3.1 3.1 0 0 0 0 3.4 2.7 2.7 0 0 0 3.5 1" />
    </svg>
    """
  end

  @doc "credit-card.svg"
  def credit_card(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="14" x="2" y="5" rx="2" />
    <line x1="2" x2="22" y1="10" y2="10" />
    </svg>
    """
  end

  @doc "croissant.svg"
  def croissant(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m4.6 13.11 5.79-3.21c1.89-1.05 4.79 1.78 3.71 3.71l-3.22 5.81C8.8 23.16.79 15.23 4.6 13.11Z" />
    <path d="m10.5 9.5-1-2.29C9.2 6.48 8.8 6 8 6H4.5C2.79 6 2 6.5 2 8.5a7.71 7.71 0 0 0 2 4.83" />
    <path d="M8 6c0-1.55.24-4-2-4-2 0-2.5 2.17-2.5 4" />
    <path d="m14.5 13.5 2.29 1c.73.3 1.21.7 1.21 1.5v3.5c0 1.71-.5 2.5-2.5 2.5a7.71 7.71 0 0 1-4.83-2" />
    <path d="M18 16c1.55 0 4-.24 4 2 0 2-2.17 2.5-4 2.5" />
    </svg>
    """
  end

  @doc "crop.svg"
  def crop(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 2v14a2 2 0 0 0 2 2h14" />
    <path d="M18 22V8a2 2 0 0 0-2-2H2" />
    </svg>
    """
  end

  @doc "cross.svg"
  def cross(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 2a2 2 0 0 0-2 2v5H4a2 2 0 0 0-2 2v2c0 1.1.9 2 2 2h5v5c0 1.1.9 2 2 2h2a2 2 0 0 0 2-2v-5h5a2 2 0 0 0 2-2v-2a2 2 0 0 0-2-2h-5V4a2 2 0 0 0-2-2h-2z" />
    </svg>
    """
  end

  @doc "crosshair.svg"
  def crosshair(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <line x1="22" x2="18" y1="12" y2="12" />
    <line x1="6" x2="2" y1="12" y2="12" />
    <line x1="12" x2="12" y1="6" y2="2" />
    <line x1="12" x2="12" y1="22" y2="18" />
    </svg>
    """
  end

  @doc "crown.svg"
  def crown(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m2 4 3 12h14l3-12-6 7-4-7-4 7-6-7zm3 16h14" />
    </svg>
    """
  end

  @doc "cuboid.svg"
  def cuboid(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m21.12 6.4-6.05-4.06a2 2 0 0 0-2.17-.05L2.95 8.41a2 2 0 0 0-.95 1.7v5.82a2 2 0 0 0 .88 1.66l6.05 4.07a2 2 0 0 0 2.17.05l9.95-6.12a2 2 0 0 0 .95-1.7V8.06a2 2 0 0 0-.88-1.66Z" />
    <path d="M10 22v-8L2.25 9.15" />
    <path d="m10 14 11.77-6.87" />
    </svg>
    """
  end

  @doc "cup-soda.svg"
  def cup_soda(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m6 8 1.75 12.28a2 2 0 0 0 2 1.72h4.54a2 2 0 0 0 2-1.72L18 8" />
    <path d="M5 8h14" />
    <path d="M7 15a6.47 6.47 0 0 1 5 0 6.47 6.47 0 0 0 5 0" />
    <path d="m12 8 1-6h2" />
    </svg>
    """
  end

  @doc "currency.svg"
  def currency(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="8" />
    <line x1="3" x2="6" y1="3" y2="6" />
    <line x1="21" x2="18" y1="3" y2="6" />
    <line x1="3" x2="6" y1="21" y2="18" />
    <line x1="21" x2="18" y1="21" y2="18" />
    </svg>
    """
  end

  @doc "cylinder.svg"
  def cylinder(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <ellipse cx="12" cy="5" rx="9" ry="3" />
    <path d="M3 5v14a9 3 0 0 0 18 0V5" />
    </svg>
    """
  end

  @doc "database-backup.svg"
  def database_backup(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <ellipse cx="12" cy="5" rx="9" ry="3" />
    <path d="M3 12a9 3 0 0 0 5 2.69" />
    <path d="M21 9.3V5" />
    <path d="M3 5v14a9 3 0 0 0 6.47 2.88" />
    <path d="M12 12v4h4" />
    <path d="M13 20a5 5 0 0 0 9-3 4.5 4.5 0 0 0-4.5-4.5c-1.33 0-2.54.54-3.41 1.41L12 16" />
    </svg>
    """
  end

  @doc "database-zap.svg"
  def database_zap(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <ellipse cx="12" cy="5" rx="9" ry="3" />
    <path d="M3 5V19A9 3 0 0 0 15 21.84" />
    <path d="M21 5V8" />
    <path d="M21 12L18 17H22L19 22" />
    <path d="M3 12A9 3 0 0 0 14.59 14.87" />
    </svg>
    """
  end

  @doc "database.svg"
  def database(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <ellipse cx="12" cy="5" rx="9" ry="3" />
    <path d="M3 5V19A9 3 0 0 0 21 19V5" />
    <path d="M3 12A9 3 0 0 0 21 12" />
    </svg>
    """
  end

  @doc "delete.svg"
  def delete(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 5H9l-7 7 7 7h11a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2Z" />
    <line x1="18" x2="12" y1="9" y2="15" />
    <line x1="12" x2="18" y1="9" y2="15" />
    </svg>
    """
  end

  @doc "dessert.svg"
  def dessert(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="4" r="2" />
    <path d="M10.2 3.2C5.5 4 2 8.1 2 13a2 2 0 0 0 4 0v-1a2 2 0 0 1 4 0v4a2 2 0 0 0 4 0v-4a2 2 0 0 1 4 0v1a2 2 0 0 0 4 0c0-4.9-3.5-9-8.2-9.8" />
    <path d="M3.2 14.8a9 9 0 0 0 17.6 0" />
    </svg>
    """
  end

  @doc "diameter.svg"
  def diameter(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="19" cy="19" r="2" />
    <circle cx="5" cy="5" r="2" />
    <path d="M6.48 3.66a10 10 0 0 1 13.86 13.86" />
    <path d="m6.41 6.41 11.18 11.18" />
    <path d="M3.66 6.48a10 10 0 0 0 13.86 13.86" />
    </svg>
    """
  end

  @doc "diamond.svg"
  def diamond(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2.7 10.3a2.41 2.41 0 0 0 0 3.41l7.59 7.59a2.41 2.41 0 0 0 3.41 0l7.59-7.59a2.41 2.41 0 0 0 0-3.41l-7.59-7.59a2.41 2.41 0 0 0-3.41 0Z" />
    </svg>
    """
  end

  @doc "dice-1.svg"
  def dice_1(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" ry="2" />
    <path d="M12 12h.01" />
    </svg>
    """
  end

  @doc "dice-2.svg"
  def dice_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" ry="2" />
    <path d="M15 9h.01" />
    <path d="M9 15h.01" />
    </svg>
    """
  end

  @doc "dice-3.svg"
  def dice_3(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" ry="2" />
    <path d="M16 8h.01" />
    <path d="M12 12h.01" />
    <path d="M8 16h.01" />
    </svg>
    """
  end

  @doc "dice-4.svg"
  def dice_4(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" ry="2" />
    <path d="M16 8h.01" />
    <path d="M8 8h.01" />
    <path d="M8 16h.01" />
    <path d="M16 16h.01" />
    </svg>
    """
  end

  @doc "dice-5.svg"
  def dice_5(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" ry="2" />
    <path d="M16 8h.01" />
    <path d="M8 8h.01" />
    <path d="M8 16h.01" />
    <path d="M16 16h.01" />
    <path d="M12 12h.01" />
    </svg>
    """
  end

  @doc "dice-6.svg"
  def dice_6(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" ry="2" />
    <path d="M16 8h.01" />
    <path d="M16 12h.01" />
    <path d="M16 16h.01" />
    <path d="M8 8h.01" />
    <path d="M8 12h.01" />
    <path d="M8 16h.01" />
    </svg>
    """
  end

  @doc "dices.svg"
  def dices(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="12" height="12" x="2" y="10" rx="2" ry="2" />
    <path d="m17.92 14 3.5-3.5a2.24 2.24 0 0 0 0-3l-5-4.92a2.24 2.24 0 0 0-3 0L10 6" />
    <path d="M6 18h.01" />
    <path d="M10 14h.01" />
    <path d="M15 6h.01" />
    <path d="M18 9h.01" />
    </svg>
    """
  end

  @doc "diff.svg"
  def diff(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 3v14" />
    <path d="M5 10h14" />
    <path d="M5 21h14" />
    </svg>
    """
  end

  @doc "disc-2.svg"
  def disc_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <circle cx="12" cy="12" r="4" />
    <path d="M12 12h.01" />
    </svg>
    """
  end

  @doc "disc-3.svg"
  def disc_3(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M6 12c0-1.7.7-3.2 1.8-4.2" />
    <circle cx="12" cy="12" r="2" />
    <path d="M18 12c0 1.7-.7 3.2-1.8 4.2" />
    </svg>
    """
  end

  @doc "disc-album.svg"
  def disc_album(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <circle cx="12" cy="12" r="5" />
    <path d="M12 12h.01" />
    </svg>
    """
  end

  @doc "disc.svg"
  def disc(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <circle cx="12" cy="12" r="2" />
    </svg>
    """
  end

  @doc "divide-circle.svg"
  def divide_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="8" x2="16" y1="12" y2="12" />
    <line x1="12" x2="12" y1="16" y2="16" />
    <line x1="12" x2="12" y1="8" y2="8" />
    <circle cx="12" cy="12" r="10" />
    </svg>
    """
  end

  @doc "divide-square.svg"
  def divide_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" ry="2" />
    <line x1="8" x2="16" y1="12" y2="12" />
    <line x1="12" x2="12" y1="16" y2="16" />
    <line x1="12" x2="12" y1="8" y2="8" />
    </svg>
    """
  end

  @doc "divide.svg"
  def divide(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="6" r="1" />
    <line x1="5" x2="19" y1="12" y2="12" />
    <circle cx="12" cy="18" r="1" />
    </svg>
    """
  end

  @doc "dna-off.svg"
  def dna_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2c-1.35 1.5-2.092 3-2.5 4.5M9 22c1.35-1.5 2.092-3 2.5-4.5" />
    <path d="M2 15c3.333-3 6.667-3 10-3m10-3c-1.5 1.35-3 2.092-4.5 2.5" />
    <path d="m17 6-2.5-2.5" />
    <path d="m14 8-1.5-1.5" />
    <path d="m7 18 2.5 2.5" />
    <path d="m3.5 14.5.5.5" />
    <path d="m20 9 .5.5" />
    <path d="m6.5 12.5 1 1" />
    <path d="m16.5 10.5 1 1" />
    <path d="m10 16 1.5 1.5" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "dna.svg"
  def dna(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 15c6.667-6 13.333 0 20-6" />
    <path d="M9 22c1.798-1.998 2.518-3.995 2.807-5.993" />
    <path d="M15 2c-1.798 1.998-2.518 3.995-2.807 5.993" />
    <path d="m17 6-2.5-2.5" />
    <path d="m14 8-1-1" />
    <path d="m7 18 2.5 2.5" />
    <path d="m3.5 14.5.5.5" />
    <path d="m20 9 .5.5" />
    <path d="m6.5 12.5 1 1" />
    <path d="m16.5 10.5 1 1" />
    <path d="m10 16 1.5 1.5" />
    </svg>
    """
  end

  @doc "dog.svg"
  def dog(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 5.172C10 3.782 8.423 2.679 6.5 3c-2.823.47-4.113 6.006-4 7 .08.703 1.725 1.722 3.656 1 1.261-.472 1.96-1.45 2.344-2.5" />
    <path d="M14.267 5.172c0-1.39 1.577-2.493 3.5-2.172 2.823.47 4.113 6.006 4 7-.08.703-1.725 1.722-3.656 1-1.261-.472-1.855-1.45-2.239-2.5" />
    <path d="M8 14v.5" />
    <path d="M16 14v.5" />
    <path d="M11.25 16.25h1.5L12 17l-.75-.75Z" />
    <path d="M4.42 11.247A13.152 13.152 0 0 0 4 14.556C4 18.728 7.582 21 12 21s8-2.272 8-6.444c0-1.061-.162-2.2-.493-3.309m-9.243-6.082A8.801 8.801 0 0 1 12 5c.78 0 1.5.108 2.161.306" />
    </svg>
    """
  end

  @doc "dollar-sign.svg"
  def dollar_sign(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="12" x2="12" y1="2" y2="22" />
    <path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6" />
    </svg>
    """
  end

  @doc "donut.svg"
  def donut(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20.5 10a2.5 2.5 0 0 1-2.4-3H18a2.95 2.95 0 0 1-2.6-4.4 10 10 0 1 0 6.3 7.1c-.3.2-.8.3-1.2.3" />
    <circle cx="12" cy="12" r="3" />
    </svg>
    """
  end

  @doc "door-closed.svg"
  def door_closed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 20V6a2 2 0 0 0-2-2H8a2 2 0 0 0-2 2v14" />
    <path d="M2 20h20" />
    <path d="M14 12v.01" />
    </svg>
    """
  end

  @doc "door-open.svg"
  def door_open(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13 4h3a2 2 0 0 1 2 2v14" />
    <path d="M2 20h3" />
    <path d="M13 20h9" />
    <path d="M10 12v.01" />
    <path d="M13 4.562v16.157a1 1 0 0 1-1.242.97L5 20V5.562a2 2 0 0 1 1.515-1.94l4-1A2 2 0 0 1 13 4.561Z" />
    </svg>
    """
  end

  @doc "dot-square.svg"
  def dot_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <circle cx="12" cy="12" r="1" />
    </svg>
    """
  end

  @doc "dot.svg"
  def dot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12.1" cy="12.1" r="1" />
    </svg>
    """
  end

  @doc "download-cloud.svg"
  def download_cloud(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242" />
    <path d="M12 12v9" />
    <path d="m8 17 4 4 4-4" />
    </svg>
    """
  end

  @doc "download.svg"
  def download(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4" />
    <polyline points="7 10 12 15 17 10" />
    <line x1="12" x2="12" y1="15" y2="3" />
    </svg>
    """
  end

  @doc "drafting-compass.svg"
  def drafting_compass(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="5" r="2" />
    <path d="m3 21 8.02-14.26" />
    <path d="m12.99 6.74 1.93 3.44" />
    <path d="M19 12c-3.87 4-10.13 4-14 0" />
    <path d="m21 21-2.16-3.84" />
    </svg>
    """
  end

  @doc "drama.svg"
  def drama(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 11h.01" />
    <path d="M14 6h.01" />
    <path d="M18 6h.01" />
    <path d="M6.5 13.1h.01" />
    <path d="M22 5c0 9-4 12-6 12s-6-3-6-12c0-2 2-3 6-3s6 1 6 3" />
    <path d="M17.4 9.9c-.8.8-2 .8-2.8 0" />
    <path d="M10.1 7.1C9 7.2 7.7 7.7 6 8.6c-3.5 2-4.7 3.9-3.7 5.6 4.5 7.8 9.5 8.4 11.2 7.4.9-.5 1.9-2.1 1.9-4.7" />
    <path d="M9.1 16.5c.3-1.1 1.4-1.7 2.4-1.4" />
    </svg>
    """
  end

  @doc "dribbble.svg"
  def dribbble(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M19.13 5.09C15.22 9.14 10 10.44 2.25 10.94" />
    <path d="M21.75 12.84c-6.62-1.41-12.14 1-16.38 6.32" />
    <path d="M8.56 2.75c4.37 6 6 9.42 8 17.72" />
    </svg>
    """
  end

  @doc "drill.svg"
  def drill(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14 9c0 .6-.4 1-1 1H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9c.6 0 1 .4 1 1Z" />
    <path d="M18 6h4" />
    <path d="M14 4h3a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-3" />
    <path d="m5 10-2 8" />
    <path d="M12 10v3c0 .6-.4 1-1 1H8" />
    <path d="m7 18 2-8" />
    <path d="M5 22c-1.7 0-3-1.3-3-3 0-.6.4-1 1-1h7c.6 0 1 .4 1 1v2c0 .6-.4 1-1 1Z" />
    </svg>
    """
  end

  @doc "droplet.svg"
  def droplet(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22a7 7 0 0 0 7-7c0-2-1-3.9-3-5.5s-3.5-4-4-6.5c-.5 2.5-2 4.9-4 6.5C6 11.1 5 13 5 15a7 7 0 0 0 7 7z" />
    </svg>
    """
  end

  @doc "droplets.svg"
  def droplets(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 16.3c2.2 0 4-1.83 4-4.05 0-1.16-.57-2.26-1.71-3.19S7.29 6.75 7 5.3c-.29 1.45-1.14 2.84-2.29 3.76S3 11.1 3 12.25c0 2.22 1.8 4.05 4 4.05z" />
    <path d="M12.56 6.6A10.97 10.97 0 0 0 14 3.02c.5 2.5 2 4.9 4 6.5s3 3.5 3 5.5a6.98 6.98 0 0 1-11.91 4.97" />
    </svg>
    """
  end

  @doc "drum.svg"
  def drum(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m2 2 8 8" />
    <path d="m22 2-8 8" />
    <ellipse cx="12" cy="9" rx="10" ry="5" />
    <path d="M7 13.4v7.9" />
    <path d="M12 14v8" />
    <path d="M17 13.4v7.9" />
    <path d="M2 9v8a10 5 0 0 0 20 0V9" />
    </svg>
    """
  end

  @doc "drumstick.svg"
  def drumstick(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15.45 15.4c-2.13.65-4.3.32-5.7-1.1-2.29-2.27-1.76-6.5 1.17-9.42 2.93-2.93 7.15-3.46 9.43-1.18 1.41 1.41 1.74 3.57 1.1 5.71-1.4-.51-3.26-.02-4.64 1.36-1.38 1.38-1.87 3.23-1.36 4.63z" />
    <path d="m11.25 15.6-2.16 2.16a2.5 2.5 0 1 1-4.56 1.73 2.49 2.49 0 0 1-1.41-4.24 2.5 2.5 0 0 1 3.14-.32l2.16-2.16" />
    </svg>
    """
  end

  @doc "dumbbell.svg"
  def dumbbell(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m6.5 6.5 11 11" />
    <path d="m21 21-1-1" />
    <path d="m3 3 1 1" />
    <path d="m18 22 4-4" />
    <path d="m2 6 4-4" />
    <path d="m3 10 7-7" />
    <path d="m14 21 7-7" />
    </svg>
    """
  end

  @doc "ear-off.svg"
  def ear_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 18.5a3.5 3.5 0 1 0 7 0c0-1.57.92-2.52 2.04-3.46" />
    <path d="M6 8.5c0-.75.13-1.47.36-2.14" />
    <path d="M8.8 3.15A6.5 6.5 0 0 1 19 8.5c0 1.63-.44 2.81-1.09 3.76" />
    <path d="M12.5 6A2.5 2.5 0 0 1 15 8.5M10 13a2 2 0 0 0 1.82-1.18" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "ear.svg"
  def ear(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 8.5a6.5 6.5 0 1 1 13 0c0 6-6 6-6 10a3.5 3.5 0 1 1-7 0" />
    <path d="M15 8.5a2.5 2.5 0 0 0-5 0v1a2 2 0 1 1 0 4" />
    </svg>
    """
  end

  @doc "eclipse.svg"
  def eclipse(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M12 2a7 7 0 1 0 10 10" />
    </svg>
    """
  end

  @doc "egg-fried.svg"
  def egg_fried(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="11.5" cy="12.5" r="3.5" />
    <path d="M3 8c0-3.5 2.5-6 6.5-6 5 0 4.83 3 7.5 5s5 2 5 6c0 4.5-2.5 6.5-7 6.5-2.5 0-2.5 2.5-6 2.5s-7-2-7-5.5c0-3 1.5-3 1.5-5C3.5 10 3 9 3 8Z" />
    </svg>
    """
  end

  @doc "egg-off.svg"
  def egg_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6.399 6.399C5.362 8.157 4.65 10.189 4.5 12c-.37 4.43 1.27 9.95 7.5 10 3.256-.026 5.259-1.547 6.375-3.625" />
    <path d="M19.532 13.875A14.07 14.07 0 0 0 19.5 12c-.36-4.34-3.95-9.96-7.5-10-1.04.012-2.082.502-3.046 1.297" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "egg.svg"
  def egg(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22c6.23-.05 7.87-5.57 7.5-10-.36-4.34-3.95-9.96-7.5-10-3.55.04-7.14 5.66-7.5 10-.37 4.43 1.27 9.95 7.5 10z" />
    </svg>
    """
  end

  @doc "equal-not.svg"
  def equal_not(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="5" x2="19" y1="9" y2="9" />
    <line x1="5" x2="19" y1="15" y2="15" />
    <line x1="19" x2="5" y1="5" y2="19" />
    </svg>
    """
  end

  @doc "equal-square.svg"
  def equal_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M7 10h10" />
    <path d="M7 14h10" />
    </svg>
    """
  end

  @doc "equal.svg"
  def equal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="5" x2="19" y1="9" y2="9" />
    <line x1="5" x2="19" y1="15" y2="15" />
    </svg>
    """
  end

  @doc "eraser.svg"
  def eraser(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m7 21-4.3-4.3c-1-1-1-2.5 0-3.4l9.6-9.6c1-1 2.5-1 3.4 0l5.6 5.6c1 1 1 2.5 0 3.4L13 21" />
    <path d="M22 21H7" />
    <path d="m5 11 9 9" />
    </svg>
    """
  end

  @doc "euro.svg"
  def euro(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 10h12" />
    <path d="M4 14h9" />
    <path d="M19 6a7.7 7.7 0 0 0-5.2-2A7.9 7.9 0 0 0 6 12c0 4.4 3.5 8 7.8 8 2 0 3.8-.8 5.2-2" />
    </svg>
    """
  end

  @doc "expand.svg"
  def expand(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m21 21-6-6m6 6v-4.8m0 4.8h-4.8" />
    <path d="M3 16.2V21m0 0h4.8M3 21l6-6" />
    <path d="M21 7.8V3m0 0h-4.8M21 3l-6 6" />
    <path d="M3 7.8V3m0 0h4.8M3 3l6 6" />
    </svg>
    """
  end

  @doc "external-link.svg"
  def external_link(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 3h6v6" />
    <path d="M10 14 21 3" />
    <path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6" />
    </svg>
    """
  end

  @doc "eye-off.svg"
  def eye_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9.88 9.88a3 3 0 1 0 4.24 4.24" />
    <path d="M10.73 5.08A10.43 10.43 0 0 1 12 5c7 0 10 7 10 7a13.16 13.16 0 0 1-1.67 2.68" />
    <path d="M6.61 6.61A13.526 13.526 0 0 0 2 12s3 7 10 7a9.74 9.74 0 0 0 5.39-1.61" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "eye.svg"
  def eye(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 12s3-7 10-7 10 7 10 7-3 7-10 7-10-7-10-7Z" />
    <circle cx="12" cy="12" r="3" />
    </svg>
    """
  end

  @doc "facebook.svg"
  def facebook(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z" />
    </svg>
    """
  end

  @doc "factory.svg"
  def factory(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 20a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V8l-7 5V8l-7 5V4a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z" />
    <path d="M17 18h1" />
    <path d="M12 18h1" />
    <path d="M7 18h1" />
    </svg>
    """
  end

  @doc "fan.svg"
  def fan(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10.827 16.379a6.082 6.082 0 0 1-8.618-7.002l5.412 1.45a6.082 6.082 0 0 1 7.002-8.618l-1.45 5.412a6.082 6.082 0 0 1 8.618 7.002l-5.412-1.45a6.082 6.082 0 0 1-7.002 8.618l1.45-5.412Z" />
    <path d="M12 12v.01" />
    </svg>
    """
  end

  @doc "fast-forward.svg"
  def fast_forward(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="13 19 22 12 13 5 13 19" />
    <polygon points="2 19 11 12 2 5 2 19" />
    </svg>
    """
  end

  @doc "feather.svg"
  def feather(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20.24 12.24a6 6 0 0 0-8.49-8.49L5 10.5V19h8.5z" />
    <line x1="16" x2="2" y1="8" y2="22" />
    <line x1="17.5" x2="9" y1="15" y2="15" />
    </svg>
    """
  end

  @doc "fence.svg"
  def fence(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 3 2 5v15c0 .6.4 1 1 1h2c.6 0 1-.4 1-1V5Z" />
    <path d="M6 8h4" />
    <path d="M6 18h4" />
    <path d="m12 3-2 2v15c0 .6.4 1 1 1h2c.6 0 1-.4 1-1V5Z" />
    <path d="M14 8h4" />
    <path d="M14 18h4" />
    <path d="m20 3-2 2v15c0 .6.4 1 1 1h2c.6 0 1-.4 1-1V5Z" />
    </svg>
    """
  end

  @doc "ferris-wheel.svg"
  def ferris_wheel(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="2" />
    <path d="M12 2v4" />
    <path d="m6.8 15-3.5 2" />
    <path d="m20.7 7-3.5 2" />
    <path d="M6.8 9 3.3 7" />
    <path d="m20.7 17-3.5-2" />
    <path d="m9 22 3-8 3 8" />
    <path d="M8 22h8" />
    <path d="M18 18.7a9 9 0 1 0-12 0" />
    </svg>
    """
  end

  @doc "figma.svg"
  def figma(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 5.5A3.5 3.5 0 0 1 8.5 2H12v7H8.5A3.5 3.5 0 0 1 5 5.5z" />
    <path d="M12 2h3.5a3.5 3.5 0 1 1 0 7H12V2z" />
    <path d="M12 12.5a3.5 3.5 0 1 1 7 0 3.5 3.5 0 1 1-7 0z" />
    <path d="M5 19.5A3.5 3.5 0 0 1 8.5 16H12v3.5a3.5 3.5 0 1 1-7 0z" />
    <path d="M5 12.5A3.5 3.5 0 0 1 8.5 9H12v7H8.5A3.5 3.5 0 0 1 5 12.5z" />
    </svg>
    """
  end

  @doc "file-archive.svg"
  def file_archive(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 22h2a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v18" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <circle cx="10" cy="20" r="2" />
    <path d="M10 7V6" />
    <path d="M10 12v-1" />
    <path d="M10 18v-2" />
    </svg>
    """
  end

  @doc "file-audio-2.svg"
  def file_audio_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v2" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <circle cx="3" cy="17" r="1" />
    <path d="M2 17v-3a4 4 0 0 1 8 0v3" />
    <circle cx="9" cy="17" r="1" />
    </svg>
    """
  end

  @doc "file-audio.svg"
  def file_audio(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17.5 22h.5a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v3" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M2 19a2 2 0 1 1 4 0v1a2 2 0 1 1-4 0v-4a6 6 0 0 1 12 0v4a2 2 0 1 1-4 0v-1a2 2 0 1 1 4 0" />
    </svg>
    """
  end

  @doc "file-axis-3d.svg"
  def file_axis_3d(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="m8 18 4-4" />
    <path d="M8 10v8h8" />
    </svg>
    """
  end

  @doc "file-badge-2.svg"
  def file_badge_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <circle cx="12" cy="10" r="3" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="m14 12.5 1 5.5-3-1-3 1 1-5.5" />
    </svg>
    """
  end

  @doc "file-badge.svg"
  def file_badge(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22h6a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v3" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M5 17a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z" />
    <path d="M7 16.5 8 22l-3-1-3 1 1-5.5" />
    </svg>
    """
  end

  @doc "file-bar-chart-2.svg"
  def file_bar_chart_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M8 18v-1" />
    <path d="M12 18v-6" />
    <path d="M16 18v-3" />
    </svg>
    """
  end

  @doc "file-bar-chart.svg"
  def file_bar_chart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M8 18v-2" />
    <path d="M12 18v-4" />
    <path d="M16 18v-6" />
    </svg>
    """
  end

  @doc "file-box.svg"
  def file_box(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14.5 22H18a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v4" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M3 13.1a2 2 0 0 0-1 1.76v3.24a2 2 0 0 0 .97 1.78L6 21.7a2 2 0 0 0 2.03.01L11 19.9a2 2 0 0 0 1-1.76V14.9a2 2 0 0 0-.97-1.78L8 11.3a2 2 0 0 0-2.03-.01Z" />
    <path d="M7 17v5" />
    <path d="M11.7 14.2 7 17l-4.7-2.8" />
    </svg>
    """
  end

  @doc "file-check-2.svg"
  def file_check_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v4" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="m3 15 2 2 4-4" />
    </svg>
    """
  end

  @doc "file-check.svg"
  def file_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="m9 15 2 2 4-4" />
    </svg>
    """
  end

  @doc "file-clock.svg"
  def file_clock(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 22h2a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v3" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <circle cx="8" cy="16" r="6" />
    <path d="M9.5 17.5 8 16.25V14" />
    </svg>
    """
  end

  @doc "file-code-2.svg"
  def file_code_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v4" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="m5 12-3 3 3 3" />
    <path d="m9 18 3-3-3-3" />
    </svg>
    """
  end

  @doc "file-code.svg"
  def file_code(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="m10 13-2 2 2 2" />
    <path d="m14 17 2-2-2-2" />
    </svg>
    """
  end

  @doc "file-cog.svg"
  def file_cog(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v2" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <circle cx="6" cy="14" r="3" />
    <path d="M6 10v1" />
    <path d="M6 17v1" />
    <path d="M10 14H9" />
    <path d="M3 14H2" />
    <path d="m9 11-.88.88" />
    <path d="M3.88 16.12 3 17" />
    <path d="m9 17-.88-.88" />
    <path d="M3.88 11.88 3 11" />
    </svg>
    """
  end

  @doc "file-diff.svg"
  def file_diff(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M9 10h6" />
    <path d="M12 13V7" />
    <path d="M9 17h6" />
    </svg>
    """
  end

  @doc "file-digit.svg"
  def file_digit(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v4" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <rect width="4" height="6" x="2" y="12" rx="2" />
    <path d="M10 12h2v6" />
    <path d="M10 18h4" />
    </svg>
    """
  end

  @doc "file-down.svg"
  def file_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M12 18v-6" />
    <path d="m9 15 3 3 3-3" />
    </svg>
    """
  end

  @doc "file-heart.svg"
  def file_heart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v2" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M10.29 10.7a2.43 2.43 0 0 0-2.66-.52c-.29.12-.56.3-.78.53l-.35.34-.35-.34a2.43 2.43 0 0 0-2.65-.53c-.3.12-.56.3-.79.53-.95.94-1 2.53.2 3.74L6.5 18l3.6-3.55c1.2-1.21 1.14-2.8.19-3.74Z" />
    </svg>
    """
  end

  @doc "file-image.svg"
  def file_image(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <circle cx="10" cy="12" r="2" />
    <path d="m20 17-1.296-1.296a2.41 2.41 0 0 0-3.408 0L9 22" />
    </svg>
    """
  end

  @doc "file-input.svg"
  def file_input(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v4" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M2 15h10" />
    <path d="m9 18 3-3-3-3" />
    </svg>
    """
  end

  @doc "file-json-2.svg"
  def file_json_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v4" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M4 12a1 1 0 0 0-1 1v1a1 1 0 0 1-1 1 1 1 0 0 1 1 1v1a1 1 0 0 0 1 1" />
    <path d="M8 18a1 1 0 0 0 1-1v-1a1 1 0 0 1 1-1 1 1 0 0 1-1-1v-1a1 1 0 0 0-1-1" />
    </svg>
    """
  end

  @doc "file-json.svg"
  def file_json(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M10 12a1 1 0 0 0-1 1v1a1 1 0 0 1-1 1 1 1 0 0 1 1 1v1a1 1 0 0 0 1 1" />
    <path d="M14 18a1 1 0 0 0 1-1v-1a1 1 0 0 1 1-1 1 1 0 0 1-1-1v-1a1 1 0 0 0-1-1" />
    </svg>
    """
  end

  @doc "file-key-2.svg"
  def file_key_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v6" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <circle cx="4" cy="16" r="2" />
    <path d="m10 10-4.5 4.5" />
    <path d="m9 11 1 1" />
    </svg>
    """
  end

  @doc "file-key.svg"
  def file_key(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <circle cx="10" cy="16" r="2" />
    <path d="m16 10-4.5 4.5" />
    <path d="m15 11 1 1" />
    </svg>
    """
  end

  @doc "file-line-chart.svg"
  def file_line_chart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="m16 13-3.5 3.5-2-2L8 17" />
    </svg>
    """
  end

  @doc "file-lock-2.svg"
  def file_lock_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v1" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <rect width="8" height="5" x="2" y="13" rx="1" />
    <path d="M8 13v-2a2 2 0 1 0-4 0v2" />
    </svg>
    """
  end

  @doc "file-lock.svg"
  def file_lock(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <rect width="8" height="6" x="8" y="12" rx="1" />
    <path d="M10 12v-2a2 2 0 1 1 4 0v2" />
    </svg>
    """
  end

  @doc "file-minus-2.svg"
  def file_minus_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v4" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M3 15h6" />
    </svg>
    """
  end

  @doc "file-minus.svg"
  def file_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M9 15h6" />
    </svg>
    """
  end

  @doc "file-music.svg"
  def file_music(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="14" cy="16" r="2" />
    <circle cx="6" cy="18" r="2" />
    <path d="M4 12.4V4a2 2 0 0 1 2-2h8.5L20 7.5V20a2 2 0 0 1-2 2h-7.5" />
    <path d="M8 18v-7.7L16 9v7" />
    </svg>
    """
  end

  @doc "file-output.svg"
  def file_output(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M4 7V4a2 2 0 0 1 2-2 2 2 0 0 0-2 2" />
    <path d="M4.063 20.999a2 2 0 0 0 2 1L18 22a2 2 0 0 0 2-2V7l-5-5H6" />
    <path d="m5 11-3 3" />
    <path d="m5 17-3-3h10" />
    </svg>
    """
  end

  @doc "file-pen-line.svg"
  def file_pen_line(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m18 5-3-3H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2" />
    <path d="M8 18h1" />
    <path d="M18.4 9.6a2 2 0 1 1 3 3L17 17l-4 1 1-4Z" />
    </svg>
    """
  end

  @doc "file-pen.svg"
  def file_pen(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22h6a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v10" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M10.4 12.6a2 2 0 1 1 3 3L8 21l-4 1 1-4Z" />
    </svg>
    """
  end

  @doc "file-pie-chart.svg"
  def file_pie_chart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 22h2a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v3" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M4 11.5a6.02 6.02 0 1 0 8.5 8.5" />
    <path d="M14 16c0-3.3-2.7-6-6-6v6Z" />
    </svg>
    """
  end

  @doc "file-plus-2.svg"
  def file_plus_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v4" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M3 15h6" />
    <path d="M6 12v6" />
    </svg>
    """
  end

  @doc "file-plus.svg"
  def file_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M9 15h6" />
    <path d="M12 18v-6" />
    </svg>
    """
  end

  @doc "file-question.svg"
  def file_question(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M10 10.3c.2-.4.5-.8.9-1a2.1 2.1 0 0 1 2.6.4c.3.4.5.8.5 1.3 0 1.3-2 2-2 2" />
    <path d="M12 17h.01" />
    </svg>
    """
  end

  @doc "file-scan.svg"
  def file_scan(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 10V7l-5-5H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h4" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M16 14a2 2 0 0 0-2 2" />
    <path d="M20 14a2 2 0 0 1 2 2" />
    <path d="M20 22a2 2 0 0 0 2-2" />
    <path d="M16 22a2 2 0 0 1-2-2" />
    </svg>
    """
  end

  @doc "file-search-2.svg"
  def file_search_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <circle cx="11.5" cy="14.5" r="2.5" />
    <path d="M13.3 16.3 15 18" />
    </svg>
    """
  end

  @doc "file-search.svg"
  def file_search(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v3" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <circle cx="5" cy="14" r="3" />
    <path d="m9 18-1.5-1.5" />
    </svg>
    """
  end

  @doc "file-sliders.svg"
  def file_sliders(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M8 12h8" />
    <path d="M10 11v2" />
    <path d="M8 17h8" />
    <path d="M14 16v2" />
    </svg>
    """
  end

  @doc "file-spreadsheet.svg"
  def file_spreadsheet(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M8 13h2" />
    <path d="M14 13h2" />
    <path d="M8 17h2" />
    <path d="M14 17h2" />
    </svg>
    """
  end

  @doc "file-stack.svg"
  def file_stack(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 7h-3a2 2 0 0 1-2-2V2" />
    <path d="M21 6v6.5c0 .8-.7 1.5-1.5 1.5h-7c-.8 0-1.5-.7-1.5-1.5v-9c0-.8.7-1.5 1.5-1.5H17Z" />
    <path d="M7 8v8.8c0 .3.2.6.4.8.2.2.5.4.8.4H15" />
    <path d="M3 12v8.8c0 .3.2.6.4.8.2.2.5.4.8.4H11" />
    </svg>
    """
  end

  @doc "file-symlink.svg"
  def file_symlink(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m10 18 3-3-3-3" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M4 11V4a2 2 0 0 1 2-2h9l5 5v13a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2v-3a2 2 0 0 1 2-2h7" />
    </svg>
    """
  end

  @doc "file-terminal.svg"
  def file_terminal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="m8 16 2-2-2-2" />
    <path d="M12 18h4" />
    </svg>
    """
  end

  @doc "file-text.svg"
  def file_text(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M10 9H8" />
    <path d="M16 13H8" />
    <path d="M16 17H8" />
    </svg>
    """
  end

  @doc "file-type-2.svg"
  def file_type_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v4" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M2 13v-1h6v1" />
    <path d="M5 12v6" />
    <path d="M4 18h2" />
    </svg>
    """
  end

  @doc "file-type.svg"
  def file_type(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M9 13v-1h6v1" />
    <path d="M12 12v6" />
    <path d="M11 18h2" />
    </svg>
    """
  end

  @doc "file-up.svg"
  def file_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M12 12v6" />
    <path d="m15 15-3-3-3 3" />
    </svg>
    """
  end

  @doc "file-video-2.svg"
  def file_video_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v4" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <rect width="8" height="6" x="2" y="12" rx="1" />
    <path d="m10 15.5 4 2.5v-6l-4 2.5" />
    </svg>
    """
  end

  @doc "file-video.svg"
  def file_video(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="m10 11 5 3-5 3v-6Z" />
    </svg>
    """
  end

  @doc "file-volume-2.svg"
  def file_volume_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="M8 15h.01" />
    <path d="M11.5 13.5a2.5 2.5 0 0 1 0 3" />
    <path d="M15 12a5 5 0 0 1 0 6" />
    </svg>
    """
  end

  @doc "file-volume.svg"
  def file_volume(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v3" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="m7 10-3 2H2v4h2l3 2Z" />
    <path d="M11 11a5 5 0 0 1 0 6" />
    </svg>
    """
  end

  @doc "file-warning.svg"
  def file_warning(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M12 9v4" />
    <path d="M12 17h.01" />
    </svg>
    """
  end

  @doc "file-x-2.svg"
  def file_x_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h14a2 2 0 0 0 2-2V7l-5-5H6a2 2 0 0 0-2 2v4" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="m8 12.5-5 5" />
    <path d="m3 12.5 5 5" />
    </svg>
    """
  end

  @doc "file-x.svg"
  def file_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    <path d="m14.5 12.5-5 5" />
    <path d="m9.5 12.5 5 5" />
    </svg>
    """
  end

  @doc "file.svg"
  def file(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z" />
    <path d="M14 2v4a2 2 0 0 0 2 2h4" />
    </svg>
    """
  end

  @doc "files.svg"
  def files(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 7h-3a2 2 0 0 1-2-2V2" />
    <path d="M9 18a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h7l4 4v10a2 2 0 0 1-2 2Z" />
    <path d="M3 7.6v12.8A1.6 1.6 0 0 0 4.6 22h9.8" />
    </svg>
    """
  end

  @doc "film.svg"
  def film(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M7 3v18" />
    <path d="M3 7.5h4" />
    <path d="M3 12h18" />
    <path d="M3 16.5h4" />
    <path d="M17 3v18" />
    <path d="M17 7.5h4" />
    <path d="M17 16.5h4" />
    </svg>
    """
  end

  @doc "filter-x.svg"
  def filter_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13.013 3H2l8 9.46V19l4 2v-8.54l.9-1.055" />
    <path d="m22 3-5 5" />
    <path d="m17 3 5 5" />
    </svg>
    """
  end

  @doc "filter.svg"
  def filter(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3" />
    </svg>
    """
  end

  @doc "fingerprint.svg"
  def fingerprint(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 12C2 6.5 6.5 2 12 2a10 10 0 0 1 8 4" />
    <path d="M5 19.5C5.5 18 6 15 6 12c0-.7.12-1.37.34-2" />
    <path d="M17.29 21.02c.12-.6.43-2.3.5-3.02" />
    <path d="M12 10a2 2 0 0 0-2 2c0 1.02-.1 2.51-.26 4" />
    <path d="M8.65 22c.21-.66.45-1.32.57-2" />
    <path d="M14 13.12c0 2.38 0 6.38-1 8.88" />
    <path d="M2 16h.01" />
    <path d="M21.8 16c.2-2 .131-5.354 0-6" />
    <path d="M9 6.8a6 6 0 0 1 9 5.2c0 .47 0 1.17-.02 2" />
    </svg>
    """
  end

  @doc "fire-extinguisher.svg"
  def fire_extinguisher(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 6.5V3a1 1 0 0 0-1-1h-2a1 1 0 0 0-1 1v3.5" />
    <path d="M9 18h8" />
    <path d="M18 3h-3" />
    <path d="M11 3a6 6 0 0 0-6 6v11" />
    <path d="M5 13h4" />
    <path d="M17 10a4 4 0 0 0-8 0v10a2 2 0 0 0 2 2h4a2 2 0 0 0 2-2Z" />
    </svg>
    """
  end

  @doc "fish-off.svg"
  def fish_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 12.47v.03m0-.5v.47m-.475 5.056A6.744 6.744 0 0 1 15 18c-3.56 0-7.56-2.53-8.5-6 .348-1.28 1.114-2.433 2.121-3.38m3.444-2.088A8.802 8.802 0 0 1 15 6c3.56 0 6.06 2.54 7 6-.309 1.14-.786 2.177-1.413 3.058" />
    <path d="M7 10.67C7 8 5.58 5.97 2.73 5.5c-1 1.5-1 5 .23 6.5-1.24 1.5-1.24 5-.23 6.5C5.58 18.03 7 16 7 13.33m7.48-4.372A9.77 9.77 0 0 1 16 6.07m0 11.86a9.77 9.77 0 0 1-1.728-3.618" />
    <path d="m16.01 17.93-.23 1.4A2 2 0 0 1 13.8 21H9.5a5.96 5.96 0 0 0 1.49-3.98M8.53 3h5.27a2 2 0 0 1 1.98 1.67l.23 1.4M2 2l20 20" />
    </svg>
    """
  end

  @doc "fish-symbol.svg"
  def fish_symbol(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 16s9-15 20-4C11 23 2 8 2 8" />
    </svg>
    """
  end

  @doc "fish.svg"
  def fish(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6.5 12c.94-3.46 4.94-6 8.5-6 3.56 0 6.06 2.54 7 6-.94 3.47-3.44 6-7 6s-7.56-2.53-8.5-6Z" />
    <path d="M18 12v.5" />
    <path d="M16 17.93a9.77 9.77 0 0 1 0-11.86" />
    <path d="M7 10.67C7 8 5.58 5.97 2.73 5.5c-1 1.5-1 5 .23 6.5-1.24 1.5-1.24 5-.23 6.5C5.58 18.03 7 16 7 13.33" />
    <path d="M10.46 7.26C10.2 5.88 9.17 4.24 8 3h5.8a2 2 0 0 1 1.98 1.67l.23 1.4" />
    <path d="m16.01 17.93-.23 1.4A2 2 0 0 1 13.8 21H9.5a5.96 5.96 0 0 0 1.49-3.98" />
    </svg>
    """
  end

  @doc "flag-off.svg"
  def flag_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2c3 0 5 2 8 2s4-1 4-1v11" />
    <path d="M4 22V4" />
    <path d="M4 15s1-1 4-1 5 2 8 2" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "flag-triangle-left.svg"
  def flag_triangle_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 22V2L7 7l10 5" />
    </svg>
    """
  end

  @doc "flag-triangle-right.svg"
  def flag_triangle_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 22V2l10 5-10 5" />
    </svg>
    """
  end

  @doc "flag.svg"
  def flag(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 15s1-1 4-1 5 2 8 2 4-1 4-1V3s-1 1-4 1-5-2-8-2-4 1-4 1z" />
    <line x1="4" x2="4" y1="22" y2="15" />
    </svg>
    """
  end

  @doc "flame-kindling.svg"
  def flame_kindling(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 2c1 3 2.5 3.5 3.5 4.5A5 5 0 0 1 17 10a5 5 0 1 1-10 0c0-.3 0-.6.1-.9a2 2 0 1 0 3.3-2C8 4.5 11 2 12 2Z" />
    <path d="m5 22 14-4" />
    <path d="m5 18 14 4" />
    </svg>
    """
  end

  @doc "flame.svg"
  def flame(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8.5 14.5A2.5 2.5 0 0 0 11 12c0-1.38-.5-2-1-3-1.072-2.143-.224-4.054 2-6 .5 2.5 2 4.9 4 6.5 2 1.6 3 3.5 3 5.5a7 7 0 1 1-14 0c0-1.153.433-2.294 1-3a2.5 2.5 0 0 0 2.5 2.5z" />
    </svg>
    """
  end

  @doc "flashlight-off.svg"
  def flashlight_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 16v4a2 2 0 0 1-2 2h-4a2 2 0 0 1-2-2V10c0-2-2-2-2-4" />
    <path d="M7 2h11v4c0 2-2 2-2 4v1" />
    <line x1="11" x2="18" y1="6" y2="6" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "flashlight.svg"
  def flashlight(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 6c0 2-2 2-2 4v10a2 2 0 0 1-2 2h-4a2 2 0 0 1-2-2V10c0-2-2-2-2-4V2h12z" />
    <line x1="6" x2="18" y1="6" y2="6" />
    <line x1="12" x2="12" y1="12" y2="12" />
    </svg>
    """
  end

  @doc "flask-conical-off.svg"
  def flask_conical_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 10 4.72 20.55a1 1 0 0 0 .9 1.45h12.76a1 1 0 0 0 .9-1.45l-1.272-2.542" />
    <path d="M10 2v2.343" />
    <path d="M14 2v6.343" />
    <path d="M8.5 2h7" />
    <path d="M7 16h9" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "flask-conical.svg"
  def flask_conical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 2v7.527a2 2 0 0 1-.211.896L4.72 20.55a1 1 0 0 0 .9 1.45h12.76a1 1 0 0 0 .9-1.45l-5.069-10.127A2 2 0 0 1 14 9.527V2" />
    <path d="M8.5 2h7" />
    <path d="M7 16h10" />
    </svg>
    """
  end

  @doc "flask-round.svg"
  def flask_round(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 2v7.31" />
    <path d="M14 9.3V1.99" />
    <path d="M8.5 2h7" />
    <path d="M14 9.3a6.5 6.5 0 1 1-4 0" />
    <path d="M5.52 16h12.96" />
    </svg>
    """
  end

  @doc "flip-horizontal-2.svg"
  def flip_horizontal_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 7 5 5-5 5V7" />
    <path d="m21 7-5 5 5 5V7" />
    <path d="M12 20v2" />
    <path d="M12 14v2" />
    <path d="M12 8v2" />
    <path d="M12 2v2" />
    </svg>
    """
  end

  @doc "flip-horizontal.svg"
  def flip_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 3H5a2 2 0 0 0-2 2v14c0 1.1.9 2 2 2h3" />
    <path d="M16 3h3a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-3" />
    <path d="M12 20v2" />
    <path d="M12 14v2" />
    <path d="M12 8v2" />
    <path d="M12 2v2" />
    </svg>
    """
  end

  @doc "flip-vertical-2.svg"
  def flip_vertical_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m17 3-5 5-5-5h10" />
    <path d="m17 21-5-5-5 5h10" />
    <path d="M4 12H2" />
    <path d="M10 12H8" />
    <path d="M16 12h-2" />
    <path d="M22 12h-2" />
    </svg>
    """
  end

  @doc "flip-vertical.svg"
  def flip_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 8V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v3" />
    <path d="M21 16v3a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-3" />
    <path d="M4 12H2" />
    <path d="M10 12H8" />
    <path d="M16 12h-2" />
    <path d="M22 12h-2" />
    </svg>
    """
  end

  @doc "flower-2.svg"
  def flower_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 5a3 3 0 1 1 3 3m-3-3a3 3 0 1 0-3 3m3-3v1M9 8a3 3 0 1 0 3 3M9 8h1m5 0a3 3 0 1 1-3 3m3-3h-1m-2 3v-1" />
    <circle cx="12" cy="8" r="2" />
    <path d="M12 10v12" />
    <path d="M12 22c4.2 0 7-1.667 7-5-4.2 0-7 1.667-7 5Z" />
    <path d="M12 22c-4.2 0-7-1.667-7-5 4.2 0 7 1.667 7 5Z" />
    </svg>
    """
  end

  @doc "flower.svg"
  def flower(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 7.5a4.5 4.5 0 1 1 4.5 4.5M12 7.5A4.5 4.5 0 1 0 7.5 12M12 7.5V9m-4.5 3a4.5 4.5 0 1 0 4.5 4.5M7.5 12H9m7.5 0a4.5 4.5 0 1 1-4.5 4.5m4.5-4.5H15m-3 4.5V15" />
    <circle cx="12" cy="12" r="3" />
    <path d="m8 16 1.5-1.5" />
    <path d="M14.5 9.5 16 8" />
    <path d="m8 8 1.5 1.5" />
    <path d="M14.5 14.5 16 16" />
    </svg>
    """
  end

  @doc "focus.svg"
  def focus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="3" />
    <path d="M3 7V5a2 2 0 0 1 2-2h2" />
    <path d="M17 3h2a2 2 0 0 1 2 2v2" />
    <path d="M21 17v2a2 2 0 0 1-2 2h-2" />
    <path d="M7 21H5a2 2 0 0 1-2-2v-2" />
    </svg>
    """
  end

  @doc "fold-horizontal.svg"
  def fold_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 12h6" />
    <path d="M22 12h-6" />
    <path d="M12 2v2" />
    <path d="M12 8v2" />
    <path d="M12 14v2" />
    <path d="M12 20v2" />
    <path d="m19 9-3 3 3 3" />
    <path d="m5 15 3-3-3-3" />
    </svg>
    """
  end

  @doc "fold-vertical.svg"
  def fold_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22v-6" />
    <path d="M12 8V2" />
    <path d="M4 12H2" />
    <path d="M10 12H8" />
    <path d="M16 12h-2" />
    <path d="M22 12h-2" />
    <path d="m15 19-3-3-3 3" />
    <path d="m15 5-3 3-3-3" />
    </svg>
    """
  end

  @doc "folder-archive.svg"
  def folder_archive(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="15" cy="19" r="2" />
    <path d="M20.9 19.8A2 2 0 0 0 22 18V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2h5.1" />
    <path d="M15 11v-1" />
    <path d="M15 17v-2" />
    </svg>
    """
  end

  @doc "folder-check.svg"
  def folder_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z" />
    <path d="m9 13 2 2 4-4" />
    </svg>
    """
  end

  @doc "folder-clock.svg"
  def folder_clock(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="16" cy="16" r="6" />
    <path d="M7 20H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H20a2 2 0 0 1 2 2" />
    <path d="M16 14v2l1 1" />
    </svg>
    """
  end

  @doc "folder-closed.svg"
  def folder_closed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z" />
    <path d="M2 10h20" />
    </svg>
    """
  end

  @doc "folder-cog.svg"
  def folder_cog(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="18" cy="18" r="3" />
    <path d="M10.3 20H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H20a2 2 0 0 1 2 2v3.3" />
    <path d="m21.7 19.4-.9-.3" />
    <path d="m15.2 16.9-.9-.3" />
    <path d="m16.6 21.7.3-.9" />
    <path d="m19.1 15.2.3-.9" />
    <path d="m19.6 21.7-.4-1" />
    <path d="m16.8 15.3-.4-1" />
    <path d="m14.3 19.6 1-.4" />
    <path d="m20.7 16.8 1-.4" />
    </svg>
    """
  end

  @doc "folder-dot.svg"
  def folder_dot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 20h16a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.93a2 2 0 0 1-1.66-.9l-.82-1.2A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13c0 1.1.9 2 2 2Z" />
    <circle cx="12" cy="13" r="1" />
    </svg>
    """
  end

  @doc "folder-down.svg"
  def folder_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z" />
    <path d="M12 10v6" />
    <path d="m15 13-3 3-3-3" />
    </svg>
    """
  end

  @doc "folder-git-2.svg"
  def folder_git_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 20H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H20a2 2 0 0 1 2 2v5" />
    <circle cx="13" cy="12" r="2" />
    <path d="M18 19c-2.8 0-5-2.2-5-5v8" />
    <circle cx="20" cy="19" r="2" />
    </svg>
    """
  end

  @doc "folder-git.svg"
  def folder_git(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="13" r="2" />
    <path d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z" />
    <path d="M14 13h3" />
    <path d="M7 13h3" />
    </svg>
    """
  end

  @doc "folder-heart.svg"
  def folder_heart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 20H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H20a2 2 0 0 1 2 2v1.5" />
    <path d="M13.9 17.45c-1.2-1.2-1.14-2.8-.2-3.73a2.43 2.43 0 0 1 3.44 0l.36.34.34-.34a2.43 2.43 0 0 1 3.45-.01v0c.95.95 1 2.53-.2 3.74L17.5 21Z" />
    </svg>
    """
  end

  @doc "folder-input.svg"
  def folder_input(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 9V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H20a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2v-1" />
    <path d="M2 13h10" />
    <path d="m9 16 3-3-3-3" />
    </svg>
    """
  end

  @doc "folder-kanban.svg"
  def folder_kanban(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 20h16a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.93a2 2 0 0 1-1.66-.9l-.82-1.2A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13c0 1.1.9 2 2 2Z" />
    <path d="M8 10v4" />
    <path d="M12 10v2" />
    <path d="M16 10v6" />
    </svg>
    """
  end

  @doc "folder-key.svg"
  def folder_key(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="16" cy="20" r="2" />
    <path d="M10 20H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H20a2 2 0 0 1 2 2v2" />
    <path d="m22 14-4.5 4.5" />
    <path d="m21 15 1 1" />
    </svg>
    """
  end

  @doc "folder-lock.svg"
  def folder_lock(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="5" x="14" y="17" rx="1" />
    <path d="M10 20H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H20a2 2 0 0 1 2 2v2.5" />
    <path d="M20 17v-2a2 2 0 1 0-4 0v2" />
    </svg>
    """
  end

  @doc "folder-minus.svg"
  def folder_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 13h6" />
    <path d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z" />
    </svg>
    """
  end

  @doc "folder-open-dot.svg"
  def folder_open_dot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m6 14 1.45-2.9A2 2 0 0 1 9.24 10H20a2 2 0 0 1 1.94 2.5l-1.55 6a2 2 0 0 1-1.94 1.5H4a2 2 0 0 1-2-2V5c0-1.1.9-2 2-2h3.93a2 2 0 0 1 1.66.9l.82 1.2a2 2 0 0 0 1.66.9H18a2 2 0 0 1 2 2v2" />
    <circle cx="14" cy="15" r="1" />
    </svg>
    """
  end

  @doc "folder-open.svg"
  def folder_open(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m6 14 1.5-2.9A2 2 0 0 1 9.24 10H20a2 2 0 0 1 1.94 2.5l-1.54 6a2 2 0 0 1-1.95 1.5H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H18a2 2 0 0 1 2 2v2" />
    </svg>
    """
  end

  @doc "folder-output.svg"
  def folder_output(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 7.5V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H20a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-1.5" />
    <path d="M2 13h10" />
    <path d="m5 10-3 3 3 3" />
    </svg>
    """
  end

  @doc "folder-pen.svg"
  def folder_pen(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8.4 10.6a2 2 0 0 1 3 3L6 19l-4 1 1-4Z" />
    <path d="M2 11.5V5a2 2 0 0 1 2-2h3.9c.7 0 1.3.3 1.7.9l.8 1.2c.4.6 1 .9 1.7.9H20a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-9.5" />
    </svg>
    """
  end

  @doc "folder-plus.svg"
  def folder_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 10v6" />
    <path d="M9 13h6" />
    <path d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z" />
    </svg>
    """
  end

  @doc "folder-root.svg"
  def folder_root(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 20h16a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.93a2 2 0 0 1-1.66-.9l-.82-1.2A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13c0 1.1.9 2 2 2Z" />
    <circle cx="12" cy="13" r="2" />
    <path d="M12 15v5" />
    </svg>
    """
  end

  @doc "folder-search-2.svg"
  def folder_search_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="11.5" cy="12.5" r="2.5" />
    <path d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z" />
    <path d="M13.3 14.3 15 16" />
    </svg>
    """
  end

  @doc "folder-search.svg"
  def folder_search(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="17" cy="17" r="3" />
    <path d="M10.7 20H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H20a2 2 0 0 1 2 2v4.1" />
    <path d="m21 21-1.5-1.5" />
    </svg>
    """
  end

  @doc "folder-symlink.svg"
  def folder_symlink(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 9V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H20a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2v-3a2 2 0 0 1 2-2h7" />
    <path d="m8 16 3-3-3-3" />
    </svg>
    """
  end

  @doc "folder-sync.svg"
  def folder_sync(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 20H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h3.9a2 2 0 0 1 1.69.9l.81 1.2a2 2 0 0 0 1.67.9H20a2 2 0 0 1 2 2v.5" />
    <path d="M12 10v4h4" />
    <path d="m12 14 1.535-1.605a5 5 0 0 1 8 1.5" />
    <path d="M22 22v-4h-4" />
    <path d="m22 18-1.535 1.605a5 5 0 0 1-8-1.5" />
    </svg>
    """
  end

  @doc "folder-tree.svg"
  def folder_tree(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 10a1 1 0 0 0 1-1V6a1 1 0 0 0-1-1h-2.5a1 1 0 0 1-.8-.4l-.9-1.2A1 1 0 0 0 15 3h-2a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1Z" />
    <path d="M20 21a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1h-2.9a1 1 0 0 1-.88-.55l-.42-.85a1 1 0 0 0-.92-.6H13a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1Z" />
    <path d="M3 5a2 2 0 0 0 2 2h3" />
    <path d="M3 3v13a2 2 0 0 0 2 2h3" />
    </svg>
    """
  end

  @doc "folder-up.svg"
  def folder_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z" />
    <path d="M12 10v6" />
    <path d="m9 13 3-3 3 3" />
    </svg>
    """
  end

  @doc "folder-x.svg"
  def folder_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z" />
    <path d="m9.5 10.5 5 5" />
    <path d="m14.5 10.5-5 5" />
    </svg>
    """
  end

  @doc "folder.svg"
  def folder(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z" />
    </svg>
    """
  end

  @doc "folders.svg"
  def folders(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 17a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2h-3.9a2 2 0 0 1-1.69-.9l-.81-1.2a2 2 0 0 0-1.67-.9H8a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2Z" />
    <path d="M2 8v11a2 2 0 0 0 2 2h14" />
    </svg>
    """
  end

  @doc "footprints.svg"
  def footprints(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 16v-2.38C4 11.5 2.97 10.5 3 8c.03-2.72 1.49-6 4.5-6C9.37 2 10 3.8 10 5.5c0 3.11-2 5.66-2 8.68V16a2 2 0 1 1-4 0Z" />
    <path d="M20 20v-2.38c0-2.12 1.03-3.12 1-5.62-.03-2.72-1.49-6-4.5-6C14.63 6 14 7.8 14 9.5c0 3.11 2 5.66 2 8.68V20a2 2 0 1 0 4 0Z" />
    <path d="M16 17h4" />
    <path d="M4 13h4" />
    </svg>
    """
  end

  @doc "forklift.svg"
  def forklift(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 12H5a2 2 0 0 0-2 2v5" />
    <circle cx="13" cy="19" r="2" />
    <circle cx="5" cy="19" r="2" />
    <path d="M8 19h3m5-17v17h6M6 12V7c0-1.1.9-2 2-2h3l5 5" />
    </svg>
    """
  end

  @doc "form-input.svg"
  def form_input(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="12" x="2" y="6" rx="2" />
    <path d="M12 12h.01" />
    <path d="M17 12h.01" />
    <path d="M7 12h.01" />
    </svg>
    """
  end

  @doc "forward.svg"
  def forward(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="15 17 20 12 15 7" />
    <path d="M4 18v-2a4 4 0 0 1 4-4h12" />
    </svg>
    """
  end

  @doc "frame.svg"
  def frame(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="22" x2="2" y1="6" y2="6" />
    <line x1="22" x2="2" y1="18" y2="18" />
    <line x1="6" x2="6" y1="2" y2="22" />
    <line x1="18" x2="18" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "framer.svg"
  def framer(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 16V9h14V2H5l14 14h-7m-7 0 7 7v-7m-7 0h7" />
    </svg>
    """
  end

  @doc "frown.svg"
  def frown(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M16 16s-1.5-2-4-2-4 2-4 2" />
    <line x1="9" x2="9.01" y1="9" y2="9" />
    <line x1="15" x2="15.01" y1="9" y2="9" />
    </svg>
    """
  end

  @doc "fuel.svg"
  def fuel(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="3" x2="15" y1="22" y2="22" />
    <line x1="4" x2="14" y1="9" y2="9" />
    <path d="M14 22V4a2 2 0 0 0-2-2H6a2 2 0 0 0-2 2v18" />
    <path d="M14 13h2a2 2 0 0 1 2 2v2a2 2 0 0 0 2 2h0a2 2 0 0 0 2-2V9.83a2 2 0 0 0-.59-1.42L18 5" />
    </svg>
    """
  end

  @doc "fullscreen.svg"
  def fullscreen(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 7V5a2 2 0 0 1 2-2h2" />
    <path d="M17 3h2a2 2 0 0 1 2 2v2" />
    <path d="M21 17v2a2 2 0 0 1-2 2h-2" />
    <path d="M7 21H5a2 2 0 0 1-2-2v-2" />
    <rect width="10" height="8" x="7" y="8" rx="1" />
    </svg>
    """
  end

  @doc "function-square.svg"
  def function_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" ry="2" />
    <path d="M9 17c2 0 2.8-1 2.8-2.8V10c0-2 1-3.3 3.2-3" />
    <path d="M9 11.2h5.7" />
    </svg>
    """
  end

  @doc "gallery-horizontal-end.svg"
  def gallery_horizontal_end(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 7v10" />
    <path d="M6 5v14" />
    <rect width="12" height="18" x="10" y="3" rx="2" />
    </svg>
    """
  end

  @doc "gallery-horizontal.svg"
  def gallery_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 3v18" />
    <rect width="12" height="18" x="6" y="3" rx="2" />
    <path d="M22 3v18" />
    </svg>
    """
  end

  @doc "gallery-thumbnails.svg"
  def gallery_thumbnails(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="14" x="3" y="3" rx="2" />
    <path d="M4 21h1" />
    <path d="M9 21h1" />
    <path d="M14 21h1" />
    <path d="M19 21h1" />
    </svg>
    """
  end

  @doc "gallery-vertical-end.svg"
  def gallery_vertical_end(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 2h10" />
    <path d="M5 6h14" />
    <rect width="18" height="12" x="3" y="10" rx="2" />
    </svg>
    """
  end

  @doc "gallery-vertical.svg"
  def gallery_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 2h18" />
    <rect width="18" height="12" x="3" y="6" rx="2" />
    <path d="M3 22h18" />
    </svg>
    """
  end

  @doc "gamepad-2.svg"
  def gamepad_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="6" x2="10" y1="11" y2="11" />
    <line x1="8" x2="8" y1="9" y2="13" />
    <line x1="15" x2="15.01" y1="12" y2="12" />
    <line x1="18" x2="18.01" y1="10" y2="10" />
    <path d="M17.32 5H6.68a4 4 0 0 0-3.978 3.59c-.006.052-.01.101-.017.152C2.604 9.416 2 14.456 2 16a3 3 0 0 0 3 3c1 0 1.5-.5 2-1l1.414-1.414A2 2 0 0 1 9.828 16h4.344a2 2 0 0 1 1.414.586L17 18c.5.5 1 1 2 1a3 3 0 0 0 3-3c0-1.545-.604-6.584-.685-7.258-.007-.05-.011-.1-.017-.151A4 4 0 0 0 17.32 5z" />
    </svg>
    """
  end

  @doc "gamepad.svg"
  def gamepad(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="6" x2="10" y1="12" y2="12" />
    <line x1="8" x2="8" y1="10" y2="14" />
    <line x1="15" x2="15.01" y1="13" y2="13" />
    <line x1="18" x2="18.01" y1="11" y2="11" />
    <rect width="20" height="12" x="2" y="6" rx="2" />
    </svg>
    """
  end

  @doc "gantt-chart-square.svg"
  def gantt_chart_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M9 8h7" />
    <path d="M8 12h6" />
    <path d="M11 16h5" />
    </svg>
    """
  end

  @doc "gantt-chart.svg"
  def gantt_chart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 6h10" />
    <path d="M6 12h9" />
    <path d="M11 18h7" />
    </svg>
    """
  end

  @doc "gauge-circle.svg"
  def gauge_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15.6 2.7a10 10 0 1 0 5.7 5.7" />
    <circle cx="12" cy="12" r="2" />
    <path d="M13.4 10.6 19 5" />
    </svg>
    """
  end

  @doc "gauge.svg"
  def gauge(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m12 14 4-4" />
    <path d="M3.34 19a10 10 0 1 1 17.32 0" />
    </svg>
    """
  end

  @doc "gavel.svg"
  def gavel(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m14.5 12.5-8 8a2.119 2.119 0 1 1-3-3l8-8" />
    <path d="m16 16 6-6" />
    <path d="m8 8 6-6" />
    <path d="m9 7 8 8" />
    <path d="m21 11-8-8" />
    </svg>
    """
  end

  @doc "gem.svg"
  def gem(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 3h12l4 6-10 13L2 9Z" />
    <path d="M11 3 8 9l4 13 4-13-3-6" />
    <path d="M2 9h20" />
    </svg>
    """
  end

  @doc "ghost.svg"
  def ghost(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 10h.01" />
    <path d="M15 10h.01" />
    <path d="M12 2a8 8 0 0 0-8 8v12l3-3 2.5 2.5L12 19l2.5 2.5L17 19l3 3V10a8 8 0 0 0-8-8z" />
    </svg>
    """
  end

  @doc "gift.svg"
  def gift(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect x="3" y="8" width="18" height="4" rx="1" />
    <path d="M12 8v13" />
    <path d="M19 12v7a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2v-7" />
    <path d="M7.5 8a2.5 2.5 0 0 1 0-5A4.8 8 0 0 1 12 8a4.8 8 0 0 1 4.5-5 2.5 2.5 0 0 1 0 5" />
    </svg>
    """
  end

  @doc "git-branch-plus.svg"
  def git_branch_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 3v12" />
    <path d="M18 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
    <path d="M6 21a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
    <path d="M15 6a9 9 0 0 0-9 9" />
    <path d="M18 15v6" />
    <path d="M21 18h-6" />
    </svg>
    """
  end

  @doc "git-branch.svg"
  def git_branch(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="6" x2="6" y1="3" y2="15" />
    <circle cx="18" cy="6" r="3" />
    <circle cx="6" cy="18" r="3" />
    <path d="M18 9a9 9 0 0 1-9 9" />
    </svg>
    """
  end

  @doc "git-commit-horizontal.svg"
  def git_commit_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="3" />
    <line x1="3" x2="9" y1="12" y2="12" />
    <line x1="15" x2="21" y1="12" y2="12" />
    </svg>
    """
  end

  @doc "git-commit-vertical.svg"
  def git_commit_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 3v6" />
    <circle cx="12" cy="12" r="3" />
    <path d="M12 15v6" />
    </svg>
    """
  end

  @doc "git-compare-arrows.svg"
  def git_compare_arrows(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="5" cy="6" r="3" />
    <path d="M12 6h5a2 2 0 0 1 2 2v7" />
    <path d="m15 9-3-3 3-3" />
    <circle cx="19" cy="18" r="3" />
    <path d="M12 18H7a2 2 0 0 1-2-2V9" />
    <path d="m9 15 3 3-3 3" />
    </svg>
    """
  end

  @doc "git-compare.svg"
  def git_compare(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="18" cy="18" r="3" />
    <circle cx="6" cy="6" r="3" />
    <path d="M13 6h3a2 2 0 0 1 2 2v7" />
    <path d="M11 18H8a2 2 0 0 1-2-2V9" />
    </svg>
    """
  end

  @doc "git-fork.svg"
  def git_fork(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="18" r="3" />
    <circle cx="6" cy="6" r="3" />
    <circle cx="18" cy="6" r="3" />
    <path d="M18 9v2c0 .6-.4 1-1 1H7c-.6 0-1-.4-1-1V9" />
    <path d="M12 12v3" />
    </svg>
    """
  end

  @doc "git-graph.svg"
  def git_graph(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="5" cy="6" r="3" />
    <path d="M5 9v6" />
    <circle cx="5" cy="18" r="3" />
    <path d="M12 3v18" />
    <circle cx="19" cy="6" r="3" />
    <path d="M16 15.7A9 9 0 0 0 19 9" />
    </svg>
    """
  end

  @doc "git-merge.svg"
  def git_merge(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="18" cy="18" r="3" />
    <circle cx="6" cy="6" r="3" />
    <path d="M6 21V9a9 9 0 0 0 9 9" />
    </svg>
    """
  end

  @doc "git-pull-request-arrow.svg"
  def git_pull_request_arrow(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="5" cy="6" r="3" />
    <path d="M5 9v12" />
    <circle cx="19" cy="18" r="3" />
    <path d="m15 9-3-3 3-3" />
    <path d="M12 6h5a2 2 0 0 1 2 2v7" />
    </svg>
    """
  end

  @doc "git-pull-request-closed.svg"
  def git_pull_request_closed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="6" cy="6" r="3" />
    <path d="M6 9v12" />
    <path d="m21 3-6 6" />
    <path d="m21 9-6-6" />
    <path d="M18 11.5V15" />
    <circle cx="18" cy="18" r="3" />
    </svg>
    """
  end

  @doc "git-pull-request-create-arrow.svg"
  def git_pull_request_create_arrow(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="5" cy="6" r="3" />
    <path d="M5 9v12" />
    <path d="m15 9-3-3 3-3" />
    <path d="M12 6h5a2 2 0 0 1 2 2v3" />
    <path d="M19 15v6" />
    <path d="M22 18h-6" />
    </svg>
    """
  end

  @doc "git-pull-request-create.svg"
  def git_pull_request_create(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="6" cy="6" r="3" />
    <path d="M6 9v12" />
    <path d="M13 6h3a2 2 0 0 1 2 2v3" />
    <path d="M18 15v6" />
    <path d="M21 18h-6" />
    </svg>
    """
  end

  @doc "git-pull-request-draft.svg"
  def git_pull_request_draft(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="18" cy="18" r="3" />
    <circle cx="6" cy="6" r="3" />
    <path d="M18 6V5" />
    <path d="M18 11v-1" />
    <line x1="6" x2="6" y1="9" y2="21" />
    </svg>
    """
  end

  @doc "git-pull-request.svg"
  def git_pull_request(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="18" cy="18" r="3" />
    <circle cx="6" cy="6" r="3" />
    <path d="M13 6h3a2 2 0 0 1 2 2v7" />
    <line x1="6" x2="6" y1="9" y2="21" />
    </svg>
    """
  end

  @doc "github.svg"
  def github(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 22v-4a4.8 4.8 0 0 0-1-3.5c3 0 6-2 6-5.5.08-1.25-.27-2.48-1-3.5.28-1.15.28-2.35 0-3.5 0 0-1 0-3 1.5-2.64-.5-5.36-.5-8 0C6 2 5 2 5 2c-.3 1.15-.3 2.35 0 3.5A5.403 5.403 0 0 0 4 9c0 3.5 3 5.5 6 5.5-.39.49-.68 1.05-.85 1.65-.17.6-.22 1.23-.15 1.85v4" />
    <path d="M9 18c-4.51 2-5-2-7-2" />
    </svg>
    """
  end

  @doc "gitlab.svg"
  def gitlab(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m22 13.29-3.33-10a.42.42 0 0 0-.14-.18.38.38 0 0 0-.22-.11.39.39 0 0 0-.23.07.42.42 0 0 0-.14.18l-2.26 6.67H8.32L6.1 3.26a.42.42 0 0 0-.1-.18.38.38 0 0 0-.26-.08.39.39 0 0 0-.23.07.42.42 0 0 0-.14.18L2 13.29a.74.74 0 0 0 .27.83L12 21l9.69-6.88a.71.71 0 0 0 .31-.83Z" />
    </svg>
    """
  end

  @doc "glass-water.svg"
  def glass_water(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15.2 22H8.8a2 2 0 0 1-2-1.79L5 3h14l-1.81 17.21A2 2 0 0 1 15.2 22Z" />
    <path d="M6 12a5 5 0 0 1 6 0 5 5 0 0 0 6 0" />
    </svg>
    """
  end

  @doc "glasses.svg"
  def glasses(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="6" cy="15" r="4" />
    <circle cx="18" cy="15" r="4" />
    <path d="M14 15a2 2 0 0 0-2-2 2 2 0 0 0-2 2" />
    <path d="M2.5 13 5 7c.7-1.3 1.4-2 3-2" />
    <path d="M21.5 13 19 7c-.7-1.3-1.5-2-3-2" />
    </svg>
    """
  end

  @doc "globe-2.svg"
  def globe_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21.54 15H17a2 2 0 0 0-2 2v4.54" />
    <path d="M7 3.34V5a3 3 0 0 0 3 3v0a2 2 0 0 1 2 2v0c0 1.1.9 2 2 2v0a2 2 0 0 0 2-2v0c0-1.1.9-2 2-2h3.17" />
    <path d="M11 21.95V18a2 2 0 0 0-2-2v0a2 2 0 0 1-2-2v-1a2 2 0 0 0-2-2H2.05" />
    <circle cx="12" cy="12" r="10" />
    </svg>
    """
  end

  @doc "globe.svg"
  def globe(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M12 2a14.5 14.5 0 0 0 0 20 14.5 14.5 0 0 0 0-20" />
    <path d="M2 12h20" />
    </svg>
    """
  end

  @doc "goal.svg"
  def goal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 13V2l8 4-8 4" />
    <path d="M20.55 10.23A9 9 0 1 1 8 4.94" />
    <path d="M8 10a5 5 0 1 0 8.9 2.02" />
    </svg>
    """
  end

  @doc "grab.svg"
  def grab(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 11.5V9a2 2 0 0 0-2-2v0a2 2 0 0 0-2 2v1.4" />
    <path d="M14 10V8a2 2 0 0 0-2-2v0a2 2 0 0 0-2 2v2" />
    <path d="M10 9.9V9a2 2 0 0 0-2-2v0a2 2 0 0 0-2 2v5" />
    <path d="M6 14v0a2 2 0 0 0-2-2v0a2 2 0 0 0-2 2v0" />
    <path d="M18 11v0a2 2 0 1 1 4 0v3a8 8 0 0 1-8 8h-4a8 8 0 0 1-8-8 2 2 0 1 1 4 0" />
    </svg>
    """
  end

  @doc "graduation-cap.svg"
  def graduation_cap(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21.42 10.922a1 1 0 0 0-.019-1.838L12.83 5.18a2 2 0 0 0-1.66 0L2.6 9.08a1 1 0 0 0 0 1.832l8.57 3.908a2 2 0 0 0 1.66 0z" />
    <path d="M22 10v6" />
    <path d="M6 12.5V16a6 3 0 0 0 12 0v-3.5" />
    </svg>
    """
  end

  @doc "grape.svg"
  def grape(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 5V2l-5.89 5.89" />
    <circle cx="16.6" cy="15.89" r="3" />
    <circle cx="8.11" cy="7.4" r="3" />
    <circle cx="12.35" cy="11.65" r="3" />
    <circle cx="13.91" cy="5.85" r="3" />
    <circle cx="18.15" cy="10.09" r="3" />
    <circle cx="6.56" cy="13.2" r="3" />
    <circle cx="10.8" cy="17.44" r="3" />
    <circle cx="5" cy="19" r="3" />
    </svg>
    """
  end

  @doc "grid-2x2.svg"
  def grid_2x2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M3 12h18" />
    <path d="M12 3v18" />
    </svg>
    """
  end

  @doc "grid-3x3.svg"
  def grid_3x3(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M3 9h18" />
    <path d="M3 15h18" />
    <path d="M9 3v18" />
    <path d="M15 3v18" />
    </svg>
    """
  end

  @doc "grip-horizontal.svg"
  def grip_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="9" r="1" />
    <circle cx="19" cy="9" r="1" />
    <circle cx="5" cy="9" r="1" />
    <circle cx="12" cy="15" r="1" />
    <circle cx="19" cy="15" r="1" />
    <circle cx="5" cy="15" r="1" />
    </svg>
    """
  end

  @doc "grip-vertical.svg"
  def grip_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="9" cy="12" r="1" />
    <circle cx="9" cy="5" r="1" />
    <circle cx="9" cy="19" r="1" />
    <circle cx="15" cy="12" r="1" />
    <circle cx="15" cy="5" r="1" />
    <circle cx="15" cy="19" r="1" />
    </svg>
    """
  end

  @doc "grip.svg"
  def grip(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="5" r="1" />
    <circle cx="19" cy="5" r="1" />
    <circle cx="5" cy="5" r="1" />
    <circle cx="12" cy="12" r="1" />
    <circle cx="19" cy="12" r="1" />
    <circle cx="5" cy="12" r="1" />
    <circle cx="12" cy="19" r="1" />
    <circle cx="19" cy="19" r="1" />
    <circle cx="5" cy="19" r="1" />
    </svg>
    """
  end

  @doc "group.svg"
  def group(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 7V5c0-1.1.9-2 2-2h2" />
    <path d="M17 3h2c1.1 0 2 .9 2 2v2" />
    <path d="M21 17v2c0 1.1-.9 2-2 2h-2" />
    <path d="M7 21H5c-1.1 0-2-.9-2-2v-2" />
    <rect width="7" height="5" x="7" y="7" rx="1" />
    <rect width="7" height="5" x="10" y="12" rx="1" />
    </svg>
    """
  end

  @doc "guitar.svg"
  def guitar(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m20 7 1.7-1.7a1 1 0 0 0 0-1.4l-1.6-1.6a1 1 0 0 0-1.4 0L17 4v3Z" />
    <path d="m17 7-5.1 5.1" />
    <circle cx="11.5" cy="12.5" r=".5" fill="currentColor" />
    <path d="M6 12a2 2 0 0 0 1.8-1.2l.4-.9C8.7 8.8 9.8 8 11 8c2.8 0 5 2.2 5 5 0 1.2-.8 2.3-1.9 2.8l-.9.4A2 2 0 0 0 12 18a4 4 0 0 1-4 4c-3.3 0-6-2.7-6-6a4 4 0 0 1 4-4" />
    <path d="m6 16 2 2" />
    </svg>
    """
  end

  @doc "hammer.svg"
  def hammer(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m15 12-8.5 8.5c-.83.83-2.17.83-3 0 0 0 0 0 0 0a2.12 2.12 0 0 1 0-3L12 9" />
    <path d="M17.64 15 22 10.64" />
    <path d="m20.91 11.7-1.25-1.25c-.6-.6-.93-1.4-.93-2.25v-.86L16.01 4.6a5.56 5.56 0 0 0-3.94-1.64H9l.92.82A6.18 6.18 0 0 1 12 8.4v1.56l2 2h2.47l2.26 1.91" />
    </svg>
    """
  end

  @doc "hand-coins.svg"
  def hand_coins(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 15h2a2 2 0 1 0 0-4h-3c-.6 0-1.1.2-1.4.6L3 17" />
    <path d="m7 21 1.6-1.4c.3-.4.8-.6 1.4-.6h4c1.1 0 2.1-.4 2.8-1.2l4.6-4.4a2 2 0 0 0-2.75-2.91l-4.2 3.9" />
    <path d="m2 16 6 6" />
    <circle cx="16" cy="9" r="2.9" />
    <circle cx="6" cy="5" r="3" />
    </svg>
    """
  end

  @doc "hand-heart.svg"
  def hand_heart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 14h2a2 2 0 1 0 0-4h-3c-.6 0-1.1.2-1.4.6L3 16" />
    <path d="m7 20 1.6-1.4c.3-.4.8-.6 1.4-.6h4c1.1 0 2.1-.4 2.8-1.2l4.6-4.4a2 2 0 0 0-2.75-2.91l-4.2 3.9" />
    <path d="m2 15 6 6" />
    <path d="M19.5 8.5c.7-.7 1.5-1.6 1.5-2.7A2.73 2.73 0 0 0 16 4a2.78 2.78 0 0 0-5 1.8c0 1.2.8 2 1.5 2.8L16 12Z" />
    </svg>
    """
  end

  @doc "hand-helping.svg"
  def hand_helping(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 12h2a2 2 0 1 0 0-4h-3c-.6 0-1.1.2-1.4.6L3 14" />
    <path d="m7 18 1.6-1.4c.3-.4.8-.6 1.4-.6h4c1.1 0 2.1-.4 2.8-1.2l4.6-4.4a2 2 0 0 0-2.75-2.91l-4.2 3.9" />
    <path d="m2 13 6 6" />
    </svg>
    """
  end

  @doc "hand-metal.svg"
  def hand_metal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 12.5V10a2 2 0 0 0-2-2v0a2 2 0 0 0-2 2v1.4" />
    <path d="M14 11V9a2 2 0 1 0-4 0v2" />
    <path d="M10 10.5V5a2 2 0 1 0-4 0v9" />
    <path d="m7 15-1.76-1.76a2 2 0 0 0-2.83 2.82l3.6 3.6C7.5 21.14 9.2 22 12 22h2a8 8 0 0 0 8-8V7a2 2 0 1 0-4 0v5" />
    </svg>
    """
  end

  @doc "hand-platter.svg"
  def hand_platter(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 3V2" />
    <path d="M5 10a7.1 7.1 0 0 1 14 0" />
    <path d="M4 10h16" />
    <path d="M2 14h12a2 2 0 1 1 0 4h-2" />
    <path d="m15.4 17.4 3.2-2.8a2 2 0 0 1 2.8 2.9l-3.6 3.3c-.7.8-1.7 1.2-2.8 1.2h-4c-1.1 0-2.1-.4-2.8-1.2L5 18" />
    <path d="M5 14v7H2" />
    </svg>
    """
  end

  @doc "hand.svg"
  def hand(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 11V6a2 2 0 0 0-2-2v0a2 2 0 0 0-2 2v0" />
    <path d="M14 10V4a2 2 0 0 0-2-2v0a2 2 0 0 0-2 2v2" />
    <path d="M10 10.5V6a2 2 0 0 0-2-2v0a2 2 0 0 0-2 2v8" />
    <path d="M18 8a2 2 0 1 1 4 0v6a8 8 0 0 1-8 8h-2c-2.8 0-4.5-.86-5.99-2.34l-3.6-3.6a2 2 0 0 1 2.83-2.82L7 15" />
    </svg>
    """
  end

  @doc "handshake.svg"
  def handshake(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m11 17 2 2a1 1 0 1 0 3-3" />
    <path d="m14 14 2.5 2.5a1 1 0 1 0 3-3l-3.88-3.88a3 3 0 0 0-4.24 0l-.88.88a1 1 0 1 1-3-3l2.81-2.81a5.79 5.79 0 0 1 7.06-.87l.47.28a2 2 0 0 0 1.42.25L21 4" />
    <path d="m21 3 1 11h-2" />
    <path d="M3 3 2 14l6.5 6.5a1 1 0 1 0 3-3" />
    <path d="M3 4h8" />
    </svg>
    """
  end

  @doc "hard-drive-download.svg"
  def hard_drive_download(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 2v8" />
    <path d="m16 6-4 4-4-4" />
    <rect width="20" height="8" x="2" y="14" rx="2" />
    <path d="M6 18h.01" />
    <path d="M10 18h.01" />
    </svg>
    """
  end

  @doc "hard-drive-upload.svg"
  def hard_drive_upload(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m16 6-4-4-4 4" />
    <path d="M12 2v8" />
    <rect width="20" height="8" x="2" y="14" rx="2" />
    <path d="M6 18h.01" />
    <path d="M10 18h.01" />
    </svg>
    """
  end

  @doc "hard-drive.svg"
  def hard_drive(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="22" x2="2" y1="12" y2="12" />
    <path d="M5.45 5.11 2 12v6a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-6l-3.45-6.89A2 2 0 0 0 16.76 4H7.24a2 2 0 0 0-1.79 1.11z" />
    <line x1="6" x2="6.01" y1="16" y2="16" />
    <line x1="10" x2="10.01" y1="16" y2="16" />
    </svg>
    """
  end

  @doc "hard-hat.svg"
  def hard_hat(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 18a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1v-2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v2z" />
    <path d="M10 10V5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v5" />
    <path d="M4 15v-3a6 6 0 0 1 6-6h0" />
    <path d="M14 6h0a6 6 0 0 1 6 6v3" />
    </svg>
    """
  end

  @doc "hash.svg"
  def hash(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="4" x2="20" y1="9" y2="9" />
    <line x1="4" x2="20" y1="15" y2="15" />
    <line x1="10" x2="8" y1="3" y2="21" />
    <line x1="16" x2="14" y1="3" y2="21" />
    </svg>
    """
  end

  @doc "haze.svg"
  def haze(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m5.2 6.2 1.4 1.4" />
    <path d="M2 13h2" />
    <path d="M20 13h2" />
    <path d="m17.4 7.6 1.4-1.4" />
    <path d="M22 17H2" />
    <path d="M22 21H2" />
    <path d="M16 13a4 4 0 0 0-8 0" />
    <path d="M12 5V2.5" />
    </svg>
    """
  end

  @doc "hdmi-port.svg"
  def hdmi_port(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 9a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v4a1 1 0 0 0 1 1h1l2 2h12l2-2h1a1 1 0 0 0 1-1Z" />
    <path d="M7.5 12h9" />
    </svg>
    """
  end

  @doc "heading-1.svg"
  def heading_1(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 12h8" />
    <path d="M4 18V6" />
    <path d="M12 18V6" />
    <path d="m17 12 3-2v8" />
    </svg>
    """
  end

  @doc "heading-2.svg"
  def heading_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 12h8" />
    <path d="M4 18V6" />
    <path d="M12 18V6" />
    <path d="M21 18h-4c0-4 4-3 4-6 0-1.5-2-2.5-4-1" />
    </svg>
    """
  end

  @doc "heading-3.svg"
  def heading_3(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 12h8" />
    <path d="M4 18V6" />
    <path d="M12 18V6" />
    <path d="M17.5 10.5c1.7-1 3.5 0 3.5 1.5a2 2 0 0 1-2 2" />
    <path d="M17 17.5c2 1.5 4 .3 4-1.5a2 2 0 0 0-2-2" />
    </svg>
    """
  end

  @doc "heading-4.svg"
  def heading_4(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 12h8" />
    <path d="M4 18V6" />
    <path d="M12 18V6" />
    <path d="M17 10v4h4" />
    <path d="M21 10v8" />
    </svg>
    """
  end

  @doc "heading-5.svg"
  def heading_5(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 12h8" />
    <path d="M4 18V6" />
    <path d="M12 18V6" />
    <path d="M17 13v-3h4" />
    <path d="M17 17.7c.4.2.8.3 1.3.3 1.5 0 2.7-1.1 2.7-2.5S19.8 13 18.3 13H17" />
    </svg>
    """
  end

  @doc "heading-6.svg"
  def heading_6(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 12h8" />
    <path d="M4 18V6" />
    <path d="M12 18V6" />
    <circle cx="19" cy="16" r="2" />
    <path d="M20 10c-2 2-3 3.5-3 6" />
    </svg>
    """
  end

  @doc "heading.svg"
  def heading(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 12h12" />
    <path d="M6 20V4" />
    <path d="M18 20V4" />
    </svg>
    """
  end

  @doc "headphones.svg"
  def headphones(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 14h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-7a9 9 0 0 1 18 0v7a2 2 0 0 1-2 2h-1a2 2 0 0 1-2-2v-3a2 2 0 0 1 2-2h3" />
    </svg>
    """
  end

  @doc "headset.svg"
  def headset(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 11h3a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-5Zm0 0a9 9 0 1 1 18 0m0 0v5a2 2 0 0 1-2 2h-1a2 2 0 0 1-2-2v-3a2 2 0 0 1 2-2h3Z" />
    <path d="M21 16v2a4 4 0 0 1-4 4h-5" />
    </svg>
    """
  end

  @doc "heart-crack.svg"
  def heart_crack(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19 14c1.49-1.46 3-3.21 3-5.5A5.5 5.5 0 0 0 16.5 3c-1.76 0-3 .5-4.5 2-1.5-1.5-2.74-2-4.5-2A5.5 5.5 0 0 0 2 8.5c0 2.3 1.5 4.05 3 5.5l7 7Z" />
    <path d="m12 13-1-1 2-2-3-3 2-2" />
    </svg>
    """
  end

  @doc "heart-handshake.svg"
  def heart_handshake(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19 14c1.49-1.46 3-3.21 3-5.5A5.5 5.5 0 0 0 16.5 3c-1.76 0-3 .5-4.5 2-1.5-1.5-2.74-2-4.5-2A5.5 5.5 0 0 0 2 8.5c0 2.3 1.5 4.05 3 5.5l7 7Z" />
    <path d="M12 5 9.04 7.96a2.17 2.17 0 0 0 0 3.08v0c.82.82 2.13.85 3 .07l2.07-1.9a2.82 2.82 0 0 1 3.79 0l2.96 2.66" />
    <path d="m18 15-2-2" />
    <path d="m15 18-2-2" />
    </svg>
    """
  end

  @doc "heart-off.svg"
  def heart_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="2" y1="2" x2="22" y2="22" />
    <path d="M16.5 16.5 12 21l-7-7c-1.5-1.45-3-3.2-3-5.5a5.5 5.5 0 0 1 2.14-4.35" />
    <path d="M8.76 3.1c1.15.22 2.13.78 3.24 1.9 1.5-1.5 2.74-2 4.5-2A5.5 5.5 0 0 1 22 8.5c0 2.12-1.3 3.78-2.67 5.17" />
    </svg>
    """
  end

  @doc "heart-pulse.svg"
  def heart_pulse(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19 14c1.49-1.46 3-3.21 3-5.5A5.5 5.5 0 0 0 16.5 3c-1.76 0-3 .5-4.5 2-1.5-1.5-2.74-2-4.5-2A5.5 5.5 0 0 0 2 8.5c0 2.3 1.5 4.05 3 5.5l7 7Z" />
    <path d="M3.22 12H9.5l.5-1 2 4.5 2-7 1.5 3.5h5.27" />
    </svg>
    """
  end

  @doc "heart.svg"
  def heart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19 14c1.49-1.46 3-3.21 3-5.5A5.5 5.5 0 0 0 16.5 3c-1.76 0-3 .5-4.5 2-1.5-1.5-2.74-2-4.5-2A5.5 5.5 0 0 0 2 8.5c0 2.3 1.5 4.05 3 5.5l7 7Z" />
    </svg>
    """
  end

  @doc "heater.svg"
  def heater(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 8c2-3-2-3 0-6" />
    <path d="M15.5 8c2-3-2-3 0-6" />
    <path d="M6 10h.01" />
    <path d="M6 14h.01" />
    <path d="M10 16v-4" />
    <path d="M14 16v-4" />
    <path d="M18 16v-4" />
    <path d="M20 6a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h3" />
    <path d="M5 20v2" />
    <path d="M19 20v2" />
    </svg>
    """
  end

  @doc "help-circle.svg"
  def help_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3" />
    <path d="M12 17h.01" />
    </svg>
    """
  end

  @doc "hexagon.svg"
  def hexagon(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z" />
    </svg>
    """
  end

  @doc "highlighter.svg"
  def highlighter(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m9 11-6 6v3h9l3-3" />
    <path d="m22 12-4.6 4.6a2 2 0 0 1-2.8 0l-5.2-5.2a2 2 0 0 1 0-2.8L14 4" />
    </svg>
    """
  end

  @doc "history.svg"
  def history(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 12a9 9 0 1 0 9-9 9.75 9.75 0 0 0-6.74 2.74L3 8" />
    <path d="M3 3v5h5" />
    <path d="M12 7v5l4 2" />
    </svg>
    """
  end

  @doc "home.svg"
  def home(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 9 9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z" />
    <polyline points="9 22 9 12 15 12 15 22" />
    </svg>
    """
  end

  @doc "hop-off.svg"
  def hop_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17.5 5.5C19 7 20.5 9 21 11c-1.323.265-2.646.39-4.118.226" />
    <path d="M5.5 17.5C7 19 9 20.5 11 21c.5-2.5.5-5-1-8.5" />
    <path d="M17.5 17.5c-2.5 0-4 0-6-1" />
    <path d="M20 11.5c1 1.5 2 3.5 2 4.5" />
    <path d="M11.5 20c1.5 1 3.5 2 4.5 2 .5-1.5 0-3-.5-4.5" />
    <path d="M22 22c-2 0-3.5-.5-5.5-1.5" />
    <path d="M4.783 4.782C1.073 8.492 1 14.5 5 18c1-1 2-4.5 1.5-6.5 1.5 1 4 1 5.5.5M8.227 2.57C11.578 1.335 15.453 2.089 18 5c-.88.88-3.7 1.761-5.726 1.618" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "hop.svg"
  def hop(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17.5 5.5C19 7 20.5 9 21 11c-2.5.5-5 .5-8.5-1" />
    <path d="M5.5 17.5C7 19 9 20.5 11 21c.5-2.5.5-5-1-8.5" />
    <path d="M16.5 11.5c1 2 1 3.5 1 6-2.5 0-4 0-6-1" />
    <path d="M20 11.5c1 1.5 2 3.5 2 4.5-1.5.5-3 0-4.5-.5" />
    <path d="M11.5 20c1.5 1 3.5 2 4.5 2 .5-1.5 0-3-.5-4.5" />
    <path d="M20.5 16.5c1 2 1.5 3.5 1.5 5.5-2 0-3.5-.5-5.5-1.5" />
    <path d="M4.783 4.782C8.493 1.072 14.5 1 18 5c-1 1-4.5 2-6.5 1.5 1 1.5 1 4 .5 5.5-1.5.5-4 .5-5.5-.5C7 13.5 6 17 5 18c-4-3.5-3.927-9.508-.217-13.218Z" />
    <path d="M4.5 4.5 3 3c-.184-.185-.184-.816 0-1" />
    </svg>
    """
  end

  @doc "hotel.svg"
  def hotel(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2Z" />
    <path d="m9 16 .348-.24c1.465-1.013 3.84-1.013 5.304 0L15 16" />
    <path d="M8 7h.01" />
    <path d="M16 7h.01" />
    <path d="M12 7h.01" />
    <path d="M12 11h.01" />
    <path d="M16 11h.01" />
    <path d="M8 11h.01" />
    <path d="M10 22v-6.5m4 0V22" />
    </svg>
    """
  end

  @doc "hourglass.svg"
  def hourglass(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 22h14" />
    <path d="M5 2h14" />
    <path d="M17 22v-4.172a2 2 0 0 0-.586-1.414L12 12l-4.414 4.414A2 2 0 0 0 7 17.828V22" />
    <path d="M7 2v4.172a2 2 0 0 0 .586 1.414L12 12l4.414-4.414A2 2 0 0 0 17 6.172V2" />
    </svg>
    """
  end

  @doc "ice-cream-2.svg"
  def ice_cream_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 17c5 0 8-2.69 8-6H4c0 3.31 3 6 8 6Zm-4 4h8m-4-3v3M5.14 11a3.5 3.5 0 1 1 6.71 0" />
    <path d="M12.14 11a3.5 3.5 0 1 1 6.71 0" />
    <path d="M15.5 6.5a3.5 3.5 0 1 0-7 0" />
    </svg>
    """
  end

  @doc "ice-cream.svg"
  def ice_cream(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m7 11 4.08 10.35a1 1 0 0 0 1.84 0L17 11" />
    <path d="M17 7A5 5 0 0 0 7 7" />
    <path d="M17 7a2 2 0 0 1 0 4H7a2 2 0 0 1 0-4" />
    </svg>
    """
  end

  @doc "image-down.svg"
  def image_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="9" cy="9" r="2" />
    <path d="M10.3 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v10.8" />
    <path d="m21 15-3.1-3.1a2 2 0 0 0-2.814.014L6 21" />
    <path d="m14 19.5 3 3v-6" />
    <path d="m17 22.5 3-3" />
    </svg>
    """
  end

  @doc "image-minus.svg"
  def image_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 9v10a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h7" />
    <line x1="16" x2="22" y1="5" y2="5" />
    <circle cx="9" cy="9" r="2" />
    <path d="m21 15-3.086-3.086a2 2 0 0 0-2.828 0L6 21" />
    </svg>
    """
  end

  @doc "image-off.svg"
  def image_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="2" x2="22" y1="2" y2="22" />
    <path d="M10.41 10.41a2 2 0 1 1-2.83-2.83" />
    <line x1="13.5" x2="6" y1="13.5" y2="21" />
    <line x1="18" x2="21" y1="12" y2="15" />
    <path d="M3.59 3.59A1.99 1.99 0 0 0 3 5v14a2 2 0 0 0 2 2h14c.55 0 1.052-.22 1.41-.59" />
    <path d="M21 15V5a2 2 0 0 0-2-2H9" />
    </svg>
    """
  end

  @doc "image-plus.svg"
  def image_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h7" />
    <line x1="16" x2="22" y1="5" y2="5" />
    <line x1="19" x2="19" y1="2" y2="8" />
    <circle cx="9" cy="9" r="2" />
    <path d="m21 15-3.086-3.086a2 2 0 0 0-2.828 0L6 21" />
    </svg>
    """
  end

  @doc "image.svg"
  def image(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" ry="2" />
    <circle cx="9" cy="9" r="2" />
    <path d="m21 15-3.086-3.086a2 2 0 0 0-2.828 0L6 21" />
    </svg>
    """
  end

  @doc "images.svg"
  def images(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 22H4a2 2 0 0 1-2-2V6" />
    <path d="m22 13-1.296-1.296a2.41 2.41 0 0 0-3.408 0L11 18" />
    <circle cx="12" cy="8" r="2" />
    <rect width="16" height="16" x="6" y="2" rx="2" />
    </svg>
    """
  end

  @doc "import.svg"
  def import(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 3v12" />
    <path d="m8 11 4 4 4-4" />
    <path d="M8 5H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2h-4" />
    </svg>
    """
  end

  @doc "inbox.svg"
  def inbox(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="22 12 16 12 14 15 10 15 8 12 2 12" />
    <path d="M5.45 5.11 2 12v6a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-6l-3.45-6.89A2 2 0 0 0 16.76 4H7.24a2 2 0 0 0-1.79 1.11z" />
    </svg>
    """
  end

  @doc "indent.svg"
  def indent(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="3 8 7 12 3 16" />
    <line x1="21" x2="11" y1="12" y2="12" />
    <line x1="21" x2="11" y1="6" y2="6" />
    <line x1="21" x2="11" y1="18" y2="18" />
    </svg>
    """
  end

  @doc "indian-rupee.svg"
  def indian_rupee(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 3h12" />
    <path d="M6 8h12" />
    <path d="m6 13 8.5 8" />
    <path d="M6 13h3" />
    <path d="M9 13c6.667 0 6.667-10 0-10" />
    </svg>
    """
  end

  @doc "infinity.svg"
  def infinity(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 12c-2-2.67-4-4-6-4a4 4 0 1 0 0 8c2 0 4-1.33 6-4Zm0 0c2 2.67 4 4 6 4a4 4 0 0 0 0-8c-2 0-4 1.33-6 4Z" />
    </svg>
    """
  end

  @doc "info.svg"
  def info(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M12 16v-4" />
    <path d="M12 8h.01" />
    </svg>
    """
  end

  @doc "inspection-panel.svg"
  def inspection_panel(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M7 7h.01" />
    <path d="M17 7h.01" />
    <path d="M7 17h.01" />
    <path d="M17 17h.01" />
    </svg>
    """
  end

  @doc "instagram.svg"
  def instagram(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="20" x="2" y="2" rx="5" ry="5" />
    <path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z" />
    <line x1="17.5" x2="17.51" y1="6.5" y2="6.5" />
    </svg>
    """
  end

  @doc "italic.svg"
  def italic(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="19" x2="10" y1="4" y2="4" />
    <line x1="14" x2="5" y1="20" y2="20" />
    <line x1="15" x2="9" y1="4" y2="20" />
    </svg>
    """
  end

  @doc "iteration-ccw.svg"
  def iteration_ccw(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 10c0-4.4-3.6-8-8-8s-8 3.6-8 8 3.6 8 8 8h8" />
    <polyline points="16 14 20 18 16 22" />
    </svg>
    """
  end

  @doc "iteration-cw.svg"
  def iteration_cw(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 10c0-4.4 3.6-8 8-8s8 3.6 8 8-3.6 8-8 8H4" />
    <polyline points="8 22 4 18 8 14" />
    </svg>
    """
  end

  @doc "japanese-yen.svg"
  def japanese_yen(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 9.5V21m0-11.5L6 3m6 6.5L18 3" />
    <path d="M6 15h12" />
    <path d="M6 11h12" />
    </svg>
    """
  end

  @doc "joystick.svg"
  def joystick(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 17a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v2a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-2Z" />
    <path d="M6 15v-2" />
    <path d="M12 15V9" />
    <circle cx="12" cy="6" r="3" />
    </svg>
    """
  end

  @doc "kanban-square-dashed.svg"
  def kanban_square_dashed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 7v7" />
    <path d="M12 7v4" />
    <path d="M16 7v9" />
    <path d="M5 3a2 2 0 0 0-2 2" />
    <path d="M9 3h1" />
    <path d="M14 3h1" />
    <path d="M19 3a2 2 0 0 1 2 2" />
    <path d="M21 9v1" />
    <path d="M21 14v1" />
    <path d="M21 19a2 2 0 0 1-2 2" />
    <path d="M14 21h1" />
    <path d="M9 21h1" />
    <path d="M5 21a2 2 0 0 1-2-2" />
    <path d="M3 14v1" />
    <path d="M3 9v1" />
    </svg>
    """
  end

  @doc "kanban-square.svg"
  def kanban_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M8 7v7" />
    <path d="M12 7v4" />
    <path d="M16 7v9" />
    </svg>
    """
  end

  @doc "kanban.svg"
  def kanban(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 5v11" />
    <path d="M12 5v6" />
    <path d="M18 5v14" />
    </svg>
    """
  end

  @doc "key-round.svg"
  def key_round(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 18v3c0 .6.4 1 1 1h4v-3h3v-3h2l1.4-1.4a6.5 6.5 0 1 0-4-4Z" />
    <circle cx="16.5" cy="7.5" r=".5" fill="currentColor" />
    </svg>
    """
  end

  @doc "key-square.svg"
  def key_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12.4 2.7c.9-.9 2.5-.9 3.4 0l5.5 5.5c.9.9.9 2.5 0 3.4l-3.7 3.7c-.9.9-2.5.9-3.4 0L8.7 9.8c-.9-.9-.9-2.5 0-3.4Z" />
    <path d="m14 7 3 3" />
    <path d="M9.4 10.6 2 18v3c0 .6.4 1 1 1h4v-3h3v-3h2l1.4-1.4" />
    </svg>
    """
  end

  @doc "key.svg"
  def key(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="7.5" cy="15.5" r="5.5" />
    <path d="m21 2-9.6 9.6" />
    <path d="m15.5 7.5 3 3L22 7l-3-3" />
    </svg>
    """
  end

  @doc "keyboard-music.svg"
  def keyboard_music(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="16" x="2" y="4" rx="2" />
    <path d="M6 8h4" />
    <path d="M14 8h.01" />
    <path d="M18 8h.01" />
    <path d="M2 12h20" />
    <path d="M6 12v4" />
    <path d="M10 12v4" />
    <path d="M14 12v4" />
    <path d="M18 12v4" />
    </svg>
    """
  end

  @doc "keyboard.svg"
  def keyboard(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="16" x="2" y="4" rx="2" ry="2" />
    <path d="M6 8h.001" />
    <path d="M10 8h.001" />
    <path d="M14 8h.001" />
    <path d="M18 8h.001" />
    <path d="M8 12h.001" />
    <path d="M12 12h.001" />
    <path d="M16 12h.001" />
    <path d="M7 16h10" />
    </svg>
    """
  end

  @doc "lamp-ceiling.svg"
  def lamp_ceiling(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 2v5" />
    <path d="M6 7h12l4 9H2l4-9Z" />
    <path d="M9.17 16a3 3 0 1 0 5.66 0" />
    </svg>
    """
  end

  @doc "lamp-desk.svg"
  def lamp_desk(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m14 5-3 3 2 7 8-8-7-2Z" />
    <path d="m14 5-3 3-3-3 3-3 3 3Z" />
    <path d="M9.5 6.5 4 12l3 6" />
    <path d="M3 22v-2c0-1.1.9-2 2-2h4a2 2 0 0 1 2 2v2H3Z" />
    </svg>
    """
  end

  @doc "lamp-floor.svg"
  def lamp_floor(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 2h6l3 7H6l3-7Z" />
    <path d="M12 9v13" />
    <path d="M9 22h6" />
    </svg>
    """
  end

  @doc "lamp-wall-down.svg"
  def lamp_wall_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 13h6l3 7H8l3-7Z" />
    <path d="M14 13V8a2 2 0 0 0-2-2H8" />
    <path d="M4 9h2a2 2 0 0 0 2-2V5a2 2 0 0 0-2-2H4v6Z" />
    </svg>
    """
  end

  @doc "lamp-wall-up.svg"
  def lamp_wall_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 4h6l3 7H8l3-7Z" />
    <path d="M14 11v5a2 2 0 0 1-2 2H8" />
    <path d="M4 15h2a2 2 0 0 1 2 2v2a2 2 0 0 1-2 2H4v-6Z" />
    </svg>
    """
  end

  @doc "lamp.svg"
  def lamp(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2h8l4 10H4L8 2Z" />
    <path d="M12 12v6" />
    <path d="M8 22v-2c0-1.1.9-2 2-2h4a2 2 0 0 1 2 2v2H8Z" />
    </svg>
    """
  end

  @doc "land-plot.svg"
  def land_plot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m12 8 6-3-6-3v10" />
    <path d="m8 11.99-5.5 3.14a1 1 0 0 0 0 1.74l8.5 4.86a2 2 0 0 0 2 0l8.5-4.86a1 1 0 0 0 0-1.74L16 12" />
    <path d="m6.49 12.85 11.02 6.3" />
    <path d="M17.51 12.85 6.5 19.15" />
    </svg>
    """
  end

  @doc "landmark.svg"
  def landmark(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="3" x2="21" y1="22" y2="22" />
    <line x1="6" x2="6" y1="18" y2="11" />
    <line x1="10" x2="10" y1="18" y2="11" />
    <line x1="14" x2="14" y1="18" y2="11" />
    <line x1="18" x2="18" y1="18" y2="11" />
    <polygon points="12 2 20 7 4 7" />
    </svg>
    """
  end

  @doc "languages.svg"
  def languages(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m5 8 6 6" />
    <path d="m4 14 6-6 2-3" />
    <path d="M2 5h12" />
    <path d="M7 2h1" />
    <path d="m22 22-5-10-5 10" />
    <path d="M14 18h6" />
    </svg>
    """
  end

  @doc "laptop-2.svg"
  def laptop_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="12" x="3" y="4" rx="2" ry="2" />
    <line x1="2" x2="22" y1="20" y2="20" />
    </svg>
    """
  end

  @doc "laptop.svg"
  def laptop(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 16V7a2 2 0 0 0-2-2H6a2 2 0 0 0-2 2v9m16 0H4m16 0 1.28 2.55a1 1 0 0 1-.9 1.45H3.62a1 1 0 0 1-.9-1.45L4 16" />
    </svg>
    """
  end

  @doc "lasso-select.svg"
  def lasso_select(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 22a5 5 0 0 1-2-4" />
    <path d="M7 16.93c.96.43 1.96.74 2.99.91" />
    <path d="M3.34 14A6.8 6.8 0 0 1 2 10c0-4.42 4.48-8 10-8s10 3.58 10 8a7.19 7.19 0 0 1-.33 2" />
    <path d="M5 18a2 2 0 1 0 0-4 2 2 0 0 0 0 4z" />
    <path d="M14.33 22h-.09a.35.35 0 0 1-.24-.32v-10a.34.34 0 0 1 .33-.34c.08 0 .15.03.21.08l7.34 6a.33.33 0 0 1-.21.59h-4.49l-2.57 3.85a.35.35 0 0 1-.28.14v0z" />
    </svg>
    """
  end

  @doc "lasso.svg"
  def lasso(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 22a5 5 0 0 1-2-4" />
    <path d="M3.3 14A6.8 6.8 0 0 1 2 10c0-4.4 4.5-8 10-8s10 3.6 10 8-4.5 8-10 8a12 12 0 0 1-5-1" />
    <path d="M5 18a2 2 0 1 0 0-4 2 2 0 0 0 0 4z" />
    </svg>
    """
  end

  @doc "laugh.svg"
  def laugh(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M18 13a6 6 0 0 1-6 5 6 6 0 0 1-6-5h12Z" />
    <line x1="9" x2="9.01" y1="9" y2="9" />
    <line x1="15" x2="15.01" y1="9" y2="9" />
    </svg>
    """
  end

  @doc "layers-2.svg"
  def layers_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m16.02 12 5.48 3.13a1 1 0 0 1 0 1.74L13 21.74a2 2 0 0 1-2 0l-8.5-4.87a1 1 0 0 1 0-1.74L7.98 12" />
    <path d="M13 13.74a2 2 0 0 1-2 0L2.5 8.87a1 1 0 0 1 0-1.74L11 2.26a2 2 0 0 1 2 0l8.5 4.87a1 1 0 0 1 0 1.74Z" />
    </svg>
    """
  end

  @doc "layers-3.svg"
  def layers_3(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m12.83 2.18a2 2 0 0 0-1.66 0L2.6 6.08a1 1 0 0 0 0 1.83l8.58 3.91a2 2 0 0 0 1.66 0l8.58-3.9a1 1 0 0 0 0-1.83Z" />
    <path d="m6.08 9.5-3.5 1.6a1 1 0 0 0 0 1.81l8.6 3.91a2 2 0 0 0 1.65 0l8.58-3.9a1 1 0 0 0 0-1.83l-3.5-1.59" />
    <path d="m6.08 14.5-3.5 1.6a1 1 0 0 0 0 1.81l8.6 3.91a2 2 0 0 0 1.65 0l8.58-3.9a1 1 0 0 0 0-1.83l-3.5-1.59" />
    </svg>
    """
  end

  @doc "layers.svg"
  def layers(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m12.83 2.18a2 2 0 0 0-1.66 0L2.6 6.08a1 1 0 0 0 0 1.83l8.58 3.91a2 2 0 0 0 1.66 0l8.58-3.9a1 1 0 0 0 0-1.83Z" />
    <path d="m22 17.65-9.17 4.16a2 2 0 0 1-1.66 0L2 17.65" />
    <path d="m22 12.65-9.17 4.16a2 2 0 0 1-1.66 0L2 12.65" />
    </svg>
    """
  end

  @doc "layout-dashboard.svg"
  def layout_dashboard(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="7" height="9" x="3" y="3" rx="1" />
    <rect width="7" height="5" x="14" y="3" rx="1" />
    <rect width="7" height="9" x="14" y="12" rx="1" />
    <rect width="7" height="5" x="3" y="16" rx="1" />
    </svg>
    """
  end

  @doc "layout-grid.svg"
  def layout_grid(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="7" height="7" x="3" y="3" rx="1" />
    <rect width="7" height="7" x="14" y="3" rx="1" />
    <rect width="7" height="7" x="14" y="14" rx="1" />
    <rect width="7" height="7" x="3" y="14" rx="1" />
    </svg>
    """
  end

  @doc "layout-list.svg"
  def layout_list(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="7" height="7" x="3" y="3" rx="1" />
    <rect width="7" height="7" x="3" y="14" rx="1" />
    <path d="M14 4h7" />
    <path d="M14 9h7" />
    <path d="M14 15h7" />
    <path d="M14 20h7" />
    </svg>
    """
  end

  @doc "layout-panel-left.svg"
  def layout_panel_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="7" height="18" x="3" y="3" rx="1" />
    <rect width="7" height="7" x="14" y="3" rx="1" />
    <rect width="7" height="7" x="14" y="14" rx="1" />
    </svg>
    """
  end

  @doc "layout-panel-top.svg"
  def layout_panel_top(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="7" x="3" y="3" rx="1" />
    <rect width="7" height="7" x="3" y="14" rx="1" />
    <rect width="7" height="7" x="14" y="14" rx="1" />
    </svg>
    """
  end

  @doc "layout-template.svg"
  def layout_template(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="7" x="3" y="3" rx="1" />
    <rect width="9" height="7" x="3" y="14" rx="1" />
    <rect width="5" height="7" x="16" y="14" rx="1" />
    </svg>
    """
  end

  @doc "leaf.svg"
  def leaf(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 20A7 7 0 0 1 9.8 6.1C15.5 5 17 4.48 19 2c1 2 2 4.18 2 8 0 5.5-4.78 10-10 10Z" />
    <path d="M2 21c0-3 1.85-5.36 5.08-6C9.5 14.52 12 13 13 12" />
    </svg>
    """
  end

  @doc "leafy-green.svg"
  def leafy_green(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 22c1.25-.987 2.27-1.975 3.9-2.2a5.56 5.56 0 0 1 3.8 1.5 4 4 0 0 0 6.187-2.353 3.5 3.5 0 0 0 3.69-5.116A3.5 3.5 0 0 0 20.95 8 3.5 3.5 0 1 0 16 3.05a3.5 3.5 0 0 0-5.831 1.373 3.5 3.5 0 0 0-5.116 3.69 4 4 0 0 0-2.348 6.155C3.499 15.42 4.409 16.712 4.2 18.1 3.926 19.743 3.014 20.732 2 22" />
    <path d="M2 22 17 7" />
    </svg>
    """
  end

  @doc "library-big.svg"
  def library_big(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="18" x="3" y="3" rx="1" />
    <path d="M7 3v18" />
    <path d="M20.4 18.9c.2.5-.1 1.1-.6 1.3l-1.9.7c-.5.2-1.1-.1-1.3-.6L11.1 5.1c-.2-.5.1-1.1.6-1.3l1.9-.7c.5-.2 1.1.1 1.3.6Z" />
    </svg>
    """
  end

  @doc "library-square.svg"
  def library_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M7 7v10" />
    <path d="M11 7v10" />
    <path d="m15 7 2 10" />
    </svg>
    """
  end

  @doc "library.svg"
  def library(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m16 6 4 14" />
    <path d="M12 6v14" />
    <path d="M8 8v12" />
    <path d="M4 4v16" />
    </svg>
    """
  end

  @doc "life-buoy.svg"
  def life_buoy(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="m4.93 4.93 4.24 4.24" />
    <path d="m14.83 9.17 4.24-4.24" />
    <path d="m14.83 14.83 4.24 4.24" />
    <path d="m9.17 14.83-4.24 4.24" />
    <circle cx="12" cy="12" r="4" />
    </svg>
    """
  end

  @doc "ligature.svg"
  def ligature(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 20V8c0-2.2 1.8-4 4-4 1.5 0 2.8.8 3.5 2" />
    <path d="M6 12h4" />
    <path d="M14 12h2v8" />
    <path d="M6 20h4" />
    <path d="M14 20h4" />
    </svg>
    """
  end

  @doc "lightbulb-off.svg"
  def lightbulb_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16.8 11.2c.8-.9 1.2-2 1.2-3.2a6 6 0 0 0-9.3-5" />
    <path d="m2 2 20 20" />
    <path d="M6.3 6.3a4.67 4.67 0 0 0 1.2 5.2c.7.7 1.3 1.5 1.5 2.5" />
    <path d="M9 18h6" />
    <path d="M10 22h4" />
    </svg>
    """
  end

  @doc "lightbulb.svg"
  def lightbulb(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 14c.2-1 .7-1.7 1.5-2.5 1-.9 1.5-2.2 1.5-3.5A6 6 0 0 0 6 8c0 1 .2 2.2 1.5 3.5.7.7 1.3 1.5 1.5 2.5" />
    <path d="M9 18h6" />
    <path d="M10 22h4" />
    </svg>
    """
  end

  @doc "line-chart.svg"
  def line_chart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 3v18h18" />
    <path d="m19 9-5 5-4-4-3 3" />
    </svg>
    """
  end

  @doc "link-2-off.svg"
  def link_2_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 17H7A5 5 0 0 1 7 7" />
    <path d="M15 7h2a5 5 0 0 1 4 8" />
    <line x1="8" x2="12" y1="12" y2="12" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "link-2.svg"
  def link_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 17H7A5 5 0 0 1 7 7h2" />
    <path d="M15 7h2a5 5 0 1 1 0 10h-2" />
    <line x1="8" x2="16" y1="12" y2="12" />
    </svg>
    """
  end

  @doc "link.svg"
  def link(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71" />
    <path d="M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71" />
    </svg>
    """
  end

  @doc "linkedin.svg"
  def linkedin(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z" />
    <rect width="4" height="12" x="2" y="9" />
    <circle cx="4" cy="4" r="2" />
    </svg>
    """
  end

  @doc "list-checks.svg"
  def list_checks(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 17 2 2 4-4" />
    <path d="m3 7 2 2 4-4" />
    <path d="M13 6h8" />
    <path d="M13 12h8" />
    <path d="M13 18h8" />
    </svg>
    """
  end

  @doc "list-collapse.svg"
  def list_collapse(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 10 2.5-2.5L3 5" />
    <path d="m3 19 2.5-2.5L3 14" />
    <path d="M10 6h11" />
    <path d="M10 12h11" />
    <path d="M10 18h11" />
    </svg>
    """
  end

  @doc "list-end.svg"
  def list_end(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 12H3" />
    <path d="M16 6H3" />
    <path d="M10 18H3" />
    <path d="M21 6v10a2 2 0 0 1-2 2h-5" />
    <path d="m16 16-2 2 2 2" />
    </svg>
    """
  end

  @doc "list-filter.svg"
  def list_filter(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 6h18" />
    <path d="M7 12h10" />
    <path d="M10 18h4" />
    </svg>
    """
  end

  @doc "list-minus.svg"
  def list_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 12H3" />
    <path d="M16 6H3" />
    <path d="M16 18H3" />
    <path d="M21 12h-6" />
    </svg>
    """
  end

  @doc "list-music.svg"
  def list_music(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 15V6" />
    <path d="M18.5 18a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z" />
    <path d="M12 12H3" />
    <path d="M16 6H3" />
    <path d="M12 18H3" />
    </svg>
    """
  end

  @doc "list-ordered.svg"
  def list_ordered(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="10" x2="21" y1="6" y2="6" />
    <line x1="10" x2="21" y1="12" y2="12" />
    <line x1="10" x2="21" y1="18" y2="18" />
    <path d="M4 6h1v4" />
    <path d="M4 10h2" />
    <path d="M6 18H4c0-1 2-2 2-3s-1-1.5-2-1" />
    </svg>
    """
  end

  @doc "list-plus.svg"
  def list_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 12H3" />
    <path d="M16 6H3" />
    <path d="M16 18H3" />
    <path d="M18 9v6" />
    <path d="M21 12h-6" />
    </svg>
    """
  end

  @doc "list-restart.svg"
  def list_restart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 6H3" />
    <path d="M7 12H3" />
    <path d="M7 18H3" />
    <path d="M12 18a5 5 0 0 0 9-3 4.5 4.5 0 0 0-4.5-4.5c-1.33 0-2.54.54-3.41 1.41L11 14" />
    <path d="M11 10v4h4" />
    </svg>
    """
  end

  @doc "list-start.svg"
  def list_start(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 12H3" />
    <path d="M16 18H3" />
    <path d="M10 6H3" />
    <path d="M21 18V8a2 2 0 0 0-2-2h-5" />
    <path d="m16 8-2-2 2-2" />
    </svg>
    """
  end

  @doc "list-todo.svg"
  def list_todo(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect x="3" y="5" width="6" height="6" rx="1" />
    <path d="m3 17 2 2 4-4" />
    <path d="M13 6h8" />
    <path d="M13 12h8" />
    <path d="M13 18h8" />
    </svg>
    """
  end

  @doc "list-tree.svg"
  def list_tree(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 12h-8" />
    <path d="M21 6H8" />
    <path d="M21 18h-8" />
    <path d="M3 6v4c0 1.1.9 2 2 2h3" />
    <path d="M3 10v6c0 1.1.9 2 2 2h3" />
    </svg>
    """
  end

  @doc "list-video.svg"
  def list_video(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 12H3" />
    <path d="M16 6H3" />
    <path d="M12 18H3" />
    <path d="m16 12 5 3-5 3v-6Z" />
    </svg>
    """
  end

  @doc "list-x.svg"
  def list_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 12H3" />
    <path d="M16 6H3" />
    <path d="M16 18H3" />
    <path d="m19 10-4 4" />
    <path d="m15 10 4 4" />
    </svg>
    """
  end

  @doc "list.svg"
  def list(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="8" x2="21" y1="6" y2="6" />
    <line x1="8" x2="21" y1="12" y2="12" />
    <line x1="8" x2="21" y1="18" y2="18" />
    <line x1="3" x2="3.01" y1="6" y2="6" />
    <line x1="3" x2="3.01" y1="12" y2="12" />
    <line x1="3" x2="3.01" y1="18" y2="18" />
    </svg>
    """
  end

  @doc "loader-2.svg"
  def loader_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 12a9 9 0 1 1-6.219-8.56" />
    </svg>
    """
  end

  @doc "loader.svg"
  def loader(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="12" x2="12" y1="2" y2="6" />
    <line x1="12" x2="12" y1="18" y2="22" />
    <line x1="4.93" x2="7.76" y1="4.93" y2="7.76" />
    <line x1="16.24" x2="19.07" y1="16.24" y2="19.07" />
    <line x1="2" x2="6" y1="12" y2="12" />
    <line x1="18" x2="22" y1="12" y2="12" />
    <line x1="4.93" x2="7.76" y1="19.07" y2="16.24" />
    <line x1="16.24" x2="19.07" y1="7.76" y2="4.93" />
    </svg>
    """
  end

  @doc "locate-fixed.svg"
  def locate_fixed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="2" x2="5" y1="12" y2="12" />
    <line x1="19" x2="22" y1="12" y2="12" />
    <line x1="12" x2="12" y1="2" y2="5" />
    <line x1="12" x2="12" y1="19" y2="22" />
    <circle cx="12" cy="12" r="7" />
    <circle cx="12" cy="12" r="3" />
    </svg>
    """
  end

  @doc "locate-off.svg"
  def locate_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="2" x2="5" y1="12" y2="12" />
    <line x1="19" x2="22" y1="12" y2="12" />
    <line x1="12" x2="12" y1="2" y2="5" />
    <line x1="12" x2="12" y1="19" y2="22" />
    <path d="M7.11 7.11C5.83 8.39 5 10.1 5 12c0 3.87 3.13 7 7 7 1.9 0 3.61-.83 4.89-2.11" />
    <path d="M18.71 13.96c.19-.63.29-1.29.29-1.96 0-3.87-3.13-7-7-7-.67 0-1.33.1-1.96.29" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "locate.svg"
  def locate(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="2" x2="5" y1="12" y2="12" />
    <line x1="19" x2="22" y1="12" y2="12" />
    <line x1="12" x2="12" y1="2" y2="5" />
    <line x1="12" x2="12" y1="19" y2="22" />
    <circle cx="12" cy="12" r="7" />
    </svg>
    """
  end

  @doc "lock-keyhole.svg"
  def lock_keyhole(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="16" r="1" />
    <rect x="3" y="10" width="18" height="12" rx="2" />
    <path d="M7 10V7a5 5 0 0 1 10 0v3" />
    </svg>
    """
  end

  @doc "lock.svg"
  def lock(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="11" x="3" y="11" rx="2" ry="2" />
    <path d="M7 11V7a5 5 0 0 1 10 0v4" />
    </svg>
    """
  end

  @doc "log-in.svg"
  def log_in(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4" />
    <polyline points="10 17 15 12 10 7" />
    <line x1="15" x2="3" y1="12" y2="12" />
    </svg>
    """
  end

  @doc "log-out.svg"
  def log_out(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4" />
    <polyline points="16 17 21 12 16 7" />
    <line x1="21" x2="9" y1="12" y2="12" />
    </svg>
    """
  end

  @doc "lollipop.svg"
  def lollipop(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="11" cy="11" r="8" />
    <path d="m21 21-4.3-4.3" />
    <path d="M11 11a2 2 0 0 0 4 0 4 4 0 0 0-8 0 6 6 0 0 0 12 0" />
    </svg>
    """
  end

  @doc "luggage.svg"
  def luggage(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 20h0a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h0" />
    <path d="M8 18V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v14" />
    <path d="M10 20h4" />
    <circle cx="16" cy="20" r="2" />
    <circle cx="8" cy="20" r="2" />
    </svg>
    """
  end

  @doc "m-square.svg"
  def m_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M8 16V8l4 4 4-4v8" />
    </svg>
    """
  end

  @doc "magnet.svg"
  def magnet(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m6 15-4-4 6.75-6.77a7.79 7.79 0 0 1 11 11L13 22l-4-4 6.39-6.36a2.14 2.14 0 0 0-3-3L6 15" />
    <path d="m5 8 4 4" />
    <path d="m12 15 4 4" />
    </svg>
    """
  end

  @doc "mail-check.svg"
  def mail_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 13V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h8" />
    <path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7" />
    <path d="m16 19 2 2 4-4" />
    </svg>
    """
  end

  @doc "mail-minus.svg"
  def mail_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 15V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h8" />
    <path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7" />
    <path d="M16 19h6" />
    </svg>
    """
  end

  @doc "mail-open.svg"
  def mail_open(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21.2 8.4c.5.38.8.97.8 1.6v10a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V10a2 2 0 0 1 .8-1.6l8-6a2 2 0 0 1 2.4 0l8 6Z" />
    <path d="m22 10-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 10" />
    </svg>
    """
  end

  @doc "mail-plus.svg"
  def mail_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 13V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h8" />
    <path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7" />
    <path d="M19 16v6" />
    <path d="M16 19h6" />
    </svg>
    """
  end

  @doc "mail-question.svg"
  def mail_question(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 10.5V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h12.5" />
    <path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7" />
    <path d="M18 15.28c.2-.4.5-.8.9-1a2.1 2.1 0 0 1 2.6.4c.3.4.5.8.5 1.3 0 1.3-2 2-2 2" />
    <path d="M20 22v.01" />
    </svg>
    """
  end

  @doc "mail-search.svg"
  def mail_search(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 12.5V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h7.5" />
    <path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7" />
    <path d="M18 21a3 3 0 1 0 0-6 3 3 0 0 0 0 6v0Z" />
    <circle cx="18" cy="18" r="3" />
    <path d="m22 22-1.5-1.5" />
    </svg>
    """
  end

  @doc "mail-warning.svg"
  def mail_warning(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 10.5V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h12.5" />
    <path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7" />
    <path d="M20 14v4" />
    <path d="M20 22v.01" />
    </svg>
    """
  end

  @doc "mail-x.svg"
  def mail_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 13V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v12c0 1.1.9 2 2 2h9" />
    <path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7" />
    <path d="m17 17 4 4" />
    <path d="m21 17-4 4" />
    </svg>
    """
  end

  @doc "mail.svg"
  def mail(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="16" x="2" y="4" rx="2" />
    <path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7" />
    </svg>
    """
  end

  @doc "mailbox.svg"
  def mailbox(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 17a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V9.5C2 7 4 5 6.5 5H18c2.2 0 4 1.8 4 4v8Z" />
    <polyline points="15,9 18,9 18,11" />
    <path d="M6.5 5C9 5 11 7 11 9.5V17a2 2 0 0 1-2 2v0" />
    <line x1="6" x2="7" y1="10" y2="10" />
    </svg>
    """
  end

  @doc "mails.svg"
  def mails(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="16" height="13" x="6" y="4" rx="2" />
    <path d="m22 7-7.1 3.78c-.57.3-1.23.3-1.8 0L6 7" />
    <path d="M2 8v11c0 1.1.9 2 2 2h14" />
    </svg>
    """
  end

  @doc "map-pin-off.svg"
  def map_pin_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5.43 5.43A8.06 8.06 0 0 0 4 10c0 6 8 12 8 12a29.94 29.94 0 0 0 5-5" />
    <path d="M19.18 13.52A8.66 8.66 0 0 0 20 10a8 8 0 0 0-8-8 7.88 7.88 0 0 0-3.52.82" />
    <path d="M9.13 9.13A2.78 2.78 0 0 0 9 10a3 3 0 0 0 3 3 2.78 2.78 0 0 0 .87-.13" />
    <path d="M14.9 9.25a3 3 0 0 0-2.15-2.16" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "map-pin.svg"
  def map_pin(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 10c0 6-8 12-8 12s-8-6-8-12a8 8 0 0 1 16 0Z" />
    <circle cx="12" cy="10" r="3" />
    </svg>
    """
  end

  @doc "map-pinned.svg"
  def map_pinned(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 8c0 4.5-6 9-6 9s-6-4.5-6-9a6 6 0 0 1 12 0" />
    <circle cx="12" cy="8" r="2" />
    <path d="M8.835 14H5a1 1 0 0 0-.9.7l-2 6c-.1.1-.1.2-.1.3 0 .6.4 1 1 1h18c.6 0 1-.4 1-1 0-.1 0-.2-.1-.3l-2-6a1 1 0 0 0-.9-.7h-3.835" />
    </svg>
    """
  end

  @doc "map.svg"
  def map(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="3 6 9 3 15 6 21 3 21 18 15 21 9 18 3 21" />
    <line x1="9" x2="9" y1="3" y2="18" />
    <line x1="15" x2="15" y1="6" y2="21" />
    </svg>
    """
  end

  @doc "martini.svg"
  def martini(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 22h8" />
    <path d="M12 11v11" />
    <path d="m19 3-7 8-7-8Z" />
    </svg>
    """
  end

  @doc "maximize-2.svg"
  def maximize_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="15 3 21 3 21 9" />
    <polyline points="9 21 3 21 3 15" />
    <line x1="21" x2="14" y1="3" y2="10" />
    <line x1="3" x2="10" y1="21" y2="14" />
    </svg>
    """
  end

  @doc "maximize.svg"
  def maximize(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 3H5a2 2 0 0 0-2 2v3" />
    <path d="M21 8V5a2 2 0 0 0-2-2h-3" />
    <path d="M3 16v3a2 2 0 0 0 2 2h3" />
    <path d="M16 21h3a2 2 0 0 0 2-2v-3" />
    </svg>
    """
  end

  @doc "medal.svg"
  def medal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7.21 15 2.66 7.14a2 2 0 0 1 .13-2.2L4.4 2.8A2 2 0 0 1 6 2h12a2 2 0 0 1 1.6.8l1.6 2.14a2 2 0 0 1 .14 2.2L16.79 15" />
    <path d="M11 12 5.12 2.2" />
    <path d="m13 12 5.88-9.8" />
    <path d="M8 7h8" />
    <circle cx="12" cy="17" r="5" />
    <path d="M12 18v-2h-.5" />
    </svg>
    """
  end

  @doc "megaphone-off.svg"
  def megaphone_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9.26 9.26 3 11v3l14.14 3.14" />
    <path d="M21 15.34V6l-7.31 2.03" />
    <path d="M11.6 16.8a3 3 0 1 1-5.8-1.6" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "megaphone.svg"
  def megaphone(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 11 18-5v12L3 14v-3z" />
    <path d="M11.6 16.8a3 3 0 1 1-5.8-1.6" />
    </svg>
    """
  end

  @doc "meh.svg"
  def meh(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <line x1="8" x2="16" y1="15" y2="15" />
    <line x1="9" x2="9.01" y1="9" y2="9" />
    <line x1="15" x2="15.01" y1="9" y2="9" />
    </svg>
    """
  end

  @doc "memory-stick.svg"
  def memory_stick(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 19v-3" />
    <path d="M10 19v-3" />
    <path d="M14 19v-3" />
    <path d="M18 19v-3" />
    <path d="M8 11V9" />
    <path d="M16 11V9" />
    <path d="M12 11V9" />
    <path d="M2 15h20" />
    <path d="M2 7a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v1.1a2 2 0 0 0 0 3.837V17a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2v-5.1a2 2 0 0 0 0-3.837Z" />
    </svg>
    """
  end

  @doc "menu-square.svg"
  def menu_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M7 8h10" />
    <path d="M7 12h10" />
    <path d="M7 16h10" />
    </svg>
    """
  end

  @doc "menu.svg"
  def menu(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="4" x2="20" y1="12" y2="12" />
    <line x1="4" x2="20" y1="6" y2="6" />
    <line x1="4" x2="20" y1="18" y2="18" />
    </svg>
    """
  end

  @doc "merge.svg"
  def merge(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m8 6 4-4 4 4" />
    <path d="M12 2v10.3a4 4 0 0 1-1.172 2.872L4 22" />
    <path d="m20 22-5-5" />
    </svg>
    """
  end

  @doc "message-circle-code.svg"
  def message_circle_code(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7.9 20A9 9 0 1 0 4 16.1L2 22Z" />
    <path d="m10 10-2 2 2 2" />
    <path d="m14 10 2 2-2 2" />
    </svg>
    """
  end

  @doc "message-circle-dashed.svg"
  def message_circle_dashed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13.5 3.1c-.5 0-1-.1-1.5-.1s-1 .1-1.5.1" />
    <path d="M19.3 6.8a10.45 10.45 0 0 0-2.1-2.1" />
    <path d="M20.9 13.5c.1-.5.1-1 .1-1.5s-.1-1-.1-1.5" />
    <path d="M17.2 19.3a10.45 10.45 0 0 0 2.1-2.1" />
    <path d="M10.5 20.9c.5.1 1 .1 1.5.1s1-.1 1.5-.1" />
    <path d="M3.5 17.5 2 22l4.5-1.5" />
    <path d="M3.1 10.5c0 .5-.1 1-.1 1.5s.1 1 .1 1.5" />
    <path d="M6.8 4.7a10.45 10.45 0 0 0-2.1 2.1" />
    </svg>
    """
  end

  @doc "message-circle-heart.svg"
  def message_circle_heart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7.9 20A9 9 0 1 0 4 16.1L2 22Z" />
    <path d="M15.8 9.2a2.5 2.5 0 0 0-3.5 0l-.3.4-.35-.3a2.42 2.42 0 1 0-3.2 3.6l3.6 3.5 3.6-3.5c1.2-1.2 1.1-2.7.2-3.7" />
    </svg>
    """
  end

  @doc "message-circle-more.svg"
  def message_circle_more(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7.9 20A9 9 0 1 0 4 16.1L2 22Z" />
    <path d="M8 12h.01" />
    <path d="M12 12h.01" />
    <path d="M16 12h.01" />
    </svg>
    """
  end

  @doc "message-circle-off.svg"
  def message_circle_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20.5 14.9A9 9 0 0 0 9.1 3.5" />
    <path d="m2 2 20 20" />
    <path d="M5.6 5.6C3 8.3 2.2 12.5 4 16l-2 6 6-2c3.4 1.8 7.6 1.1 10.3-1.7" />
    </svg>
    """
  end

  @doc "message-circle-plus.svg"
  def message_circle_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7.9 20A9 9 0 1 0 4 16.1L2 22Z" />
    <path d="M8 12h8" />
    <path d="M12 8v8" />
    </svg>
    """
  end

  @doc "message-circle-question.svg"
  def message_circle_question(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7.9 20A9 9 0 1 0 4 16.1L2 22Z" />
    <path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3" />
    <path d="M12 17h.01" />
    </svg>
    """
  end

  @doc "message-circle-reply.svg"
  def message_circle_reply(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7.9 20A9 9 0 1 0 4 16.1L2 22Z" />
    <path d="m10 15-3-3 3-3" />
    <path d="M7 12h7a2 2 0 0 1 2 2v1" />
    </svg>
    """
  end

  @doc "message-circle-warning.svg"
  def message_circle_warning(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7.9 20A9 9 0 1 0 4 16.1L2 22Z" />
    <path d="M12 8v4" />
    <path d="M12 16h.01" />
    </svg>
    """
  end

  @doc "message-circle-x.svg"
  def message_circle_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7.9 20A9 9 0 1 0 4 16.1L2 22Z" />
    <path d="m15 9-6 6" />
    <path d="m9 9 6 6" />
    </svg>
    """
  end

  @doc "message-circle.svg"
  def message_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7.9 20A9 9 0 1 0 4 16.1L2 22Z" />
    </svg>
    """
  end

  @doc "message-square-code.svg"
  def message_square_code(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z" />
    <path d="m10 8-2 2 2 2" />
    <path d="m14 8 2 2-2 2" />
    </svg>
    """
  end

  @doc "message-square-dashed.svg"
  def message_square_dashed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 6V5c0-1.1.9-2 2-2h2" />
    <path d="M11 3h3" />
    <path d="M18 3h1c1.1 0 2 .9 2 2" />
    <path d="M21 9v2" />
    <path d="M21 15c0 1.1-.9 2-2 2h-1" />
    <path d="M14 17h-3" />
    <path d="m7 17-4 4v-5" />
    <path d="M3 12v-2" />
    </svg>
    """
  end

  @doc "message-square-diff.svg"
  def message_square_diff(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m5 19-2 2V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2" />
    <path d="M9 10h6" />
    <path d="M12 7v6" />
    <path d="M9 17h6" />
    </svg>
    """
  end

  @doc "message-square-dot.svg"
  def message_square_dot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11.7 3H5a2 2 0 0 0-2 2v16l4-4h12a2 2 0 0 0 2-2v-2.7" />
    <circle cx="18" cy="6" r="3" />
    </svg>
    """
  end

  @doc "message-square-heart.svg"
  def message_square_heart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z" />
    <path d="M14.8 7.5a1.84 1.84 0 0 0-2.6 0l-.2.3-.3-.3a1.84 1.84 0 1 0-2.4 2.8L12 13l2.7-2.7c.9-.9.8-2.1.1-2.8" />
    </svg>
    """
  end

  @doc "message-square-more.svg"
  def message_square_more(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z" />
    <path d="M8 10h.01" />
    <path d="M12 10h.01" />
    <path d="M16 10h.01" />
    </svg>
    """
  end

  @doc "message-square-off.svg"
  def message_square_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 15V5a2 2 0 0 0-2-2H9" />
    <path d="m2 2 20 20" />
    <path d="M3.6 3.6c-.4.3-.6.8-.6 1.4v16l4-4h10" />
    </svg>
    """
  end

  @doc "message-square-plus.svg"
  def message_square_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z" />
    <path d="M12 7v6" />
    <path d="M9 10h6" />
    </svg>
    """
  end

  @doc "message-square-quote.svg"
  def message_square_quote(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z" />
    <path d="M8 12a2 2 0 0 0 2-2V8H8" />
    <path d="M14 12a2 2 0 0 0 2-2V8h-2" />
    </svg>
    """
  end

  @doc "message-square-reply.svg"
  def message_square_reply(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z" />
    <path d="m10 7-3 3 3 3" />
    <path d="M17 13v-1a2 2 0 0 0-2-2H7" />
    </svg>
    """
  end

  @doc "message-square-share.svg"
  def message_square_share(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 12v3a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h7" />
    <path d="M16 3h5v5" />
    <path d="m16 8 5-5" />
    </svg>
    """
  end

  @doc "message-square-text.svg"
  def message_square_text(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z" />
    <path d="M13 8H7" />
    <path d="M17 12H7" />
    </svg>
    """
  end

  @doc "message-square-warning.svg"
  def message_square_warning(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z" />
    <path d="M12 7v2" />
    <path d="M12 13h.01" />
    </svg>
    """
  end

  @doc "message-square-x.svg"
  def message_square_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z" />
    <path d="m14.5 7.5-5 5" />
    <path d="m9.5 7.5 5 5" />
    </svg>
    """
  end

  @doc "message-square.svg"
  def message_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z" />
    </svg>
    """
  end

  @doc "messages-square.svg"
  def messages_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14 9a2 2 0 0 1-2 2H6l-4 4V4c0-1.1.9-2 2-2h8a2 2 0 0 1 2 2v5Z" />
    <path d="M18 9h2a2 2 0 0 1 2 2v11l-4-4h-6a2 2 0 0 1-2-2v-1" />
    </svg>
    """
  end

  @doc "mic-2.svg"
  def mic_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m12 8-9.04 9.06a2.82 2.82 0 1 0 3.98 3.98L16 12" />
    <circle cx="17" cy="7" r="5" />
    </svg>
    """
  end

  @doc "mic-off.svg"
  def mic_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="2" x2="22" y1="2" y2="22" />
    <path d="M18.89 13.23A7.12 7.12 0 0 0 19 12v-2" />
    <path d="M5 10v2a7 7 0 0 0 12 5" />
    <path d="M15 9.34V5a3 3 0 0 0-5.68-1.33" />
    <path d="M9 9v3a3 3 0 0 0 5.12 2.12" />
    <line x1="12" x2="12" y1="19" y2="22" />
    </svg>
    """
  end

  @doc "mic.svg"
  def mic(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 2a3 3 0 0 0-3 3v7a3 3 0 0 0 6 0V5a3 3 0 0 0-3-3Z" />
    <path d="M19 10v2a7 7 0 0 1-14 0v-2" />
    <line x1="12" x2="12" y1="19" y2="22" />
    </svg>
    """
  end

  @doc "microscope.svg"
  def microscope(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 18h8" />
    <path d="M3 22h18" />
    <path d="M14 22a7 7 0 1 0 0-14h-1" />
    <path d="M9 14h2" />
    <path d="M9 12a2 2 0 0 1-2-2V6h6v4a2 2 0 0 1-2 2Z" />
    <path d="M12 6V3a1 1 0 0 0-1-1H9a1 1 0 0 0-1 1v3" />
    </svg>
    """
  end

  @doc "microwave.svg"
  def microwave(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="15" x="2" y="4" rx="2" />
    <rect width="8" height="7" x="6" y="8" rx="1" />
    <path d="M18 8v7" />
    <path d="M6 19v2" />
    <path d="M18 19v2" />
    </svg>
    """
  end

  @doc "milestone.svg"
  def milestone(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 6H5a2 2 0 0 0-2 2v3a2 2 0 0 0 2 2h13l4-3.5L18 6Z" />
    <path d="M12 13v8" />
    <path d="M12 3v3" />
    </svg>
    """
  end

  @doc "milk-off.svg"
  def milk_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2h8" />
    <path d="M9 2v1.343M15 2v2.789a4 4 0 0 0 .672 2.219l.656.984a4 4 0 0 1 .672 2.22v1.131M7.8 7.8l-.128.192A4 4 0 0 0 7 10.212V20a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2v-3" />
    <path d="M7 15a6.47 6.47 0 0 1 5 0 6.472 6.472 0 0 0 3.435.435" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "milk.svg"
  def milk(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2h8" />
    <path d="M9 2v2.789a4 4 0 0 1-.672 2.219l-.656.984A4 4 0 0 0 7 10.212V20a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2v-9.789a4 4 0 0 0-.672-2.219l-.656-.984A4 4 0 0 1 15 4.788V2" />
    <path d="M7 15a6.472 6.472 0 0 1 5 0 6.47 6.47 0 0 0 5 0" />
    </svg>
    """
  end

  @doc "minimize-2.svg"
  def minimize_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="4 14 10 14 10 20" />
    <polyline points="20 10 14 10 14 4" />
    <line x1="14" x2="21" y1="10" y2="3" />
    <line x1="3" x2="10" y1="21" y2="14" />
    </svg>
    """
  end

  @doc "minimize.svg"
  def minimize(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 3v3a2 2 0 0 1-2 2H3" />
    <path d="M21 8h-3a2 2 0 0 1-2-2V3" />
    <path d="M3 16h3a2 2 0 0 1 2 2v3" />
    <path d="M16 21v-3a2 2 0 0 1 2-2h3" />
    </svg>
    """
  end

  @doc "minus-circle.svg"
  def minus_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M8 12h8" />
    </svg>
    """
  end

  @doc "minus-square.svg"
  def minus_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M8 12h8" />
    </svg>
    """
  end

  @doc "minus.svg"
  def minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 12h14" />
    </svg>
    """
  end

  @doc "monitor-check.svg"
  def monitor_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m9 10 2 2 4-4" />
    <rect width="20" height="14" x="2" y="3" rx="2" />
    <path d="M12 17v4" />
    <path d="M8 21h8" />
    </svg>
    """
  end

  @doc "monitor-dot.svg"
  def monitor_dot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="19" cy="6" r="3" />
    <path d="M22 12v3a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h9" />
    <path d="M12 17v4" />
    <path d="M8 21h8" />
    </svg>
    """
  end

  @doc "monitor-down.svg"
  def monitor_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 13V7" />
    <path d="m15 10-3 3-3-3" />
    <rect width="20" height="14" x="2" y="3" rx="2" />
    <path d="M12 17v4" />
    <path d="M8 21h8" />
    </svg>
    """
  end

  @doc "monitor-off.svg"
  def monitor_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 17H4a2 2 0 0 1-2-2V5c0-1.5 1-2 1-2" />
    <path d="M22 15V5a2 2 0 0 0-2-2H9" />
    <path d="M8 21h8" />
    <path d="M12 17v4" />
    <path d="m2 2 20 20" />
    </svg>
    """
  end

  @doc "monitor-pause.svg"
  def monitor_pause(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 13V7" />
    <path d="M14 13V7" />
    <rect width="20" height="14" x="2" y="3" rx="2" />
    <path d="M12 17v4" />
    <path d="M8 21h8" />
    </svg>
    """
  end

  @doc "monitor-play.svg"
  def monitor_play(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m10 7 5 3-5 3Z" />
    <rect width="20" height="14" x="2" y="3" rx="2" />
    <path d="M12 17v4" />
    <path d="M8 21h8" />
    </svg>
    """
  end

  @doc "monitor-smartphone.svg"
  def monitor_smartphone(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 8V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v7a2 2 0 0 0 2 2h8" />
    <path d="M10 19v-3.96 3.15" />
    <path d="M7 19h5" />
    <rect width="6" height="10" x="16" y="12" rx="2" />
    </svg>
    """
  end

  @doc "monitor-speaker.svg"
  def monitor_speaker(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5.5 20H8" />
    <path d="M17 9h.01" />
    <rect width="10" height="16" x="12" y="4" rx="2" />
    <path d="M8 6H4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h4" />
    <circle cx="17" cy="15" r="1" />
    </svg>
    """
  end

  @doc "monitor-stop.svg"
  def monitor_stop(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect x="9" y="7" width="6" height="6" />
    <rect width="20" height="14" x="2" y="3" rx="2" />
    <path d="M12 17v4" />
    <path d="M8 21h8" />
    </svg>
    """
  end

  @doc "monitor-up.svg"
  def monitor_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m9 10 3-3 3 3" />
    <path d="M12 13V7" />
    <rect width="20" height="14" x="2" y="3" rx="2" />
    <path d="M12 17v4" />
    <path d="M8 21h8" />
    </svg>
    """
  end

  @doc "monitor-x.svg"
  def monitor_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m14.5 12.5-5-5" />
    <path d="m9.5 12.5 5-5" />
    <rect width="20" height="14" x="2" y="3" rx="2" />
    <path d="M12 17v4" />
    <path d="M8 21h8" />
    </svg>
    """
  end

  @doc "monitor.svg"
  def monitor(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="14" x="2" y="3" rx="2" />
    <line x1="8" x2="16" y1="21" y2="21" />
    <line x1="12" x2="12" y1="17" y2="21" />
    </svg>
    """
  end

  @doc "moon-star.svg"
  def moon_star(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 3a6 6 0 0 0 9 9 9 9 0 1 1-9-9Z" />
    <path d="M19 3v4" />
    <path d="M21 5h-4" />
    </svg>
    """
  end

  @doc "moon.svg"
  def moon(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 3a6 6 0 0 0 9 9 9 9 0 1 1-9-9Z" />
    </svg>
    """
  end

  @doc "more-horizontal.svg"
  def more_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="1" />
    <circle cx="19" cy="12" r="1" />
    <circle cx="5" cy="12" r="1" />
    </svg>
    """
  end

  @doc "more-vertical.svg"
  def more_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="1" />
    <circle cx="12" cy="5" r="1" />
    <circle cx="12" cy="19" r="1" />
    </svg>
    """
  end

  @doc "mountain-snow.svg"
  def mountain_snow(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m8 3 4 8 5-5 5 15H2L8 3z" />
    <path d="M4.14 15.08c2.62-1.57 5.24-1.43 7.86.42 2.74 1.94 5.49 2 8.23.19" />
    </svg>
    """
  end

  @doc "mountain.svg"
  def mountain(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m8 3 4 8 5-5 5 15H2L8 3z" />
    </svg>
    """
  end

  @doc "mouse-pointer-2.svg"
  def mouse_pointer_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m4 4 7.07 17 2.51-7.39L21 11.07z" />
    </svg>
    """
  end

  @doc "mouse-pointer-click.svg"
  def mouse_pointer_click(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m9 9 5 12 1.8-5.2L21 14Z" />
    <path d="M7.2 2.2 8 5.1" />
    <path d="m5.1 8-2.9-.8" />
    <path d="M14 4.1 12 6" />
    <path d="m6 12-1.9 2" />
    </svg>
    """
  end

  @doc "mouse-pointer-square-dashed.svg"
  def mouse_pointer_square_dashed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 3a2 2 0 0 0-2 2" />
    <path d="M19 3a2 2 0 0 1 2 2" />
    <path d="m12 12 4 10 1.7-4.3L22 16Z" />
    <path d="M5 21a2 2 0 0 1-2-2" />
    <path d="M9 3h1" />
    <path d="M9 21h2" />
    <path d="M14 3h1" />
    <path d="M3 9v1" />
    <path d="M21 9v2" />
    <path d="M3 14v1" />
    </svg>
    """
  end

  @doc "mouse-pointer-square.svg"
  def mouse_pointer_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 11V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h6" />
    <path d="m12 12 4 10 1.7-4.3L22 16Z" />
    </svg>
    """
  end

  @doc "mouse-pointer.svg"
  def mouse_pointer(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 3 7.07 16.97 2.51-7.39 7.39-2.51L3 3z" />
    <path d="m13 13 6 6" />
    </svg>
    """
  end

  @doc "mouse.svg"
  def mouse(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect x="5" y="2" width="14" height="20" rx="7" />
    <path d="M12 6v4" />
    </svg>
    """
  end

  @doc "move-3d.svg"
  def move_3d(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 3v16h16" />
    <path d="m5 19 6-6" />
    <path d="m2 6 3-3 3 3" />
    <path d="m18 16 3 3-3 3" />
    </svg>
    """
  end

  @doc "move-diagonal-2.svg"
  def move_diagonal_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="5 11 5 5 11 5" />
    <polyline points="19 13 19 19 13 19" />
    <line x1="5" x2="19" y1="5" y2="19" />
    </svg>
    """
  end

  @doc "move-diagonal.svg"
  def move_diagonal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="13 5 19 5 19 11" />
    <polyline points="11 19 5 19 5 13" />
    <line x1="19" x2="5" y1="5" y2="19" />
    </svg>
    """
  end

  @doc "move-down-left.svg"
  def move_down_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 19H5V13" />
    <path d="M19 5L5 19" />
    </svg>
    """
  end

  @doc "move-down-right.svg"
  def move_down_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19 13V19H13" />
    <path d="M5 5L19 19" />
    </svg>
    """
  end

  @doc "move-down.svg"
  def move_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 18L12 22L16 18" />
    <path d="M12 2V22" />
    </svg>
    """
  end

  @doc "move-horizontal.svg"
  def move_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="18 8 22 12 18 16" />
    <polyline points="6 8 2 12 6 16" />
    <line x1="2" x2="22" y1="12" y2="12" />
    </svg>
    """
  end

  @doc "move-left.svg"
  def move_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 8L2 12L6 16" />
    <path d="M2 12H22" />
    </svg>
    """
  end

  @doc "move-right.svg"
  def move_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 8L22 12L18 16" />
    <path d="M2 12H22" />
    </svg>
    """
  end

  @doc "move-up-left.svg"
  def move_up_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 11V5H11" />
    <path d="M5 5L19 19" />
    </svg>
    """
  end

  @doc "move-up-right.svg"
  def move_up_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13 5H19V11" />
    <path d="M19 5L5 19" />
    </svg>
    """
  end

  @doc "move-up.svg"
  def move_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 6L12 2L16 6" />
    <path d="M12 2V22" />
    </svg>
    """
  end

  @doc "move-vertical.svg"
  def move_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="8 18 12 22 16 18" />
    <polyline points="8 6 12 2 16 6" />
    <line x1="12" x2="12" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "move.svg"
  def move(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="5 9 2 12 5 15" />
    <polyline points="9 5 12 2 15 5" />
    <polyline points="15 19 12 22 9 19" />
    <polyline points="19 9 22 12 19 15" />
    <line x1="2" x2="22" y1="12" y2="12" />
    <line x1="12" x2="12" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "music-2.svg"
  def music_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="8" cy="18" r="4" />
    <path d="M12 18V2l7 4" />
    </svg>
    """
  end

  @doc "music-3.svg"
  def music_3(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="18" r="4" />
    <path d="M16 18V2" />
    </svg>
    """
  end

  @doc "music-4.svg"
  def music_4(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 18V5l12-2v13" />
    <path d="m9 9 12-2" />
    <circle cx="6" cy="18" r="3" />
    <circle cx="18" cy="16" r="3" />
    </svg>
    """
  end

  @doc "music.svg"
  def music(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 18V5l12-2v13" />
    <circle cx="6" cy="18" r="3" />
    <circle cx="18" cy="16" r="3" />
    </svg>
    """
  end

  @doc "navigation-2-off.svg"
  def navigation_2_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9.31 9.31 5 21l7-4 7 4-1.17-3.17" />
    <path d="M14.53 8.88 12 2l-1.17 3.17" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "navigation-2.svg"
  def navigation_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="12 2 19 21 12 17 5 21 12 2" />
    </svg>
    """
  end

  @doc "navigation-off.svg"
  def navigation_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8.43 8.43 3 11l8 2 2 8 2.57-5.43" />
    <path d="M17.39 11.73 22 2l-9.73 4.61" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "navigation.svg"
  def navigation(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="3 11 22 2 13 21 11 13 3 11" />
    </svg>
    """
  end

  @doc "network.svg"
  def network(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect x="16" y="16" width="6" height="6" rx="1" />
    <rect x="2" y="16" width="6" height="6" rx="1" />
    <rect x="9" y="2" width="6" height="6" rx="1" />
    <path d="M5 16v-3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v3" />
    <path d="M12 12V8" />
    </svg>
    """
  end

  @doc "newspaper.svg"
  def newspaper(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22h16a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H8a2 2 0 0 0-2 2v16a2 2 0 0 1-2 2Zm0 0a2 2 0 0 1-2-2v-9c0-1.1.9-2 2-2h2" />
    <path d="M18 14h-8" />
    <path d="M15 18h-5" />
    <path d="M10 6h8v4h-8V6Z" />
    </svg>
    """
  end

  @doc "nfc.svg"
  def nfc(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 8.32a7.43 7.43 0 0 1 0 7.36" />
    <path d="M9.46 6.21a11.76 11.76 0 0 1 0 11.58" />
    <path d="M12.91 4.1a15.91 15.91 0 0 1 .01 15.8" />
    <path d="M16.37 2a20.16 20.16 0 0 1 0 20" />
    </svg>
    """
  end

  @doc "notebook-pen.svg"
  def notebook_pen(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13.4 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-7.4" />
    <path d="M2 6h4" />
    <path d="M2 10h4" />
    <path d="M2 14h4" />
    <path d="M2 18h4" />
    <path d="M18.4 2.6a2.17 2.17 0 0 1 3 3L16 11l-4 1 1-4Z" />
    </svg>
    """
  end

  @doc "notebook-tabs.svg"
  def notebook_tabs(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 6h4" />
    <path d="M2 10h4" />
    <path d="M2 14h4" />
    <path d="M2 18h4" />
    <rect width="16" height="20" x="4" y="2" rx="2" />
    <path d="M15 2v20" />
    <path d="M15 7h5" />
    <path d="M15 12h5" />
    <path d="M15 17h5" />
    </svg>
    """
  end

  @doc "notebook-text.svg"
  def notebook_text(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 6h4" />
    <path d="M2 10h4" />
    <path d="M2 14h4" />
    <path d="M2 18h4" />
    <rect width="16" height="20" x="4" y="2" rx="2" />
    <path d="M9.5 8h5" />
    <path d="M9.5 12H16" />
    <path d="M9.5 16H14" />
    </svg>
    """
  end

  @doc "notebook.svg"
  def notebook(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 6h4" />
    <path d="M2 10h4" />
    <path d="M2 14h4" />
    <path d="M2 18h4" />
    <rect width="16" height="20" x="4" y="2" rx="2" />
    <path d="M16 2v20" />
    </svg>
    """
  end

  @doc "notepad-text-dashed.svg"
  def notepad_text_dashed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2v4" />
    <path d="M12 2v4" />
    <path d="M16 2v4" />
    <path d="M16 4h2a2 2 0 0 1 2 2v2" />
    <path d="M20 12v2" />
    <path d="M20 18v2a2 2 0 0 1-2 2h-1" />
    <path d="M13 22h-2" />
    <path d="M7 22H6a2 2 0 0 1-2-2v-2" />
    <path d="M4 14v-2" />
    <path d="M4 8V6a2 2 0 0 1 2-2h2" />
    <path d="M8 10h6" />
    <path d="M8 14h8" />
    <path d="M8 18h5" />
    </svg>
    """
  end

  @doc "notepad-text.svg"
  def notepad_text(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 2v4" />
    <path d="M12 2v4" />
    <path d="M16 2v4" />
    <rect width="16" height="18" x="4" y="4" rx="2" />
    <path d="M8 10h6" />
    <path d="M8 14h8" />
    <path d="M8 18h5" />
    </svg>
    """
  end

  @doc "nut-off.svg"
  def nut_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 4V2" />
    <path d="M5 10v4a7.004 7.004 0 0 0 5.277 6.787c.412.104.802.292 1.102.592L12 22l.621-.621c.3-.3.69-.488 1.102-.592a7.01 7.01 0 0 0 4.125-2.939" />
    <path d="M19 10v3.343" />
    <path d="M12 12c-1.349-.573-1.905-1.005-2.5-2-.546.902-1.048 1.353-2.5 2-1.018-.644-1.46-1.08-2-2-1.028.71-1.69.918-3 1 1.081-1.048 1.757-2.03 2-3 .194-.776.84-1.551 1.79-2.21m11.654 5.997c.887-.457 1.28-.891 1.556-1.787 1.032.916 1.683 1.157 3 1-1.297-1.036-1.758-2.03-2-3-.5-2-4-4-8-4-.74 0-1.461.068-2.15.192" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "nut.svg"
  def nut(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 4V2" />
    <path d="M5 10v4a7.004 7.004 0 0 0 5.277 6.787c.412.104.802.292 1.102.592L12 22l.621-.621c.3-.3.69-.488 1.102-.592A7.003 7.003 0 0 0 19 14v-4" />
    <path d="M12 4C8 4 4.5 6 4 8c-.243.97-.919 1.952-2 3 1.31-.082 1.972-.29 3-1 .54.92.982 1.356 2 2 1.452-.647 1.954-1.098 2.5-2 .595.995 1.151 1.427 2.5 2 1.31-.621 1.862-1.058 2.5-2 .629.977 1.162 1.423 2.5 2 1.209-.548 1.68-.967 2-2 1.032.916 1.683 1.157 3 1-1.297-1.036-1.758-2.03-2-3-.5-2-4-4-8-4Z" />
    </svg>
    """
  end

  @doc "octagon.svg"
  def octagon(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2" />
    </svg>
    """
  end

  @doc "option.svg"
  def option(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 3h6l6 18h6" />
    <path d="M14 3h7" />
    </svg>
    """
  end

  @doc "orbit.svg"
  def orbit(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="3" />
    <circle cx="19" cy="5" r="2" />
    <circle cx="5" cy="19" r="2" />
    <path d="M10.4 21.9a10 10 0 0 0 9.941-15.416" />
    <path d="M13.5 2.1a10 10 0 0 0-9.841 15.416" />
    </svg>
    """
  end

  @doc "outdent.svg"
  def outdent(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="7 8 3 12 7 16" />
    <line x1="21" x2="11" y1="12" y2="12" />
    <line x1="21" x2="11" y1="6" y2="6" />
    <line x1="21" x2="11" y1="18" y2="18" />
    </svg>
    """
  end

  @doc "package-2.svg"
  def package_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 9h18v10a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V9Z" />
    <path d="m3 9 2.45-4.9A2 2 0 0 1 7.24 3h9.52a2 2 0 0 1 1.8 1.1L21 9" />
    <path d="M12 3v6" />
    </svg>
    """
  end

  @doc "package-check.svg"
  def package_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m16 16 2 2 4-4" />
    <path d="M21 10V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l2-1.14" />
    <path d="m7.5 4.27 9 5.15" />
    <polyline points="3.29 7 12 12 20.71 7" />
    <line x1="12" x2="12" y1="22" y2="12" />
    </svg>
    """
  end

  @doc "package-minus.svg"
  def package_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 16h6" />
    <path d="M21 10V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l2-1.14" />
    <path d="m7.5 4.27 9 5.15" />
    <polyline points="3.29 7 12 12 20.71 7" />
    <line x1="12" x2="12" y1="22" y2="12" />
    </svg>
    """
  end

  @doc "package-open.svg"
  def package_open(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20.91 8.84 8.56 2.23a1.93 1.93 0 0 0-1.81 0L3.1 4.13a2.12 2.12 0 0 0-.05 3.69l12.22 6.93a2 2 0 0 0 1.94 0L21 12.51a2.12 2.12 0 0 0-.09-3.67Z" />
    <path d="m3.09 8.84 12.35-6.61a1.93 1.93 0 0 1 1.81 0l3.65 1.9a2.12 2.12 0 0 1 .1 3.69L8.73 14.75a2 2 0 0 1-1.94 0L3 12.51a2.12 2.12 0 0 1 .09-3.67Z" />
    <line x1="12" x2="12" y1="22" y2="13" />
    <path d="M20 13.5v3.37a2.06 2.06 0 0 1-1.11 1.83l-6 3.08a1.93 1.93 0 0 1-1.78 0l-6-3.08A2.06 2.06 0 0 1 4 16.87V13.5" />
    </svg>
    """
  end

  @doc "package-plus.svg"
  def package_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 16h6" />
    <path d="M19 13v6" />
    <path d="M21 10V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l2-1.14" />
    <path d="m7.5 4.27 9 5.15" />
    <polyline points="3.29 7 12 12 20.71 7" />
    <line x1="12" x2="12" y1="22" y2="12" />
    </svg>
    """
  end

  @doc "package-search.svg"
  def package_search(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 10V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l2-1.14" />
    <path d="m7.5 4.27 9 5.15" />
    <polyline points="3.29 7 12 12 20.71 7" />
    <line x1="12" x2="12" y1="22" y2="12" />
    <circle cx="18.5" cy="15.5" r="2.5" />
    <path d="M20.27 17.27 22 19" />
    </svg>
    """
  end

  @doc "package-x.svg"
  def package_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 10V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l2-1.14" />
    <path d="m7.5 4.27 9 5.15" />
    <polyline points="3.29 7 12 12 20.71 7" />
    <line x1="12" x2="12" y1="22" y2="12" />
    <path d="m17 13 5 5m-5 0 5-5" />
    </svg>
    """
  end

  @doc "package.svg"
  def package(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m7.5 4.27 9 5.15" />
    <path d="M21 8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16Z" />
    <path d="m3.3 7 8.7 5 8.7-5" />
    <path d="M12 22V12" />
    </svg>
    """
  end

  @doc "paint-bucket.svg"
  def paint_bucket(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m19 11-8-8-8.6 8.6a2 2 0 0 0 0 2.8l5.2 5.2c.8.8 2 .8 2.8 0L19 11Z" />
    <path d="m5 2 5 5" />
    <path d="M2 13h15" />
    <path d="M22 20a2 2 0 1 1-4 0c0-1.6 1.7-2.4 2-4 .3 1.6 2 2.4 2 4Z" />
    </svg>
    """
  end

  @doc "paint-roller.svg"
  def paint_roller(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="16" height="6" x="2" y="2" rx="2" />
    <path d="M10 16v-2a2 2 0 0 1 2-2h8a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2h-2" />
    <rect width="4" height="6" x="8" y="16" rx="1" />
    </svg>
    """
  end

  @doc "paintbrush-2.svg"
  def paintbrush_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14 19.9V16h3a2 2 0 0 0 2-2v-2H5v2c0 1.1.9 2 2 2h3v3.9a2 2 0 1 0 4 0Z" />
    <path d="M6 12V2h12v10" />
    <path d="M14 2v4" />
    <path d="M10 2v2" />
    </svg>
    """
  end

  @doc "paintbrush.svg"
  def paintbrush(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18.37 2.63 14 7l-1.59-1.59a2 2 0 0 0-2.82 0L8 7l9 9 1.59-1.59a2 2 0 0 0 0-2.82L17 10l4.37-4.37a2.12 2.12 0 1 0-3-3Z" />
    <path d="M9 8c-2 3-4 3.5-7 4l8 10c2-1 6-5 6-7" />
    <path d="M14.5 17.5 4.5 15" />
    </svg>
    """
  end

  @doc "palette.svg"
  def palette(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="13.5" cy="6.5" r=".5" fill="currentColor" />
    <circle cx="17.5" cy="10.5" r=".5" fill="currentColor" />
    <circle cx="8.5" cy="7.5" r=".5" fill="currentColor" />
    <circle cx="6.5" cy="12.5" r=".5" fill="currentColor" />
    <path d="M12 2C6.5 2 2 6.5 2 12s4.5 10 10 10c.926 0 1.648-.746 1.648-1.688 0-.437-.18-.835-.437-1.125-.29-.289-.438-.652-.438-1.125a1.64 1.64 0 0 1 1.668-1.668h1.996c3.051 0 5.555-2.503 5.555-5.554C21.965 6.012 17.461 2 12 2z" />
    </svg>
    """
  end

  @doc "palmtree.svg"
  def palmtree(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13 8c0-2.76-2.46-5-5.5-5S2 5.24 2 8h2l1-1 1 1h4" />
    <path d="M13 7.14A5.82 5.82 0 0 1 16.5 6c3.04 0 5.5 2.24 5.5 5h-3l-1-1-1 1h-3" />
    <path d="M5.89 9.71c-2.15 2.15-2.3 5.47-.35 7.43l4.24-4.25.7-.7.71-.71 2.12-2.12c-1.95-1.96-5.27-1.8-7.42.35z" />
    <path d="M11 15.5c.5 2.5-.17 4.5-1 6.5h4c2-5.5-.5-12-1-14" />
    </svg>
    """
  end

  @doc "panel-bottom-close.svg"
  def panel_bottom_close(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M3 15h18" />
    <path d="m15 8-3 3-3-3" />
    </svg>
    """
  end

  @doc "panel-bottom-dashed.svg"
  def panel_bottom_dashed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M14 15h1" />
    <path d="M19 15h2" />
    <path d="M3 15h2" />
    <path d="M9 15h1" />
    </svg>
    """
  end

  @doc "panel-bottom-open.svg"
  def panel_bottom_open(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M3 15h18" />
    <path d="m9 10 3-3 3 3" />
    </svg>
    """
  end

  @doc "panel-bottom.svg"
  def panel_bottom(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M3 15h18" />
    </svg>
    """
  end

  @doc "panel-left-close.svg"
  def panel_left_close(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M9 3v18" />
    <path d="m16 15-3-3 3-3" />
    </svg>
    """
  end

  @doc "panel-left-dashed.svg"
  def panel_left_dashed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M9 14v1" />
    <path d="M9 19v2" />
    <path d="M9 3v2" />
    <path d="M9 9v1" />
    </svg>
    """
  end

  @doc "panel-left-open.svg"
  def panel_left_open(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M9 3v18" />
    <path d="m14 9 3 3-3 3" />
    </svg>
    """
  end

  @doc "panel-left.svg"
  def panel_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M9 3v18" />
    </svg>
    """
  end

  @doc "panel-right-close.svg"
  def panel_right_close(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M15 3v18" />
    <path d="m8 9 3 3-3 3" />
    </svg>
    """
  end

  @doc "panel-right-dashed.svg"
  def panel_right_dashed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M15 14v1" />
    <path d="M15 19v2" />
    <path d="M15 3v2" />
    <path d="M15 9v1" />
    </svg>
    """
  end

  @doc "panel-right-open.svg"
  def panel_right_open(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M15 3v18" />
    <path d="m10 15-3-3 3-3" />
    </svg>
    """
  end

  @doc "panel-right.svg"
  def panel_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M15 3v18" />
    </svg>
    """
  end

  @doc "panel-top-close.svg"
  def panel_top_close(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M3 9h18" />
    <path d="m9 16 3-3 3 3" />
    </svg>
    """
  end

  @doc "panel-top-dashed.svg"
  def panel_top_dashed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M14 9h1" />
    <path d="M19 9h2" />
    <path d="M3 9h2" />
    <path d="M9 9h1" />
    </svg>
    """
  end

  @doc "panel-top-open.svg"
  def panel_top_open(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M3 9h18" />
    <path d="m15 14-3 3-3-3" />
    </svg>
    """
  end

  @doc "panel-top.svg"
  def panel_top(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M3 9h18" />
    </svg>
    """
  end

  @doc "panels-left-bottom.svg"
  def panels_left_bottom(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M9 3v18" />
    <path d="M9 15h12" />
    </svg>
    """
  end

  @doc "panels-right-bottom.svg"
  def panels_right_bottom(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M3 15h12" />
    <path d="M15 3v18" />
    </svg>
    """
  end

  @doc "panels-top-left.svg"
  def panels_top_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M3 9h18" />
    <path d="M9 21V9" />
    </svg>
    """
  end

  @doc "paperclip.svg"
  def paperclip(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m21.44 11.05-9.19 9.19a6 6 0 0 1-8.49-8.49l8.57-8.57A4 4 0 1 1 18 8.84l-8.59 8.57a2 2 0 0 1-2.83-2.83l8.49-8.48" />
    </svg>
    """
  end

  @doc "parentheses.svg"
  def parentheses(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 21s-4-3-4-9 4-9 4-9" />
    <path d="M16 3s4 3 4 9-4 9-4 9" />
    </svg>
    """
  end

  @doc "parking-circle-off.svg"
  def parking_circle_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="m5 5 14 14" />
    <path d="M13 13a3 3 0 1 0 0-6H9v2" />
    <path d="M9 17v-2.34" />
    </svg>
    """
  end

  @doc "parking-circle.svg"
  def parking_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M9 17V7h4a3 3 0 0 1 0 6H9" />
    </svg>
    """
  end

  @doc "parking-meter.svg"
  def parking_meter(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 9a3 3 0 1 1 6 0" />
    <path d="M12 12v3" />
    <path d="M11 15h2" />
    <path d="M19 9a7 7 0 1 0-13.6 2.3C6.4 14.4 8 19 8 19h8s1.6-4.6 2.6-7.7c.3-.8.4-1.5.4-2.3" />
    <path d="M12 19v3" />
    </svg>
    """
  end

  @doc "parking-square-off.svg"
  def parking_square_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.6 3.6A2 2 0 0 1 5 3h14a2 2 0 0 1 2 2v14a2 2 0 0 1-.59 1.41" />
    <path d="M3 8.7V19a2 2 0 0 0 2 2h10.3" />
    <path d="m2 2 20 20" />
    <path d="M13 13a3 3 0 1 0 0-6H9v2" />
    <path d="M9 17v-2.3" />
    </svg>
    """
  end

  @doc "parking-square.svg"
  def parking_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M9 17V7h4a3 3 0 0 1 0 6H9" />
    </svg>
    """
  end

  @doc "party-popper.svg"
  def party_popper(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5.8 11.3 2 22l10.7-3.79" />
    <path d="M4 3h.01" />
    <path d="M22 8h.01" />
    <path d="M15 2h.01" />
    <path d="M22 20h.01" />
    <path d="m22 2-2.24.75a2.9 2.9 0 0 0-1.96 3.12v0c.1.86-.57 1.63-1.45 1.63h-.38c-.86 0-1.6.6-1.76 1.44L14 10" />
    <path d="m22 13-.82-.33c-.86-.34-1.82.2-1.98 1.11v0c-.11.7-.72 1.22-1.43 1.22H17" />
    <path d="m11 2 .33.82c.34.86-.2 1.82-1.11 1.98v0C9.52 4.9 9 5.52 9 6.23V7" />
    <path d="M11 13c1.93 1.93 2.83 4.17 2 5-.83.83-3.07-.07-5-2-1.93-1.93-2.83-4.17-2-5 .83-.83 3.07.07 5 2Z" />
    </svg>
    """
  end

  @doc "pause-circle.svg"
  def pause_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <line x1="10" x2="10" y1="15" y2="9" />
    <line x1="14" x2="14" y1="15" y2="9" />
    </svg>
    """
  end

  @doc "pause-octagon.svg"
  def pause_octagon(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 15V9" />
    <path d="M14 15V9" />
    <path d="M7.714 2h8.572L22 7.714v8.572L16.286 22H7.714L2 16.286V7.714L7.714 2z" />
    </svg>
    """
  end

  @doc "pause.svg"
  def pause(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="4" height="16" x="6" y="4" />
    <rect width="4" height="16" x="14" y="4" />
    </svg>
    """
  end

  @doc "paw-print.svg"
  def paw_print(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="11" cy="4" r="2" />
    <circle cx="18" cy="8" r="2" />
    <circle cx="20" cy="16" r="2" />
    <path d="M9 10a5 5 0 0 1 5 5v3.5a3.5 3.5 0 0 1-6.84 1.045Q6.52 17.48 4.46 16.84A3.5 3.5 0 0 1 5.5 10Z" />
    </svg>
    """
  end

  @doc "pc-case.svg"
  def pc_case(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="14" height="20" x="5" y="2" rx="2" />
    <path d="M15 14h.01" />
    <path d="M9 6h6" />
    <path d="M9 10h6" />
    </svg>
    """
  end

  @doc "pen-line.svg"
  def pen_line(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 20h9" />
    <path d="M16.5 3.5a2.12 2.12 0 0 1 3 3L7 19l-4 1 1-4Z" />
    </svg>
    """
  end

  @doc "pen-tool.svg"
  def pen_tool(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m12 19 7-7 3 3-7 7-3-3z" />
    <path d="m18 13-1.5-7.5L2 2l3.5 14.5L13 18l5-5z" />
    <path d="m2 2 7.586 7.586" />
    <circle cx="11" cy="11" r="2" />
    </svg>
    """
  end

  @doc "pen.svg"
  def pen(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 3a2.85 2.83 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5Z" />
    </svg>
    """
  end

  @doc "pencil-line.svg"
  def pencil_line(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 20h9" />
    <path d="M16.5 3.5a2.12 2.12 0 0 1 3 3L7 19l-4 1 1-4Z" />
    <path d="m15 5 3 3" />
    </svg>
    """
  end

  @doc "pencil-ruler.svg"
  def pencil_ruler(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m15 5 4 4" />
    <path d="M13 7 8.7 2.7a2.41 2.41 0 0 0-3.4 0L2.7 5.3a2.41 2.41 0 0 0 0 3.4L7 13" />
    <path d="m8 6 2-2" />
    <path d="m2 22 5.5-1.5L21.17 6.83a2.82 2.82 0 0 0-4-4L3.5 16.5Z" />
    <path d="m18 16 2-2" />
    <path d="m17 11 4.3 4.3c.94.94.94 2.46 0 3.4l-2.6 2.6c-.94.94-2.46.94-3.4 0L11 17" />
    </svg>
    """
  end

  @doc "pencil.svg"
  def pencil(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 3a2.85 2.83 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5Z" />
    <path d="m15 5 4 4" />
    </svg>
    """
  end

  @doc "pentagon.svg"
  def pentagon(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.5 8.7c-.7.5-1 1.4-.7 2.2l2.8 8.7c.3.8 1 1.4 1.9 1.4h9.1c.9 0 1.6-.6 1.9-1.4l2.8-8.7c.3-.8 0-1.7-.7-2.2l-7.4-5.3a2.1 2.1 0 0 0-2.4 0Z" />
    </svg>
    """
  end

  @doc "percent-circle.svg"
  def percent_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="m15 9-6 6" />
    <path d="M9 9h.01" />
    <path d="M15 15h.01" />
    </svg>
    """
  end

  @doc "percent-diamond.svg"
  def percent_diamond(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2.7 10.3a2.41 2.41 0 0 0 0 3.41l7.59 7.59a2.41 2.41 0 0 0 3.41 0l7.59-7.59a2.41 2.41 0 0 0 0-3.41L13.7 2.71a2.41 2.41 0 0 0-3.41 0Z" />
    <path d="M9.2 9.2h.01" />
    <path d="m14.5 9.5-5 5" />
    <path d="M14.7 14.8h.01" />
    </svg>
    """
  end

  @doc "percent-square.svg"
  def percent_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="m15 9-6 6" />
    <path d="M9 9h.01" />
    <path d="M15 15h.01" />
    </svg>
    """
  end

  @doc "percent.svg"
  def percent(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="19" x2="5" y1="5" y2="19" />
    <circle cx="6.5" cy="6.5" r="2.5" />
    <circle cx="17.5" cy="17.5" r="2.5" />
    </svg>
    """
  end

  @doc "person-standing.svg"
  def person_standing(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="5" r="1" />
    <path d="m9 20 3-6 3 6" />
    <path d="m6 8 6 2 6-2" />
    <path d="M12 10v4" />
    </svg>
    """
  end

  @doc "phone-call.svg"
  def phone_call(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z" />
    <path d="M14.05 2a9 9 0 0 1 8 7.94" />
    <path d="M14.05 6A5 5 0 0 1 18 10" />
    </svg>
    """
  end

  @doc "phone-forwarded.svg"
  def phone_forwarded(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="18 2 22 6 18 10" />
    <line x1="14" x2="22" y1="6" y2="6" />
    <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z" />
    </svg>
    """
  end

  @doc "phone-incoming.svg"
  def phone_incoming(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="16 2 16 8 22 8" />
    <line x1="22" x2="16" y1="2" y2="8" />
    <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z" />
    </svg>
    """
  end

  @doc "phone-missed.svg"
  def phone_missed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="22" x2="16" y1="2" y2="8" />
    <line x1="16" x2="22" y1="2" y2="8" />
    <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z" />
    </svg>
    """
  end

  @doc "phone-off.svg"
  def phone_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10.68 13.31a16 16 0 0 0 3.41 2.6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7 2 2 0 0 1 1.72 2v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.42 19.42 0 0 1-3.33-2.67m-2.67-3.34a19.79 19.79 0 0 1-3.07-8.63A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91" />
    <line x1="22" x2="2" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "phone-outgoing.svg"
  def phone_outgoing(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="22 8 22 2 16 2" />
    <line x1="16" x2="22" y1="8" y2="2" />
    <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z" />
    </svg>
    """
  end

  @doc "phone.svg"
  def phone(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z" />
    </svg>
    """
  end

  @doc "pi-square.svg"
  def pi_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M7 7h10" />
    <path d="M10 7v10" />
    <path d="M16 17a2 2 0 0 1-2-2V7" />
    </svg>
    """
  end

  @doc "pi.svg"
  def pi(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="9" x2="9" y1="4" y2="20" />
    <path d="M4 7c0-1.7 1.3-3 3-3h13" />
    <path d="M18 20c-1.7 0-3-1.3-3-3V4" />
    </svg>
    """
  end

  @doc "piano.svg"
  def piano(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18.5 8c-1.4 0-2.6-.8-3.2-2A6.87 6.87 0 0 0 2 9v11a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-8.5C22 9.6 20.4 8 18.5 8" />
    <path d="M2 14h20" />
    <path d="M6 14v4" />
    <path d="M10 14v4" />
    <path d="M14 14v4" />
    <path d="M18 14v4" />
    </svg>
    """
  end

  @doc "picture-in-picture-2.svg"
  def picture_in_picture_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 9V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v10c0 1.1.9 2 2 2h4" />
    <rect width="10" height="7" x="12" y="13" rx="2" />
    </svg>
    """
  end

  @doc "picture-in-picture.svg"
  def picture_in_picture(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 4.5v5H3m-1-6 6 6m13 0v-3c0-1.16-.84-2-2-2h-7m-9 9v2c0 1.05.95 2 2 2h3" />
    <rect width="10" height="7" x="12" y="13.5" ry="2" />
    </svg>
    """
  end

  @doc "pie-chart.svg"
  def pie_chart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21.21 15.89A10 10 0 1 1 8 2.83" />
    <path d="M22 12A10 10 0 0 0 12 2v10z" />
    </svg>
    """
  end

  @doc "piggy-bank.svg"
  def piggy_bank(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19 5c-1.5 0-2.8 1.4-3 2-3.5-1.5-11-.3-11 5 0 1.8 0 3 2 4.5V20h4v-2h3v2h4v-4c1-.5 1.7-1 2-2h2v-4h-2c0-1-.5-1.5-1-2h0V5z" />
    <path d="M2 9v1c0 1.1.9 2 2 2h1" />
    <path d="M16 11h0" />
    </svg>
    """
  end

  @doc "pilcrow-square.svg"
  def pilcrow_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M12 12H9.5a2.5 2.5 0 0 1 0-5H17" />
    <path d="M12 7v10" />
    <path d="M16 7v10" />
    </svg>
    """
  end

  @doc "pilcrow.svg"
  def pilcrow(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13 4v16" />
    <path d="M17 4v16" />
    <path d="M19 4H9.5a4.5 4.5 0 0 0 0 9H13" />
    </svg>
    """
  end

  @doc "pill.svg"
  def pill(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m10.5 20.5 10-10a4.95 4.95 0 1 0-7-7l-10 10a4.95 4.95 0 1 0 7 7Z" />
    <path d="m8.5 8.5 7 7" />
    </svg>
    """
  end

  @doc "pin-off.svg"
  def pin_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="2" x2="22" y1="2" y2="22" />
    <line x1="12" x2="12" y1="17" y2="22" />
    <path d="M9 9v1.76a2 2 0 0 1-1.11 1.79l-1.78.9A2 2 0 0 0 5 15.24V17h12" />
    <path d="M15 9.34V6h1a2 2 0 0 0 0-4H7.89" />
    </svg>
    """
  end

  @doc "pin.svg"
  def pin(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="12" x2="12" y1="17" y2="22" />
    <path d="M5 17h14v-1.76a2 2 0 0 0-1.11-1.79l-1.78-.9A2 2 0 0 1 15 10.76V6h1a2 2 0 0 0 0-4H8a2 2 0 0 0 0 4h1v4.76a2 2 0 0 1-1.11 1.79l-1.78.9A2 2 0 0 0 5 15.24Z" />
    </svg>
    """
  end

  @doc "pipette.svg"
  def pipette(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m2 22 1-1h3l9-9" />
    <path d="M3 21v-3l9-9" />
    <path d="m15 6 3.4-3.4a2.1 2.1 0 1 1 3 3L18 9l.4.4a2.1 2.1 0 1 1-3 3l-3.8-3.8a2.1 2.1 0 1 1 3-3l.4.4Z" />
    </svg>
    """
  end

  @doc "pizza.svg"
  def pizza(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 11h.01" />
    <path d="M11 15h.01" />
    <path d="M16 16h.01" />
    <path d="m2 16 20 6-6-20A20 20 0 0 0 2 16" />
    <path d="M5.71 17.11a17.04 17.04 0 0 1 11.4-11.4" />
    </svg>
    """
  end

  @doc "plane-landing.svg"
  def plane_landing(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 22h20" />
    <path d="M3.77 10.77 2 9l2-4.5 1.1.55c.55.28.9.84.9 1.45s.35 1.17.9 1.45L8 8.5l3-6 1.05.53a2 2 0 0 1 1.09 1.52l.72 5.4a2 2 0 0 0 1.09 1.52l4.4 2.2c.42.22.78.55 1.01.96l.6 1.03c.49.88-.06 1.98-1.06 2.1l-1.18.15c-.47.06-.95-.02-1.37-.24L4.29 11.15a2 2 0 0 1-.52-.38Z" />
    </svg>
    """
  end

  @doc "plane-takeoff.svg"
  def plane_takeoff(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 22h20" />
    <path d="M6.36 17.4 4 17l-2-4 1.1-.55a2 2 0 0 1 1.8 0l.17.1a2 2 0 0 0 1.8 0L8 12 5 6l.9-.45a2 2 0 0 1 2.09.2l4.02 3a2 2 0 0 0 2.1.2l4.19-2.06a2.41 2.41 0 0 1 1.73-.17L21 7a1.4 1.4 0 0 1 .87 1.99l-.38.76c-.23.46-.6.84-1.07 1.08L7.58 17.2a2 2 0 0 1-1.22.18Z" />
    </svg>
    """
  end

  @doc "plane.svg"
  def plane(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17.8 19.2 16 11l3.5-3.5C21 6 21.5 4 21 3c-1-.5-3 0-4.5 1.5L13 8 4.8 6.2c-.5-.1-.9.1-1.1.5l-.3.5c-.2.5-.1 1 .3 1.3L9 12l-2 3H4l-1 1 3 2 2 3 1-1v-3l3-2 3.5 5.3c.3.4.8.5 1.3.3l.5-.2c.4-.3.6-.7.5-1.2z" />
    </svg>
    """
  end

  @doc "play-circle.svg"
  def play_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <polygon points="10 8 16 12 10 16 10 8" />
    </svg>
    """
  end

  @doc "play-square.svg"
  def play_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="m9 8 6 4-6 4Z" />
    </svg>
    """
  end

  @doc "play.svg"
  def play(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="5 3 19 12 5 21 5 3" />
    </svg>
    """
  end

  @doc "plug-2.svg"
  def plug_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 2v6" />
    <path d="M15 2v6" />
    <path d="M12 17v5" />
    <path d="M5 8h14" />
    <path d="M6 11V8h12v3a6 6 0 1 1-12 0v0Z" />
    </svg>
    """
  end

  @doc "plug-zap-2.svg"
  def plug_zap_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m13 2-2 2.5h3L12 7" />
    <path d="M10 14v-3" />
    <path d="M14 14v-3" />
    <path d="M11 19c-1.7 0-3-1.3-3-3v-2h8v2c0 1.7-1.3 3-3 3Z" />
    <path d="M12 22v-3" />
    </svg>
    """
  end

  @doc "plug-zap.svg"
  def plug_zap(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6.3 20.3a2.4 2.4 0 0 0 3.4 0L12 18l-6-6-2.3 2.3a2.4 2.4 0 0 0 0 3.4Z" />
    <path d="m2 22 3-3" />
    <path d="M7.5 13.5 10 11" />
    <path d="M10.5 16.5 13 14" />
    <path d="m18 3-4 4h6l-4 4" />
    </svg>
    """
  end

  @doc "plug.svg"
  def plug(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22v-5" />
    <path d="M9 8V2" />
    <path d="M15 8V2" />
    <path d="M18 8v5a4 4 0 0 1-4 4h-4a4 4 0 0 1-4-4V8Z" />
    </svg>
    """
  end

  @doc "plus-circle.svg"
  def plus_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M8 12h8" />
    <path d="M12 8v8" />
    </svg>
    """
  end

  @doc "plus-square.svg"
  def plus_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M8 12h8" />
    <path d="M12 8v8" />
    </svg>
    """
  end

  @doc "plus.svg"
  def plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 12h14" />
    <path d="M12 5v14" />
    </svg>
    """
  end

  @doc "pocket-knife.svg"
  def pocket_knife(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 2v1c0 1 2 1 2 2S3 6 3 7s2 1 2 2-2 1-2 2 2 1 2 2" />
    <path d="M18 6h.01" />
    <path d="M6 18h.01" />
    <path d="M20.83 8.83a4 4 0 0 0-5.66-5.66l-12 12a4 4 0 1 0 5.66 5.66Z" />
    <path d="M18 11.66V22a4 4 0 0 0 4-4V6" />
    </svg>
    """
  end

  @doc "pocket.svg"
  def pocket(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 3h16a2 2 0 0 1 2 2v6a10 10 0 0 1-10 10A10 10 0 0 1 2 11V5a2 2 0 0 1 2-2z" />
    <polyline points="8 10 12 14 16 10" />
    </svg>
    """
  end

  @doc "podcast.svg"
  def podcast(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="11" r="1" />
    <path d="M11 17a1 1 0 0 1 2 0c0 .5-.34 3-.5 4.5a.5.5 0 0 1-1 0c-.16-1.5-.5-4-.5-4.5Z" />
    <path d="M8 14a5 5 0 1 1 8 0" />
    <path d="M17 18.5a9 9 0 1 0-10 0" />
    </svg>
    """
  end

  @doc "pointer-off.svg"
  def pointer_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 4.5V4a2 2 0 0 0-2.41-1.957" />
    <path d="M13.9 8.4a2 2 0 0 0-1.26-1.295" />
    <path d="M21.7 16.2A8 8 0 0 0 22 14v-3a2 2 0 1 0-4 0v-1a2 2 0 0 0-3.63-1.158" />
    <path d="m7 15-1.8-1.8a2 2 0 0 0-2.79 2.86L6 19.7a7.74 7.74 0 0 0 6 2.3h2a8 8 0 0 0 5.657-2.343" />
    <path d="M6 6v8" />
    <path d="m2 2 20 20" />
    </svg>
    """
  end

  @doc "pointer.svg"
  def pointer(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 14a8 8 0 0 1-8 8" />
    <path d="M18 11v-1a2 2 0 0 0-2-2v0a2 2 0 0 0-2 2v0" />
    <path d="M14 10V9a2 2 0 0 0-2-2v0a2 2 0 0 0-2 2v1" />
    <path d="M10 9.5V4a2 2 0 0 0-2-2v0a2 2 0 0 0-2 2v10" />
    <path d="M18 11a2 2 0 1 1 4 0v3a8 8 0 0 1-8 8h-2c-2.8 0-4.5-.86-5.99-2.34l-3.6-3.6a2 2 0 0 1 2.83-2.82L7 15" />
    </svg>
    """
  end

  @doc "popcorn.svg"
  def popcorn(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 8a2 2 0 0 0 0-4 2 2 0 0 0-4 0 2 2 0 0 0-4 0 2 2 0 0 0-4 0 2 2 0 0 0 0 4" />
    <path d="M10 22 9 8" />
    <path d="m14 22 1-14" />
    <path d="M20 8c.5 0 .9.4.8 1l-2.6 12c-.1.5-.7 1-1.2 1H7c-.6 0-1.1-.4-1.2-1L3.2 9c-.1-.6.3-1 .8-1Z" />
    </svg>
    """
  end

  @doc "popsicle.svg"
  def popsicle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18.6 14.4c.8-.8.8-2 0-2.8l-8.1-8.1a4.95 4.95 0 1 0-7.1 7.1l8.1 8.1c.9.7 2.1.7 2.9-.1Z" />
    <path d="m22 22-5.5-5.5" />
    </svg>
    """
  end

  @doc "pound-sterling.svg"
  def pound_sterling(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 7c0-5.333-8-5.333-8 0" />
    <path d="M10 7v14" />
    <path d="M6 21h12" />
    <path d="M6 13h10" />
    </svg>
    """
  end

  @doc "power-circle.svg"
  def power_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M12 12V6" />
    <path d="M8 7.5A6.1 6.1 0 0 0 12 18a6 6 0 0 0 4-10.5" />
    </svg>
    """
  end

  @doc "power-off.svg"
  def power_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18.36 6.64A9 9 0 0 1 20.77 15" />
    <path d="M6.16 6.16a9 9 0 1 0 12.68 12.68" />
    <path d="M12 2v4" />
    <path d="m2 2 20 20" />
    </svg>
    """
  end

  @doc "power-square.svg"
  def power_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M12 7v5" />
    <path d="M8 9a5.14 5.14 0 0 0 4 8 4.95 4.95 0 0 0 4-8" />
    </svg>
    """
  end

  @doc "power.svg"
  def power(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 2v10" />
    <path d="M18.4 6.6a9 9 0 1 1-12.77.04" />
    </svg>
    """
  end

  @doc "presentation.svg"
  def presentation(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 3h20" />
    <path d="M21 3v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V3" />
    <path d="m7 21 5-5 5 5" />
    </svg>
    """
  end

  @doc "printer.svg"
  def printer(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="6 9 6 2 18 2 18 9" />
    <path d="M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2" />
    <rect width="12" height="8" x="6" y="14" />
    </svg>
    """
  end

  @doc "projector.svg"
  def projector(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 7 3 5" />
    <path d="M9 6V3" />
    <path d="m13 7 2-2" />
    <circle cx="9" cy="13" r="3" />
    <path d="M11.83 12H20a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2v-4a2 2 0 0 1 2-2h2.17" />
    <path d="M16 16h2" />
    </svg>
    """
  end

  @doc "puzzle.svg"
  def puzzle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19.439 7.85c-.049.322.059.648.289.878l1.568 1.568c.47.47.706 1.087.706 1.704s-.235 1.233-.706 1.704l-1.611 1.611a.98.98 0 0 1-.837.276c-.47-.07-.802-.48-.968-.925a2.501 2.501 0 1 0-3.214 3.214c.446.166.855.497.925.968a.979.979 0 0 1-.276.837l-1.61 1.61a2.404 2.404 0 0 1-1.705.707 2.402 2.402 0 0 1-1.704-.706l-1.568-1.568a1.026 1.026 0 0 0-.877-.29c-.493.074-.84.504-1.02.968a2.5 2.5 0 1 1-3.237-3.237c.464-.18.894-.527.967-1.02a1.026 1.026 0 0 0-.289-.877l-1.568-1.568A2.402 2.402 0 0 1 1.998 12c0-.617.236-1.234.706-1.704L4.23 8.77c.24-.24.581-.353.917-.303.515.077.877.528 1.073 1.01a2.5 2.5 0 1 0 3.259-3.259c-.482-.196-.933-.558-1.01-1.073-.05-.336.062-.676.303-.917l1.525-1.525A2.402 2.402 0 0 1 12 1.998c.617 0 1.234.236 1.704.706l1.568 1.568c.23.23.556.338.877.29.493-.074.84-.504 1.02-.968a2.5 2.5 0 1 1 3.237 3.237c-.464.18-.894.527-.967 1.02Z" />
    </svg>
    """
  end

  @doc "pyramid.svg"
  def pyramid(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2.5 16.88a1 1 0 0 1-.32-1.43l9-13.02a1 1 0 0 1 1.64 0l9 13.01a1 1 0 0 1-.32 1.44l-8.51 4.86a2 2 0 0 1-1.98 0Z" />
    <path d="M12 2v20" />
    </svg>
    """
  end

  @doc "qr-code.svg"
  def qr_code(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="5" height="5" x="3" y="3" rx="1" />
    <rect width="5" height="5" x="16" y="3" rx="1" />
    <rect width="5" height="5" x="3" y="16" rx="1" />
    <path d="M21 16h-3a2 2 0 0 0-2 2v3" />
    <path d="M21 21v.01" />
    <path d="M12 7v3a2 2 0 0 1-2 2H7" />
    <path d="M3 12h.01" />
    <path d="M12 3h.01" />
    <path d="M12 16v.01" />
    <path d="M16 12h1" />
    <path d="M21 12v.01" />
    <path d="M12 21v-1" />
    </svg>
    """
  end

  @doc "quote.svg"
  def quote(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 21c3 0 7-1 7-8V5c0-1.25-.756-2.017-2-2H4c-1.25 0-2 .75-2 1.972V11c0 1.25.75 2 2 2 1 0 1 0 1 1v1c0 1-1 2-2 2s-1 .008-1 1.031V20c0 1 0 1 1 1z" />
    <path d="M15 21c3 0 7-1 7-8V5c0-1.25-.757-2.017-2-2h-4c-1.25 0-2 .75-2 1.972V11c0 1.25.75 2 2 2h.75c0 2.25.25 4-2.75 4v3c0 1 0 1 1 1z" />
    </svg>
    """
  end

  @doc "rabbit.svg"
  def rabbit(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13 16a3 3 0 0 1 2.24 5" />
    <path d="M18 12h.01" />
    <path d="M18 21h-8a4 4 0 0 1-4-4 7 7 0 0 1 7-7h.2L9.6 6.4a1 1 0 1 1 2.8-2.8L15.8 7h.2c3.3 0 6 2.7 6 6v1a2 2 0 0 1-2 2h-1a3 3 0 0 0-3 3" />
    <path d="M20 8.54V4a2 2 0 1 0-4 0v3" />
    <path d="M7.612 12.524a3 3 0 1 0-1.6 4.3" />
    </svg>
    """
  end

  @doc "radar.svg"
  def radar(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19.07 4.93A10 10 0 0 0 6.99 3.34" />
    <path d="M4 6h.01" />
    <path d="M2.29 9.62A10 10 0 1 0 21.31 8.35" />
    <path d="M16.24 7.76A6 6 0 1 0 8.23 16.67" />
    <path d="M12 18h.01" />
    <path d="M17.99 11.66A6 6 0 0 1 15.77 16.67" />
    <circle cx="12" cy="12" r="2" />
    <path d="m13.41 10.59 5.66-5.66" />
    </svg>
    """
  end

  @doc "radiation.svg"
  def radiation(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 12h0.01" />
    <path d="M7.5 4.2c-.3-.5-.9-.7-1.3-.4C3.9 5.5 2.3 8.1 2 11c-.1.5.4 1 1 1h5c0-1.5.8-2.8 2-3.4-1.1-1.9-2-3.5-2.5-4.4z" />
    <path d="M21 12c.6 0 1-.4 1-1-.3-2.9-1.8-5.5-4.1-7.1-.4-.3-1.1-.2-1.3.3-.6.9-1.5 2.5-2.6 4.3 1.2.7 2 2 2 3.5h5z" />
    <path d="M7.5 19.8c-.3.5-.1 1.1.4 1.3 2.6 1.2 5.6 1.2 8.2 0 .5-.2.7-.8.4-1.3-.5-.9-1.4-2.5-2.5-4.3-1.2.7-2.8.7-4 0-1.1 1.8-2 3.4-2.5 4.3z" />
    </svg>
    """
  end

  @doc "radical.svg"
  def radical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 12h4l3 9 4-17h7" />
    </svg>
    """
  end

  @doc "radio-receiver.svg"
  def radio_receiver(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 16v2" />
    <path d="M19 16v2" />
    <rect width="20" height="8" x="2" y="8" rx="2" />
    <path d="M18 12h0" />
    </svg>
    """
  end

  @doc "radio-tower.svg"
  def radio_tower(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4.9 16.1C1 12.2 1 5.8 4.9 1.9" />
    <path d="M7.8 4.7a6.14 6.14 0 0 0-.8 7.5" />
    <circle cx="12" cy="9" r="2" />
    <path d="M16.2 4.8c2 2 2.26 5.11.8 7.47" />
    <path d="M19.1 1.9a9.96 9.96 0 0 1 0 14.1" />
    <path d="M9.5 18h5" />
    <path d="m8 22 4-11 4 11" />
    </svg>
    """
  end

  @doc "radio.svg"
  def radio(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4.9 19.1C1 15.2 1 8.8 4.9 4.9" />
    <path d="M7.8 16.2c-2.3-2.3-2.3-6.1 0-8.5" />
    <circle cx="12" cy="12" r="2" />
    <path d="M16.2 7.8c2.3 2.3 2.3 6.1 0 8.5" />
    <path d="M19.1 4.9C23 8.8 23 15.1 19.1 19" />
    </svg>
    """
  end

  @doc "radius.svg"
  def radius(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20.34 17.52a10 10 0 1 0-2.82 2.82" />
    <circle cx="19" cy="19" r="2" />
    <path d="m13.41 13.41 4.18 4.18" />
    <circle cx="12" cy="12" r="2" />
    </svg>
    """
  end

  @doc "rail-symbol.svg"
  def rail_symbol(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 15h14" />
    <path d="M5 9h14" />
    <path d="m14 20-5-5 6-6-5-5" />
    </svg>
    """
  end

  @doc "rainbow.svg"
  def rainbow(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 17a10 10 0 0 0-20 0" />
    <path d="M6 17a6 6 0 0 1 12 0" />
    <path d="M10 17a2 2 0 0 1 4 0" />
    </svg>
    """
  end

  @doc "rat.svg"
  def rat(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 5c0-1.7-1.3-3-3-3s-3 1.3-3 3c0 .8.3 1.5.8 2H11c-3.9 0-7 3.1-7 7v0c0 2.2 1.8 4 4 4" />
    <path d="M16.8 3.9c.3-.3.6-.5 1-.7 1.5-.6 3.3.1 3.9 1.6.6 1.5-.1 3.3-1.6 3.9l1.6 2.8c.2.3.2.7.2 1-.2.8-.9 1.2-1.7 1.1 0 0-1.6-.3-2.7-.6H17c-1.7 0-3 1.3-3 3" />
    <path d="M13.2 18a3 3 0 0 0-2.2-5" />
    <path d="M13 22H4a2 2 0 0 1 0-4h12" />
    <path d="M16 9h.01" />
    </svg>
    """
  end

  @doc "ratio.svg"
  def ratio(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="12" height="20" x="6" y="2" rx="2" />
    <rect width="20" height="12" x="2" y="6" rx="2" />
    </svg>
    """
  end

  @doc "receipt-cent.svg"
  def receipt_cent(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 2v20l2-1 2 1 2-1 2 1 2-1 2 1 2-1 2 1V2l-2 1-2-1-2 1-2-1-2 1-2-1-2 1Z" />
    <path d="M12 6.5v11" />
    <path d="M15 9.4a4 4 0 1 0 0 5.2" />
    </svg>
    """
  end

  @doc "receipt-euro.svg"
  def receipt_euro(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 2v20l2-1 2 1 2-1 2 1 2-1 2 1 2-1 2 1V2l-2 1-2-1-2 1-2-1-2 1-2-1-2 1Z" />
    <path d="M8 12h5" />
    <path d="M16 9.5a4 4 0 1 0 0 5.2" />
    </svg>
    """
  end

  @doc "receipt-indian-rupee.svg"
  def receipt_indian_rupee(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 2v20l2-1 2 1 2-1 2 1 2-1 2 1 2-1 2 1V2l-2 1-2-1-2 1-2-1-2 1-2-1-2 1Z" />
    <path d="M8 7h8" />
    <path d="M12 17.5 8 15h1a4 4 0 0 0 0-8" />
    <path d="M8 11h8" />
    </svg>
    """
  end

  @doc "receipt-japanese-yen.svg"
  def receipt_japanese_yen(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 2v20l2-1 2 1 2-1 2 1 2-1 2 1 2-1 2 1V2l-2 1-2-1-2 1-2-1-2 1-2-1-2 1Z" />
    <path d="m12 10 3-3" />
    <path d="m9 7 3 3v7.5" />
    <path d="M9 11h6" />
    <path d="M9 15h6" />
    </svg>
    """
  end

  @doc "receipt-pound-sterling.svg"
  def receipt_pound_sterling(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 2v20l2-1 2 1 2-1 2 1 2-1 2 1 2-1 2 1V2l-2 1-2-1-2 1-2-1-2 1-2-1-2 1Z" />
    <path d="M8 13h5" />
    <path d="M10 17V9.5a2.5 2.5 0 0 1 5 0" />
    <path d="M8 17h7" />
    </svg>
    """
  end

  @doc "receipt-russian-ruble.svg"
  def receipt_russian_ruble(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 2v20l2-1 2 1 2-1 2 1 2-1 2 1 2-1 2 1V2l-2 1-2-1-2 1-2-1-2 1-2-1-2 1Z" />
    <path d="M8 15h5" />
    <path d="M8 11h5a2 2 0 1 0 0-4h-3v10" />
    </svg>
    """
  end

  @doc "receipt-swiss-franc.svg"
  def receipt_swiss_franc(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 2v20l2-1 2 1 2-1 2 1 2-1 2 1 2-1 2 1V2l-2 1-2-1-2 1-2-1-2 1-2-1-2 1Z" />
    <path d="M10 17V7h5" />
    <path d="M10 11h4" />
    <path d="M8 15h5" />
    </svg>
    """
  end

  @doc "receipt-text.svg"
  def receipt_text(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 2v20l2-1 2 1 2-1 2 1 2-1 2 1 2-1 2 1V2l-2 1-2-1-2 1-2-1-2 1-2-1-2 1Z" />
    <path d="M14 8H8" />
    <path d="M16 12H8" />
    <path d="M13 16H8" />
    </svg>
    """
  end

  @doc "receipt.svg"
  def receipt(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 2v20l2-1 2 1 2-1 2 1 2-1 2 1 2-1 2 1V2l-2 1-2-1-2 1-2-1-2 1-2-1-2 1Z" />
    <path d="M16 8h-6a2 2 0 1 0 0 4h4a2 2 0 1 1 0 4H8" />
    <path d="M12 17.5v-11" />
    </svg>
    """
  end

  @doc "rectangle-horizontal.svg"
  def rectangle_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="12" x="2" y="6" rx="2" />
    </svg>
    """
  end

  @doc "rectangle-vertical.svg"
  def rectangle_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="12" height="20" x="6" y="2" rx="2" />
    </svg>
    """
  end

  @doc "recycle.svg"
  def recycle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 19H4.815a1.83 1.83 0 0 1-1.57-.881 1.785 1.785 0 0 1-.004-1.784L7.196 9.5" />
    <path d="M11 19h8.203a1.83 1.83 0 0 0 1.556-.89 1.784 1.784 0 0 0 0-1.775l-1.226-2.12" />
    <path d="m14 16-3 3 3 3" />
    <path d="M8.293 13.596 7.196 9.5 3.1 10.598" />
    <path d="m9.344 5.811 1.093-1.892A1.83 1.83 0 0 1 11.985 3a1.784 1.784 0 0 1 1.546.888l3.943 6.843" />
    <path d="m13.378 9.633 4.096 1.098 1.097-4.096" />
    </svg>
    """
  end

  @doc "redo-2.svg"
  def redo_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m15 14 5-5-5-5" />
    <path d="M20 9H9.5A5.5 5.5 0 0 0 4 14.5v0A5.5 5.5 0 0 0 9.5 20H13" />
    </svg>
    """
  end

  @doc "redo-dot.svg"
  def redo_dot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="17" r="1" />
    <path d="M21 7v6h-6" />
    <path d="M3 17a9 9 0 0 1 9-9 9 9 0 0 1 6 2.3l3 2.7" />
    </svg>
    """
  end

  @doc "redo.svg"
  def redo(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 7v6h-6" />
    <path d="M3 17a9 9 0 0 1 9-9 9 9 0 0 1 6 2.3l3 2.7" />
    </svg>
    """
  end

  @doc "refresh-ccw-dot.svg"
  def refresh_ccw_dot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 2v6h6" />
    <path d="M21 12A9 9 0 0 0 6 5.3L3 8" />
    <path d="M21 22v-6h-6" />
    <path d="M3 12a9 9 0 0 0 15 6.7l3-2.7" />
    <circle cx="12" cy="12" r="1" />
    </svg>
    """
  end

  @doc "refresh-ccw.svg"
  def refresh_ccw(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 12a9 9 0 0 0-9-9 9.75 9.75 0 0 0-6.74 2.74L3 8" />
    <path d="M3 3v5h5" />
    <path d="M3 12a9 9 0 0 0 9 9 9.75 9.75 0 0 0 6.74-2.74L21 16" />
    <path d="M16 16h5v5" />
    </svg>
    """
  end

  @doc "refresh-cw-off.svg"
  def refresh_cw_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 8L18.74 5.74A9.75 9.75 0 0 0 12 3C11 3 10.03 3.16 9.13 3.47" />
    <path d="M8 16H3v5" />
    <path d="M3 12C3 9.51 4 7.26 5.64 5.64" />
    <path d="m3 16 2.26 2.26A9.75 9.75 0 0 0 12 21c2.49 0 4.74-1 6.36-2.64" />
    <path d="M21 12c0 1-.16 1.97-.47 2.87" />
    <path d="M21 3v5h-5" />
    <path d="M22 22 2 2" />
    </svg>
    """
  end

  @doc "refresh-cw.svg"
  def refresh_cw(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 12a9 9 0 0 1 9-9 9.75 9.75 0 0 1 6.74 2.74L21 8" />
    <path d="M21 3v5h-5" />
    <path d="M21 12a9 9 0 0 1-9 9 9.75 9.75 0 0 1-6.74-2.74L3 16" />
    <path d="M8 16H3v5" />
    </svg>
    """
  end

  @doc "refrigerator.svg"
  def refrigerator(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 6a4 4 0 0 1 4-4h6a4 4 0 0 1 4 4v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6Z" />
    <path d="M5 10h14" />
    <path d="M15 7v6" />
    </svg>
    """
  end

  @doc "regex.svg"
  def regex(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 3v10" />
    <path d="m12.67 5.5 8.66 5" />
    <path d="m12.67 10.5 8.66-5" />
    <path d="M9 17a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v2a2 2 0 0 0 2 2h2a2 2 0 0 0 2-2v-2z" />
    </svg>
    """
  end

  @doc "remove-formatting.svg"
  def remove_formatting(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 7V4h16v3" />
    <path d="M5 20h6" />
    <path d="M13 4 8 20" />
    <path d="m15 15 5 5" />
    <path d="m20 15-5 5" />
    </svg>
    """
  end

  @doc "repeat-1.svg"
  def repeat_1(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m17 2 4 4-4 4" />
    <path d="M3 11v-1a4 4 0 0 1 4-4h14" />
    <path d="m7 22-4-4 4-4" />
    <path d="M21 13v1a4 4 0 0 1-4 4H3" />
    <path d="M11 10h1v4" />
    </svg>
    """
  end

  @doc "repeat-2.svg"
  def repeat_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m2 9 3-3 3 3" />
    <path d="M13 18H7a2 2 0 0 1-2-2V6" />
    <path d="m22 15-3 3-3-3" />
    <path d="M11 6h6a2 2 0 0 1 2 2v10" />
    </svg>
    """
  end

  @doc "repeat.svg"
  def repeat(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m17 2 4 4-4 4" />
    <path d="M3 11v-1a4 4 0 0 1 4-4h14" />
    <path d="m7 22-4-4 4-4" />
    <path d="M21 13v1a4 4 0 0 1-4 4H3" />
    </svg>
    """
  end

  @doc "replace-all.svg"
  def replace_all(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14 4c0-1.1.9-2 2-2" />
    <path d="M20 2c1.1 0 2 .9 2 2" />
    <path d="M22 8c0 1.1-.9 2-2 2" />
    <path d="M16 10c-1.1 0-2-.9-2-2" />
    <path d="m3 7 3 3 3-3" />
    <path d="M6 10V5c0-1.7 1.3-3 3-3h1" />
    <rect width="8" height="8" x="2" y="14" rx="2" />
    <path d="M14 14c1.1 0 2 .9 2 2v4c0 1.1-.9 2-2 2" />
    <path d="M20 14c1.1 0 2 .9 2 2v4c0 1.1-.9 2-2 2" />
    </svg>
    """
  end

  @doc "replace.svg"
  def replace(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14 4c0-1.1.9-2 2-2" />
    <path d="M20 2c1.1 0 2 .9 2 2" />
    <path d="M22 8c0 1.1-.9 2-2 2" />
    <path d="M16 10c-1.1 0-2-.9-2-2" />
    <path d="m3 7 3 3 3-3" />
    <path d="M6 10V5c0-1.7 1.3-3 3-3h1" />
    <rect width="8" height="8" x="2" y="14" rx="2" />
    </svg>
    """
  end

  @doc "reply-all.svg"
  def reply_all(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="7 17 2 12 7 7" />
    <polyline points="12 17 7 12 12 7" />
    <path d="M22 18v-2a4 4 0 0 0-4-4H7" />
    </svg>
    """
  end

  @doc "reply.svg"
  def reply(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="9 17 4 12 9 7" />
    <path d="M20 18v-2a4 4 0 0 0-4-4H4" />
    </svg>
    """
  end

  @doc "rewind.svg"
  def rewind(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="11 19 2 12 11 5 11 19" />
    <polygon points="22 19 13 12 22 5 22 19" />
    </svg>
    """
  end

  @doc "ribbon.svg"
  def ribbon(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17.75 9.01c-.52 2.08-1.83 3.64-3.18 5.49l-2.6 3.54-2.97 4-3.5-2.54 3.85-4.97c-1.86-2.61-2.8-3.77-3.16-5.44" />
    <path d="M17.75 9.01A7 7 0 0 0 6.2 9.1C6.06 8.5 6 7.82 6 7c0-3.5 2.83-5 5.98-5C15.24 2 18 3.5 18 7c0 .73-.09 1.4-.25 2.01Z" />
    <path d="m9.35 14.53 2.64-3.31" />
    <path d="m11.97 18.04 2.99 4 3.54-2.54-3.93-5" />
    <path d="M14 8c0 1-1 2-2.01 3.22C11 10 10 9 10 8a2 2 0 1 1 4 0" />
    </svg>
    """
  end

  @doc "rocket.svg"
  def rocket(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4.5 16.5c-1.5 1.26-2 5-2 5s3.74-.5 5-2c.71-.84.7-2.13-.09-2.91a2.18 2.18 0 0 0-2.91-.09z" />
    <path d="m12 15-3-3a22 22 0 0 1 2-3.95A12.88 12.88 0 0 1 22 2c0 2.72-.78 7.5-6 11a22.35 22.35 0 0 1-4 2z" />
    <path d="M9 12H4s.55-3.03 2-4c1.62-1.08 5 0 5 0" />
    <path d="M12 15v5s3.03-.55 4-2c1.08-1.62 0-5 0-5" />
    </svg>
    """
  end

  @doc "rocking-chair.svg"
  def rocking_chair(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="3.5 2 6.5 12.5 18 12.5" />
    <line x1="9.5" x2="5.5" y1="12.5" y2="20" />
    <line x1="15" x2="18.5" y1="12.5" y2="20" />
    <path d="M2.75 18a13 13 0 0 0 18.5 0" />
    </svg>
    """
  end

  @doc "roller-coaster.svg"
  def roller_coaster(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 19V5" />
    <path d="M10 19V6.8" />
    <path d="M14 19v-7.8" />
    <path d="M18 5v4" />
    <path d="M18 19v-6" />
    <path d="M22 19V9" />
    <path d="M2 19V9a4 4 0 0 1 4-4c2 0 4 1.33 6 4s4 4 6 4a4 4 0 1 0-3-6.65" />
    </svg>
    """
  end

  @doc "rotate-3d.svg"
  def rotate_3d(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16.466 7.5C15.643 4.237 13.952 2 12 2 9.239 2 7 6.477 7 12s2.239 10 5 10c.342 0 .677-.069 1-.2" />
    <path d="m15.194 13.707 3.814 1.86-1.86 3.814" />
    <path d="M19 15.57c-1.804.885-4.274 1.43-7 1.43-5.523 0-10-2.239-10-5s4.477-5 10-5c4.838 0 8.873 1.718 9.8 4" />
    </svg>
    """
  end

  @doc "rotate-ccw.svg"
  def rotate_ccw(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 12a9 9 0 1 0 9-9 9.75 9.75 0 0 0-6.74 2.74L3 8" />
    <path d="M3 3v5h5" />
    </svg>
    """
  end

  @doc "rotate-cw.svg"
  def rotate_cw(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 12a9 9 0 1 1-9-9c2.52 0 4.93 1 6.74 2.74L21 8" />
    <path d="M21 3v5h-5" />
    </svg>
    """
  end

  @doc "route-off.svg"
  def route_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="6" cy="19" r="3" />
    <path d="M9 19h8.5c.4 0 .9-.1 1.3-.2" />
    <path d="M5.2 5.2A3.5 3.53 0 0 0 6.5 12H12" />
    <path d="m2 2 20 20" />
    <path d="M21 15.3a3.5 3.5 0 0 0-3.3-3.3" />
    <path d="M15 5h-4.3" />
    <circle cx="18" cy="5" r="3" />
    </svg>
    """
  end

  @doc "route.svg"
  def route(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="6" cy="19" r="3" />
    <path d="M9 19h8.5a3.5 3.5 0 0 0 0-7h-11a3.5 3.5 0 0 1 0-7H15" />
    <circle cx="18" cy="5" r="3" />
    </svg>
    """
  end

  @doc "router.svg"
  def router(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="8" x="2" y="14" rx="2" />
    <path d="M6.01 18H6" />
    <path d="M10.01 18H10" />
    <path d="M15 10v4" />
    <path d="M17.84 7.17a4 4 0 0 0-5.66 0" />
    <path d="M20.66 4.34a8 8 0 0 0-11.31 0" />
    </svg>
    """
  end

  @doc "rows-2.svg"
  def rows_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M3 12h18" />
    </svg>
    """
  end

  @doc "rows-3.svg"
  def rows_3(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M21 9H3" />
    <path d="M21 15H3" />
    </svg>
    """
  end

  @doc "rows-4.svg"
  def rows_4(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M21 7.5H3" />
    <path d="M21 12H3" />
    <path d="M21 16.5H3" />
    </svg>
    """
  end

  @doc "rss.svg"
  def rss(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 11a9 9 0 0 1 9 9" />
    <path d="M4 4a16 16 0 0 1 16 16" />
    <circle cx="5" cy="19" r="1" />
    </svg>
    """
  end

  @doc "ruler.svg"
  def ruler(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21.3 15.3a2.4 2.4 0 0 1 0 3.4l-2.6 2.6a2.4 2.4 0 0 1-3.4 0L2.7 8.7a2.41 2.41 0 0 1 0-3.4l2.6-2.6a2.41 2.41 0 0 1 3.4 0Z" />
    <path d="m14.5 12.5 2-2" />
    <path d="m11.5 9.5 2-2" />
    <path d="m8.5 6.5 2-2" />
    <path d="m17.5 15.5 2-2" />
    </svg>
    """
  end

  @doc "russian-ruble.svg"
  def russian_ruble(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 11h8a4 4 0 0 0 0-8H9v18" />
    <path d="M6 15h8" />
    </svg>
    """
  end

  @doc "sailboat.svg"
  def sailboat(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 18H2a4 4 0 0 0 4 4h12a4 4 0 0 0 4-4Z" />
    <path d="M21 14 10 2 3 14h18Z" />
    <path d="M10 2v16" />
    </svg>
    """
  end

  @doc "salad.svg"
  def salad(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 21h10" />
    <path d="M12 21a9 9 0 0 0 9-9H3a9 9 0 0 0 9 9Z" />
    <path d="M11.38 12a2.4 2.4 0 0 1-.4-4.77 2.4 2.4 0 0 1 3.2-2.77 2.4 2.4 0 0 1 3.47-.63 2.4 2.4 0 0 1 3.37 3.37 2.4 2.4 0 0 1-1.1 3.7 2.51 2.51 0 0 1 .03 1.1" />
    <path d="m13 12 4-4" />
    <path d="M10.9 7.25A3.99 3.99 0 0 0 4 10c0 .73.2 1.41.54 2" />
    </svg>
    """
  end

  @doc "sandwich.svg"
  def sandwich(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 11v3a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1v-3" />
    <path d="M12 19H4a1 1 0 0 1-1-1v-2a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-3.83" />
    <path d="m3 11 7.77-6.04a2 2 0 0 1 2.46 0L21 11H3Z" />
    <path d="M12.97 19.77 7 15h12.5l-3.75 4.5a2 2 0 0 1-2.78.27Z" />
    </svg>
    """
  end

  @doc "satellite-dish.svg"
  def satellite_dish(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 10a7.31 7.31 0 0 0 10 10Z" />
    <path d="m9 15 3-3" />
    <path d="M17 13a6 6 0 0 0-6-6" />
    <path d="M21 13A10 10 0 0 0 11 3" />
    </svg>
    """
  end

  @doc "satellite.svg"
  def satellite(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13 7 9 3 5 7l4 4" />
    <path d="m17 11 4 4-4 4-4-4" />
    <path d="m8 12 4 4 6-6-4-4Z" />
    <path d="m16 8 3-3" />
    <path d="M9 21a6 6 0 0 0-6-6" />
    </svg>
    """
  end

  @doc "save-all.svg"
  def save_all(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 4a2 2 0 0 1 2-2h10l4 4v10.2a2 2 0 0 1-2 1.8H8a2 2 0 0 1-2-2Z" />
    <path d="M10 2v4h6" />
    <path d="M18 18v-7h-8v7" />
    <path d="M18 22H4a2 2 0 0 1-2-2V6" />
    </svg>
    """
  end

  @doc "save.svg"
  def save(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11l5 5v11a2 2 0 0 1-2 2z" />
    <polyline points="17 21 17 13 7 13 7 21" />
    <polyline points="7 3 7 8 15 8" />
    </svg>
    """
  end

  @doc "scale-3d.svg"
  def scale_3d(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="19" cy="19" r="2" />
    <circle cx="5" cy="5" r="2" />
    <path d="M5 7v12h12" />
    <path d="m5 19 6-6" />
    </svg>
    """
  end

  @doc "scale.svg"
  def scale(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m16 16 3-8 3 8c-.87.65-1.92 1-3 1s-2.13-.35-3-1Z" />
    <path d="m2 16 3-8 3 8c-.87.65-1.92 1-3 1s-2.13-.35-3-1Z" />
    <path d="M7 21h10" />
    <path d="M12 3v18" />
    <path d="M3 7h2c2 0 5-1 7-2 2 1 5 2 7 2h2" />
    </svg>
    """
  end

  @doc "scaling.svg"
  def scaling(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7" />
    <path d="M14 15H9v-5" />
    <path d="M16 3h5v5" />
    <path d="M21 3 9 15" />
    </svg>
    """
  end

  @doc "scan-barcode.svg"
  def scan_barcode(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 7V5a2 2 0 0 1 2-2h2" />
    <path d="M17 3h2a2 2 0 0 1 2 2v2" />
    <path d="M21 17v2a2 2 0 0 1-2 2h-2" />
    <path d="M7 21H5a2 2 0 0 1-2-2v-2" />
    <path d="M8 7v10" />
    <path d="M12 7v10" />
    <path d="M17 7v10" />
    </svg>
    """
  end

  @doc "scan-eye.svg"
  def scan_eye(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 7V5a2 2 0 0 1 2-2h2" />
    <path d="M17 3h2a2 2 0 0 1 2 2v2" />
    <path d="M21 17v2a2 2 0 0 1-2 2h-2" />
    <path d="M7 21H5a2 2 0 0 1-2-2v-2" />
    <circle cx="12" cy="12" r="1" />
    <path d="M5 12s2.5-5 7-5 7 5 7 5-2.5 5-7 5-7-5-7-5" />
    </svg>
    """
  end

  @doc "scan-face.svg"
  def scan_face(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 7V5a2 2 0 0 1 2-2h2" />
    <path d="M17 3h2a2 2 0 0 1 2 2v2" />
    <path d="M21 17v2a2 2 0 0 1-2 2h-2" />
    <path d="M7 21H5a2 2 0 0 1-2-2v-2" />
    <path d="M8 14s1.5 2 4 2 4-2 4-2" />
    <path d="M9 9h.01" />
    <path d="M15 9h.01" />
    </svg>
    """
  end

  @doc "scan-line.svg"
  def scan_line(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 7V5a2 2 0 0 1 2-2h2" />
    <path d="M17 3h2a2 2 0 0 1 2 2v2" />
    <path d="M21 17v2a2 2 0 0 1-2 2h-2" />
    <path d="M7 21H5a2 2 0 0 1-2-2v-2" />
    <path d="M7 12h10" />
    </svg>
    """
  end

  @doc "scan-search.svg"
  def scan_search(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 7V5a2 2 0 0 1 2-2h2" />
    <path d="M17 3h2a2 2 0 0 1 2 2v2" />
    <path d="M21 17v2a2 2 0 0 1-2 2h-2" />
    <path d="M7 21H5a2 2 0 0 1-2-2v-2" />
    <circle cx="12" cy="12" r="3" />
    <path d="m16 16-1.9-1.9" />
    </svg>
    """
  end

  @doc "scan-text.svg"
  def scan_text(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 7V5a2 2 0 0 1 2-2h2" />
    <path d="M17 3h2a2 2 0 0 1 2 2v2" />
    <path d="M21 17v2a2 2 0 0 1-2 2h-2" />
    <path d="M7 21H5a2 2 0 0 1-2-2v-2" />
    <path d="M7 8h8" />
    <path d="M7 12h10" />
    <path d="M7 16h6" />
    </svg>
    """
  end

  @doc "scan.svg"
  def scan(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 7V5a2 2 0 0 1 2-2h2" />
    <path d="M17 3h2a2 2 0 0 1 2 2v2" />
    <path d="M21 17v2a2 2 0 0 1-2 2h-2" />
    <path d="M7 21H5a2 2 0 0 1-2-2v-2" />
    </svg>
    """
  end

  @doc "scatter-chart.svg"
  def scatter_chart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="7.5" cy="7.5" r=".5" fill="currentColor" />
    <circle cx="18.5" cy="5.5" r=".5" fill="currentColor" />
    <circle cx="11.5" cy="11.5" r=".5" fill="currentColor" />
    <circle cx="7.5" cy="16.5" r=".5" fill="currentColor" />
    <circle cx="17.5" cy="14.5" r=".5" fill="currentColor" />
    <path d="M3 3v18h18" />
    </svg>
    """
  end

  @doc "school-2.svg"
  def school_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="10" r="1" />
    <path d="M22 20V8h-4l-6-4-6 4H2v12a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2Z" />
    <path d="M6 17v.01" />
    <path d="M6 13v.01" />
    <path d="M18 17v.01" />
    <path d="M18 13v.01" />
    <path d="M14 22v-5a2 2 0 0 0-2-2v0a2 2 0 0 0-2 2v5" />
    </svg>
    """
  end

  @doc "school.svg"
  def school(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14 22v-4a2 2 0 1 0-4 0v4" />
    <path d="m18 10 4 2v8a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2v-8l4-2" />
    <path d="M18 5v17" />
    <path d="m4 6 8-4 8 4" />
    <path d="M6 5v17" />
    <circle cx="12" cy="9" r="2" />
    </svg>
    """
  end

  @doc "scissors-line-dashed.svg"
  def scissors_line_dashed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5.42 9.42 8 12" />
    <circle cx="4" cy="8" r="2" />
    <path d="m14 6-8.58 8.58" />
    <circle cx="4" cy="16" r="2" />
    <path d="M10.8 14.8 14 18" />
    <path d="M16 12h-2" />
    <path d="M22 12h-2" />
    </svg>
    """
  end

  @doc "scissors-square-dashed-bottom.svg"
  def scissors_square_dashed_bottom(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 22a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v16a2 2 0 0 1-2 2" />
    <path d="M10 22H8" />
    <path d="M16 22h-2" />
    <circle cx="8" cy="8" r="2" />
    <path d="M9.414 9.414 12 12" />
    <path d="M14.8 14.8 18 18" />
    <circle cx="8" cy="16" r="2" />
    <path d="m18 6-8.586 8.586" />
    </svg>
    """
  end

  @doc "scissors-square.svg"
  def scissors_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="20" x="2" y="2" rx="2" />
    <circle cx="8" cy="8" r="2" />
    <path d="M9.414 9.414 12 12" />
    <path d="M14.8 14.8 18 18" />
    <circle cx="8" cy="16" r="2" />
    <path d="m18 6-8.586 8.586" />
    </svg>
    """
  end

  @doc "scissors.svg"
  def scissors(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="6" cy="6" r="3" />
    <path d="M8.12 8.12 12 12" />
    <path d="M20 4 8.12 15.88" />
    <circle cx="6" cy="18" r="3" />
    <path d="M14.8 14.8 20 20" />
    </svg>
    """
  end

  @doc "screen-share-off.svg"
  def screen_share_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13 3H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-3" />
    <path d="M8 21h8" />
    <path d="M12 17v4" />
    <path d="m22 3-5 5" />
    <path d="m17 3 5 5" />
    </svg>
    """
  end

  @doc "screen-share.svg"
  def screen_share(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13 3H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-3" />
    <path d="M8 21h8" />
    <path d="M12 17v4" />
    <path d="m17 8 5-5" />
    <path d="M17 3h5v5" />
    </svg>
    """
  end

  @doc "scroll-text.svg"
  def scroll_text(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 21h12a2 2 0 0 0 2-2v-2H10v2a2 2 0 1 1-4 0V5a2 2 0 1 0-4 0v3h4" />
    <path d="M19 17V5a2 2 0 0 0-2-2H4" />
    <path d="M15 8h-5" />
    <path d="M15 12h-5" />
    </svg>
    """
  end

  @doc "scroll.svg"
  def scroll(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 21h12a2 2 0 0 0 2-2v-2H10v2a2 2 0 1 1-4 0V5a2 2 0 1 0-4 0v3h4" />
    <path d="M19 17V5a2 2 0 0 0-2-2H4" />
    </svg>
    """
  end

  @doc "search-check.svg"
  def search_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m8 11 2 2 4-4" />
    <circle cx="11" cy="11" r="8" />
    <path d="m21 21-4.3-4.3" />
    </svg>
    """
  end

  @doc "search-code.svg"
  def search_code(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m9 9-2 2 2 2" />
    <path d="m13 13 2-2-2-2" />
    <circle cx="11" cy="11" r="8" />
    <path d="m21 21-4.3-4.3" />
    </svg>
    """
  end

  @doc "search-slash.svg"
  def search_slash(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m13.5 8.5-5 5" />
    <circle cx="11" cy="11" r="8" />
    <path d="m21 21-4.3-4.3" />
    </svg>
    """
  end

  @doc "search-x.svg"
  def search_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m13.5 8.5-5 5" />
    <path d="m8.5 8.5 5 5" />
    <circle cx="11" cy="11" r="8" />
    <path d="m21 21-4.3-4.3" />
    </svg>
    """
  end

  @doc "search.svg"
  def search(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="11" cy="11" r="8" />
    <path d="m21 21-4.3-4.3" />
    </svg>
    """
  end

  @doc "send-horizontal.svg"
  def send_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m3 3 3 9-3 9 19-9Z" />
    <path d="M6 12h16" />
    </svg>
    """
  end

  @doc "send-to-back.svg"
  def send_to_back(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect x="14" y="14" width="8" height="8" rx="2" />
    <rect x="2" y="2" width="8" height="8" rx="2" />
    <path d="M7 14v1a2 2 0 0 0 2 2h1" />
    <path d="M14 7h1a2 2 0 0 1 2 2v1" />
    </svg>
    """
  end

  @doc "send.svg"
  def send(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m22 2-7 20-4-9-9-4Z" />
    <path d="M22 2 11 13" />
    </svg>
    """
  end

  @doc "separator-horizontal.svg"
  def separator_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="3" x2="21" y1="12" y2="12" />
    <polyline points="8 8 12 4 16 8" />
    <polyline points="16 16 12 20 8 16" />
    </svg>
    """
  end

  @doc "separator-vertical.svg"
  def separator_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="12" x2="12" y1="3" y2="21" />
    <polyline points="8 8 4 12 8 16" />
    <polyline points="16 16 20 12 16 8" />
    </svg>
    """
  end

  @doc "server-cog.svg"
  def server_cog(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="3" />
    <path d="M4.5 10H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2h-.5" />
    <path d="M4.5 14H4a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2h-.5" />
    <path d="M6 6h.01" />
    <path d="M6 18h.01" />
    <path d="m15.7 13.4-.9-.3" />
    <path d="m9.2 10.9-.9-.3" />
    <path d="m10.6 15.7.3-.9" />
    <path d="m13.6 15.7-.4-1" />
    <path d="m10.8 9.3-.4-1" />
    <path d="m8.3 13.6 1-.4" />
    <path d="m14.7 10.8 1-.4" />
    <path d="m13.4 8.3-.3.9" />
    </svg>
    """
  end

  @doc "server-crash.svg"
  def server_crash(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 10H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2h-2" />
    <path d="M6 14H4a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-4a2 2 0 0 0-2-2h-2" />
    <path d="M6 6h.01" />
    <path d="M6 18h.01" />
    <path d="m13 6-4 6h6l-4 6" />
    </svg>
    """
  end

  @doc "server-off.svg"
  def server_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 2h13a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2h-5" />
    <path d="M10 10 2.5 2.5C2 2 2 2.5 2 5v3a2 2 0 0 0 2 2h6z" />
    <path d="M22 17v-1a2 2 0 0 0-2-2h-1" />
    <path d="M4 14a2 2 0 0 0-2 2v4a2 2 0 0 0 2 2h16.5l1-.5.5.5-8-8H4z" />
    <path d="M6 18h.01" />
    <path d="m2 2 20 20" />
    </svg>
    """
  end

  @doc "server.svg"
  def server(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="8" x="2" y="2" rx="2" ry="2" />
    <rect width="20" height="8" x="2" y="14" rx="2" ry="2" />
    <line x1="6" x2="6.01" y1="6" y2="6" />
    <line x1="6" x2="6.01" y1="18" y2="18" />
    </svg>
    """
  end

  @doc "settings-2.svg"
  def settings_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 7h-9" />
    <path d="M14 17H5" />
    <circle cx="17" cy="17" r="3" />
    <circle cx="7" cy="7" r="3" />
    </svg>
    """
  end

  @doc "settings.svg"
  def settings(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12.22 2h-.44a2 2 0 0 0-2 2v.18a2 2 0 0 1-1 1.73l-.43.25a2 2 0 0 1-2 0l-.15-.08a2 2 0 0 0-2.73.73l-.22.38a2 2 0 0 0 .73 2.73l.15.1a2 2 0 0 1 1 1.72v.51a2 2 0 0 1-1 1.74l-.15.09a2 2 0 0 0-.73 2.73l.22.38a2 2 0 0 0 2.73.73l.15-.08a2 2 0 0 1 2 0l.43.25a2 2 0 0 1 1 1.73V20a2 2 0 0 0 2 2h.44a2 2 0 0 0 2-2v-.18a2 2 0 0 1 1-1.73l.43-.25a2 2 0 0 1 2 0l.15.08a2 2 0 0 0 2.73-.73l.22-.39a2 2 0 0 0-.73-2.73l-.15-.08a2 2 0 0 1-1-1.74v-.5a2 2 0 0 1 1-1.74l.15-.09a2 2 0 0 0 .73-2.73l-.22-.38a2 2 0 0 0-2.73-.73l-.15.08a2 2 0 0 1-2 0l-.43-.25a2 2 0 0 1-1-1.73V4a2 2 0 0 0-2-2z" />
    <circle cx="12" cy="12" r="3" />
    </svg>
    """
  end

  @doc "shapes.svg"
  def shapes(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8.3 10a.7.7 0 0 1-.626-1.079L11.4 3a.7.7 0 0 1 1.198-.043L16.3 8.9a.7.7 0 0 1-.572 1.1Z" />
    <rect x="3" y="14" width="7" height="7" rx="1" />
    <circle cx="17.5" cy="17.5" r="3.5" />
    </svg>
    """
  end

  @doc "share-2.svg"
  def share_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="18" cy="5" r="3" />
    <circle cx="6" cy="12" r="3" />
    <circle cx="18" cy="19" r="3" />
    <line x1="8.59" x2="15.42" y1="13.51" y2="17.49" />
    <line x1="15.41" x2="8.59" y1="6.51" y2="10.49" />
    </svg>
    """
  end

  @doc "share.svg"
  def share(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 12v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8" />
    <polyline points="16 6 12 2 8 6" />
    <line x1="12" x2="12" y1="2" y2="15" />
    </svg>
    """
  end

  @doc "sheet.svg"
  def sheet(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" ry="2" />
    <line x1="3" x2="21" y1="9" y2="9" />
    <line x1="3" x2="21" y1="15" y2="15" />
    <line x1="9" x2="9" y1="9" y2="21" />
    <line x1="15" x2="15" y1="9" y2="21" />
    </svg>
    """
  end

  @doc "shell.svg"
  def shell(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14 11a2 2 0 1 1-4 0 4 4 0 0 1 8 0 6 6 0 0 1-12 0 8 8 0 0 1 16 0 10 10 0 1 1-20 0 11.93 11.93 0 0 1 2.42-7.22 2 2 0 1 1 3.16 2.44" />
    </svg>
    """
  end

  @doc "shield-alert.svg"
  def shield_alert(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10" />
    <path d="M12 8v4" />
    <path d="M12 16h.01" />
    </svg>
    """
  end

  @doc "shield-ban.svg"
  def shield_ban(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10" />
    <path d="m4 5 14 12" />
    </svg>
    """
  end

  @doc "shield-check.svg"
  def shield_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10" />
    <path d="m9 12 2 2 4-4" />
    </svg>
    """
  end

  @doc "shield-ellipsis.svg"
  def shield_ellipsis(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10" />
    <path d="M8 11h.01" />
    <path d="M12 11h.01" />
    <path d="M16 11h.01" />
    </svg>
    """
  end

  @doc "shield-half.svg"
  def shield_half(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10" />
    <path d="M12 22V2" />
    </svg>
    """
  end

  @doc "shield-minus.svg"
  def shield_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10" />
    <path d="M9 11h6" />
    </svg>
    """
  end

  @doc "shield-off.svg"
  def shield_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19.7 14a6.9 6.9 0 0 0 .3-2V5l-8-3-3.2 1.2" />
    <path d="m2 2 20 20" />
    <path d="M4.7 4.7 4 5v7c0 6 8 10 8 10a20.3 20.3 0 0 0 5.62-4.38" />
    </svg>
    """
  end

  @doc "shield-plus.svg"
  def shield_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10" />
    <path d="M9 11h6" />
    <path d="M12 8v6" />
    </svg>
    """
  end

  @doc "shield-question.svg"
  def shield_question(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10" />
    <path d="M9.1 9a3 3 0 0 1 5.82 1c0 2-3 3-3 3" />
    <path d="M12 17h.01" />
    </svg>
    """
  end

  @doc "shield-x.svg"
  def shield_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10" />
    <path d="m14.5 9-5 5" />
    <path d="m9.5 9 5 5" />
    </svg>
    """
  end

  @doc "shield.svg"
  def shield(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10" />
    </svg>
    """
  end

  @doc "ship-wheel.svg"
  def ship_wheel(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="8" />
    <path d="M12 2v7.5" />
    <path d="m19 5-5.23 5.23" />
    <path d="M22 12h-7.5" />
    <path d="m19 19-5.23-5.23" />
    <path d="M12 14.5V22" />
    <path d="M10.23 13.77 5 19" />
    <path d="M9.5 12H2" />
    <path d="M10.23 10.23 5 5" />
    <circle cx="12" cy="12" r="2.5" />
    </svg>
    """
  end

  @doc "ship.svg"
  def ship(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 21c.6.5 1.2 1 2.5 1 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1 .6.5 1.2 1 2.5 1 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1" />
    <path d="M19.38 20A11.6 11.6 0 0 0 21 14l-9-4-9 4c0 2.9.94 5.34 2.81 7.76" />
    <path d="M19 13V7a2 2 0 0 0-2-2H7a2 2 0 0 0-2 2v6" />
    <path d="M12 10v4" />
    <path d="M12 2v3" />
    </svg>
    """
  end

  @doc "shirt.svg"
  def shirt(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20.38 3.46 16 2a4 4 0 0 1-8 0L3.62 3.46a2 2 0 0 0-1.34 2.23l.58 3.47a1 1 0 0 0 .99.84H6v10c0 1.1.9 2 2 2h8a2 2 0 0 0 2-2V10h2.15a1 1 0 0 0 .99-.84l.58-3.47a2 2 0 0 0-1.34-2.23z" />
    </svg>
    """
  end

  @doc "shopping-bag.svg"
  def shopping_bag(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 2 3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4Z" />
    <path d="M3 6h18" />
    <path d="M16 10a4 4 0 0 1-8 0" />
    </svg>
    """
  end

  @doc "shopping-basket.svg"
  def shopping_basket(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m15 11-1 9" />
    <path d="m19 11-4-7" />
    <path d="M2 11h20" />
    <path d="m3.5 11 1.6 7.4a2 2 0 0 0 2 1.6h9.8a2 2 0 0 0 2-1.6l1.7-7.4" />
    <path d="M4.5 15.5h15" />
    <path d="m5 11 4-7" />
    <path d="m9 11 1 9" />
    </svg>
    """
  end

  @doc "shopping-cart.svg"
  def shopping_cart(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="8" cy="21" r="1" />
    <circle cx="19" cy="21" r="1" />
    <path d="M2.05 2.05h2l2.66 12.42a2 2 0 0 0 2 1.58h9.78a2 2 0 0 0 1.95-1.57l1.65-7.43H5.12" />
    </svg>
    """
  end

  @doc "shovel.svg"
  def shovel(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 22v-5l5-5 5 5-5 5z" />
    <path d="M9.5 14.5 16 8" />
    <path d="m17 2 5 5-.5.5a3.53 3.53 0 0 1-5 0s0 0 0 0a3.53 3.53 0 0 1 0-5L17 2" />
    </svg>
    """
  end

  @doc "shower-head.svg"
  def shower_head(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m4 4 2.5 2.5" />
    <path d="M13.5 6.5a4.95 4.95 0 0 0-7 7" />
    <path d="M15 5 5 15" />
    <path d="M14 17v.01" />
    <path d="M10 16v.01" />
    <path d="M13 13v.01" />
    <path d="M16 10v.01" />
    <path d="M11 20v.01" />
    <path d="M17 14v.01" />
    <path d="M20 11v.01" />
    </svg>
    """
  end

  @doc "shrink.svg"
  def shrink(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m15 15 6 6m-6-6v4.8m0-4.8h4.8" />
    <path d="M9 19.8V15m0 0H4.2M9 15l-6 6" />
    <path d="M15 4.2V9m0 0h4.8M15 9l6-6" />
    <path d="M9 4.2V9m0 0H4.2M9 9 3 3" />
    </svg>
    """
  end

  @doc "shrub.svg"
  def shrub(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22v-7l-2-2" />
    <path d="M17 8v.8A6 6 0 0 1 13.8 20v0H10v0A6.5 6.5 0 0 1 7 8h0a5 5 0 0 1 10 0Z" />
    <path d="m14 14-2 2" />
    </svg>
    """
  end

  @doc "shuffle.svg"
  def shuffle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 18h1.4c1.3 0 2.5-.6 3.3-1.7l6.1-8.6c.7-1.1 2-1.7 3.3-1.7H22" />
    <path d="m18 2 4 4-4 4" />
    <path d="M2 6h1.9c1.5 0 2.9.9 3.6 2.2" />
    <path d="M22 18h-5.9c-1.3 0-2.6-.7-3.3-1.8l-.5-.8" />
    <path d="m18 14 4 4-4 4" />
    </svg>
    """
  end

  @doc "sigma-square.svg"
  def sigma_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M16 8.9V7H8l4 5-4 5h8v-1.9" />
    </svg>
    """
  end

  @doc "sigma.svg"
  def sigma(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 7V4H6l6 8-6 8h12v-3" />
    </svg>
    """
  end

  @doc "signal-high.svg"
  def signal_high(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 20h.01" />
    <path d="M7 20v-4" />
    <path d="M12 20v-8" />
    <path d="M17 20V8" />
    </svg>
    """
  end

  @doc "signal-low.svg"
  def signal_low(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 20h.01" />
    <path d="M7 20v-4" />
    </svg>
    """
  end

  @doc "signal-medium.svg"
  def signal_medium(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 20h.01" />
    <path d="M7 20v-4" />
    <path d="M12 20v-8" />
    </svg>
    """
  end

  @doc "signal-zero.svg"
  def signal_zero(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 20h.01" />
    </svg>
    """
  end

  @doc "signal.svg"
  def signal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 20h.01" />
    <path d="M7 20v-4" />
    <path d="M12 20v-8" />
    <path d="M17 20V8" />
    <path d="M22 4v16" />
    </svg>
    """
  end

  @doc "signpost-big.svg"
  def signpost_big(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 9H4L2 7l2-2h6" />
    <path d="M14 5h6l2 2-2 2h-6" />
    <path d="M10 22V4a2 2 0 1 1 4 0v18" />
    <path d="M8 22h8" />
    </svg>
    """
  end

  @doc "signpost.svg"
  def signpost(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 3v3" />
    <path d="M18.5 13h-13L2 9.5 5.5 6h13L22 9.5Z" />
    <path d="M12 13v8" />
    </svg>
    """
  end

  @doc "siren.svg"
  def siren(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 12a5 5 0 0 1 5-5v0a5 5 0 0 1 5 5v6H7v-6Z" />
    <path d="M5 20a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v2H5v-2Z" />
    <path d="M21 12h1" />
    <path d="M18.5 4.5 18 5" />
    <path d="M2 12h1" />
    <path d="M12 2v1" />
    <path d="m4.929 4.929.707.707" />
    <path d="M12 12v6" />
    </svg>
    """
  end

  @doc "skip-back.svg"
  def skip_back(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="19 20 9 12 19 4 19 20" />
    <line x1="5" x2="5" y1="19" y2="5" />
    </svg>
    """
  end

  @doc "skip-forward.svg"
  def skip_forward(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="5 4 15 12 5 20 5 4" />
    <line x1="19" x2="19" y1="5" y2="19" />
    </svg>
    """
  end

  @doc "skull.svg"
  def skull(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="9" cy="12" r="1" />
    <circle cx="15" cy="12" r="1" />
    <path d="M8 20v2h8v-2" />
    <path d="m12.5 17-.5-1-.5 1h1z" />
    <path d="M16 20a2 2 0 0 0 1.56-3.25 8 8 0 1 0-11.12 0A2 2 0 0 0 8 20" />
    </svg>
    """
  end

  @doc "slack.svg"
  def slack(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="3" height="8" x="13" y="2" rx="1.5" />
    <path d="M19 8.5V10h1.5A1.5 1.5 0 1 0 19 8.5" />
    <rect width="3" height="8" x="8" y="14" rx="1.5" />
    <path d="M5 15.5V14H3.5A1.5 1.5 0 1 0 5 15.5" />
    <rect width="8" height="3" x="14" y="13" rx="1.5" />
    <path d="M15.5 19H14v1.5a1.5 1.5 0 1 0 1.5-1.5" />
    <rect width="8" height="3" x="2" y="8" rx="1.5" />
    <path d="M8.5 5H10V3.5A1.5 1.5 0 1 0 8.5 5" />
    </svg>
    """
  end

  @doc "slash-square.svg"
  def slash_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <line x1="9" x2="15" y1="15" y2="9" />
    </svg>
    """
  end

  @doc "slash.svg"
  def slash(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 2 2 22" />
    </svg>
    """
  end

  @doc "slice.svg"
  def slice(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m8 14-6 6h9v-3" />
    <path d="M18.37 3.63 8 14l3 3L21.37 6.63a2.12 2.12 0 1 0-3-3Z" />
    </svg>
    """
  end

  @doc "sliders-horizontal.svg"
  def sliders_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="21" x2="14" y1="4" y2="4" />
    <line x1="10" x2="3" y1="4" y2="4" />
    <line x1="21" x2="12" y1="12" y2="12" />
    <line x1="8" x2="3" y1="12" y2="12" />
    <line x1="21" x2="16" y1="20" y2="20" />
    <line x1="12" x2="3" y1="20" y2="20" />
    <line x1="14" x2="14" y1="2" y2="6" />
    <line x1="8" x2="8" y1="10" y2="14" />
    <line x1="16" x2="16" y1="18" y2="22" />
    </svg>
    """
  end

  @doc "sliders.svg"
  def sliders(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="4" x2="4" y1="21" y2="14" />
    <line x1="4" x2="4" y1="10" y2="3" />
    <line x1="12" x2="12" y1="21" y2="12" />
    <line x1="12" x2="12" y1="8" y2="3" />
    <line x1="20" x2="20" y1="21" y2="16" />
    <line x1="20" x2="20" y1="12" y2="3" />
    <line x1="2" x2="6" y1="14" y2="14" />
    <line x1="10" x2="14" y1="8" y2="8" />
    <line x1="18" x2="22" y1="16" y2="16" />
    </svg>
    """
  end

  @doc "smartphone-charging.svg"
  def smartphone_charging(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="14" height="20" x="5" y="2" rx="2" ry="2" />
    <path d="M12.667 8 10 12h4l-2.667 4" />
    </svg>
    """
  end

  @doc "smartphone-nfc.svg"
  def smartphone_nfc(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="7" height="12" x="2" y="6" rx="1" />
    <path d="M13 8.32a7.43 7.43 0 0 1 0 7.36" />
    <path d="M16.46 6.21a11.76 11.76 0 0 1 0 11.58" />
    <path d="M19.91 4.1a15.91 15.91 0 0 1 .01 15.8" />
    </svg>
    """
  end

  @doc "smartphone.svg"
  def smartphone(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="14" height="20" x="5" y="2" rx="2" ry="2" />
    <path d="M12 18h.01" />
    </svg>
    """
  end

  @doc "smile-plus.svg"
  def smile_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 11v1a10 10 0 1 1-9-10" />
    <path d="M8 14s1.5 2 4 2 4-2 4-2" />
    <line x1="9" x2="9.01" y1="9" y2="9" />
    <line x1="15" x2="15.01" y1="9" y2="9" />
    <path d="M16 5h6" />
    <path d="M19 2v6" />
    </svg>
    """
  end

  @doc "smile.svg"
  def smile(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="M8 14s1.5 2 4 2 4-2 4-2" />
    <line x1="9" x2="9.01" y1="9" y2="9" />
    <line x1="15" x2="15.01" y1="9" y2="9" />
    </svg>
    """
  end

  @doc "snail.svg"
  def snail(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 13a6 6 0 1 0 12 0 4 4 0 1 0-8 0 2 2 0 0 0 4 0" />
    <circle cx="10" cy="13" r="8" />
    <path d="M2 21h12c4.4 0 8-3.6 8-8V7a2 2 0 1 0-4 0v6" />
    <path d="M18 3 19.1 5.2" />
    <path d="M22 3 20.9 5.2" />
    </svg>
    """
  end

  @doc "snowflake.svg"
  def snowflake(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="2" x2="22" y1="12" y2="12" />
    <line x1="12" x2="12" y1="2" y2="22" />
    <path d="m20 16-4-4 4-4" />
    <path d="m4 8 4 4-4 4" />
    <path d="m16 4-4 4-4-4" />
    <path d="m8 20 4-4 4 4" />
    </svg>
    """
  end

  @doc "sofa.svg"
  def sofa(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M20 9V6a2 2 0 0 0-2-2H6a2 2 0 0 0-2 2v3" />
    <path d="M2 11v5a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-5a2 2 0 0 0-4 0v2H6v-2a2 2 0 0 0-4 0Z" />
    <path d="M4 18v2" />
    <path d="M20 18v2" />
    <path d="M12 4v9" />
    </svg>
    """
  end

  @doc "soup.svg"
  def soup(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 21a9 9 0 0 0 9-9H3a9 9 0 0 0 9 9Z" />
    <path d="M7 21h10" />
    <path d="M19.5 12 22 6" />
    <path d="M16.25 3c.27.1.8.53.75 1.36-.06.83-.93 1.2-1 2.02-.05.78.34 1.24.73 1.62" />
    <path d="M11.25 3c.27.1.8.53.74 1.36-.05.83-.93 1.2-.98 2.02-.06.78.33 1.24.72 1.62" />
    <path d="M6.25 3c.27.1.8.53.75 1.36-.06.83-.93 1.2-1 2.02-.05.78.34 1.24.74 1.62" />
    </svg>
    """
  end

  @doc "space.svg"
  def space(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 17v1c0 .5-.5 1-1 1H3c-.5 0-1-.5-1-1v-1" />
    </svg>
    """
  end

  @doc "spade.svg"
  def spade(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 9c-1.5 1.5-3 3.2-3 5.5A5.5 5.5 0 0 0 7.5 20c1.8 0 3-.5 4.5-2 1.5 1.5 2.7 2 4.5 2a5.5 5.5 0 0 0 5.5-5.5c0-2.3-1.5-4-3-5.5l-7-7-7 7Z" />
    <path d="M12 18v4" />
    </svg>
    """
  end

  @doc "sparkle.svg"
  def sparkle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m12 3-1.9 5.8a2 2 0 0 1-1.287 1.288L3 12l5.8 1.9a2 2 0 0 1 1.288 1.287L12 21l1.9-5.8a2 2 0 0 1 1.287-1.288L21 12l-5.8-1.9a2 2 0 0 1-1.288-1.287Z" />
    </svg>
    """
  end

  @doc "sparkles.svg"
  def sparkles(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m12 3-1.912 5.813a2 2 0 0 1-1.275 1.275L3 12l5.813 1.912a2 2 0 0 1 1.275 1.275L12 21l1.912-5.813a2 2 0 0 1 1.275-1.275L21 12l-5.813-1.912a2 2 0 0 1-1.275-1.275L12 3Z" />
    <path d="M5 3v4" />
    <path d="M19 17v4" />
    <path d="M3 5h4" />
    <path d="M17 19h4" />
    </svg>
    """
  end

  @doc "speaker.svg"
  def speaker(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="16" height="20" x="4" y="2" rx="2" />
    <path d="M12 6h.01" />
    <circle cx="12" cy="14" r="4" />
    <path d="M12 14h.01" />
    </svg>
    """
  end

  @doc "speech.svg"
  def speech(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8.8 20v-4.1l1.9.2a2.3 2.3 0 0 0 2.164-2.1V8.3A5.37 5.37 0 0 0 2 8.25c0 2.8.656 3.054 1 4.55a5.77 5.77 0 0 1 .029 2.758L2 20" />
    <path d="M19.8 17.8a7.5 7.5 0 0 0 .003-10.603" />
    <path d="M17 15a3.5 3.5 0 0 0-.025-4.975" />
    </svg>
    """
  end

  @doc "spell-check-2.svg"
  def spell_check_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m6 16 6-12 6 12" />
    <path d="M8 12h8" />
    <path d="M4 21c1.1 0 1.1-1 2.3-1s1.1 1 2.3 1c1.1 0 1.1-1 2.3-1 1.1 0 1.1 1 2.3 1 1.1 0 1.1-1 2.3-1 1.1 0 1.1 1 2.3 1 1.1 0 1.1-1 2.3-1" />
    </svg>
    """
  end

  @doc "spell-check.svg"
  def spell_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m6 16 6-12 6 12" />
    <path d="M8 12h8" />
    <path d="m16 20 2 2 4-4" />
    </svg>
    """
  end

  @doc "spline.svg"
  def spline(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="19" cy="5" r="2" />
    <circle cx="5" cy="19" r="2" />
    <path d="M5 17A12 12 0 0 1 17 5" />
    </svg>
    """
  end

  @doc "split-square-horizontal.svg"
  def split_square_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 19H5c-1 0-2-1-2-2V7c0-1 1-2 2-2h3" />
    <path d="M16 5h3c1 0 2 1 2 2v10c0 1-1 2-2 2h-3" />
    <line x1="12" x2="12" y1="4" y2="20" />
    </svg>
    """
  end

  @doc "split-square-vertical.svg"
  def split_square_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 8V5c0-1 1-2 2-2h10c1 0 2 1 2 2v3" />
    <path d="M19 16v3c0 1-1 2-2 2H7c-1 0-2-1-2-2v-3" />
    <line x1="4" x2="20" y1="12" y2="12" />
    </svg>
    """
  end

  @doc "split.svg"
  def split(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 3h5v5" />
    <path d="M8 3H3v5" />
    <path d="M12 22v-8.3a4 4 0 0 0-1.172-2.872L3 3" />
    <path d="m15 9 6-6" />
    </svg>
    """
  end

  @doc "spray-can.svg"
  def spray_can(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 3h.01" />
    <path d="M7 5h.01" />
    <path d="M11 7h.01" />
    <path d="M3 7h.01" />
    <path d="M7 9h.01" />
    <path d="M3 11h.01" />
    <rect width="4" height="4" x="15" y="5" />
    <path d="m19 9 2 2v10c0 .6-.4 1-1 1h-6c-.6 0-1-.4-1-1V11l2-2" />
    <path d="m13 14 8-2" />
    <path d="m13 19 8-2" />
    </svg>
    """
  end

  @doc "sprout.svg"
  def sprout(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 20h10" />
    <path d="M10 20c5.5-2.5.8-6.4 3-10" />
    <path d="M9.5 9.4c1.1.8 1.8 2.2 2.3 3.7-2 .4-3.5.4-4.8-.3-1.2-.6-2.3-1.9-3-4.2 2.8-.5 4.4 0 5.5.8z" />
    <path d="M14.1 6a7 7 0 0 0-1.1 4c1.9-.1 3.3-.6 4.3-1.4 1-1 1.6-2.3 1.7-4.6-2.7.1-4 1-4.9 2z" />
    </svg>
    """
  end

  @doc "square-dashed-bottom-code.svg"
  def square_dashed_bottom_code(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m10 10-2 2 2 2" />
    <path d="m14 14 2-2-2-2" />
    <path d="M5 21a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2" />
    <path d="M9 21h1" />
    <path d="M14 21h1" />
    </svg>
    """
  end

  @doc "square-dashed-bottom.svg"
  def square_dashed_bottom(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 21a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2" />
    <path d="M9 21h1" />
    <path d="M14 21h1" />
    </svg>
    """
  end

  @doc "square-pen.svg"
  def square_pen(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7" />
    <path d="M18.375 2.625a2.121 2.121 0 1 1 3 3L12 15l-4 1 1-4Z" />
    </svg>
    """
  end

  @doc "square-radical.svg"
  def square_radical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 12h2l2 5 2-10h4" />
    <rect x="3" y="3" width="18" height="18" rx="2" />
    </svg>
    """
  end

  @doc "square-stack.svg"
  def square_stack(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 10c-1.1 0-2-.9-2-2V4c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2" />
    <path d="M10 16c-1.1 0-2-.9-2-2v-4c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2" />
    <rect width="8" height="8" x="14" y="14" rx="2" />
    </svg>
    """
  end

  @doc "square-user-round.svg"
  def square_user_round(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 21a6 6 0 0 0-12 0" />
    <circle cx="12" cy="11" r="4" />
    <rect width="18" height="18" x="3" y="3" rx="2" />
    </svg>
    """
  end

  @doc "square-user.svg"
  def square_user(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <circle cx="12" cy="10" r="3" />
    <path d="M7 21v-2a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v2" />
    </svg>
    """
  end

  @doc "square.svg"
  def square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    </svg>
    """
  end

  @doc "squircle.svg"
  def squircle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 3c7.2 0 9 1.8 9 9s-1.8 9-9 9-9-1.8-9-9 1.8-9 9-9" />
    </svg>
    """
  end

  @doc "squirrel.svg"
  def squirrel(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15.236 22a3 3 0 0 0-2.2-5" />
    <path d="M16 20a3 3 0 0 1 3-3h1a2 2 0 0 0 2-2v-2a4 4 0 0 0-4-4V4" />
    <path d="M18 13h.01" />
    <path d="M18 6a4 4 0 0 0-4 4 7 7 0 0 0-7 7c0-5 4-5 4-10.5a4.5 4.5 0 1 0-9 0 2.5 2.5 0 0 0 5 0C7 10 3 11 3 17c0 2.8 2.2 5 5 5h10" />
    </svg>
    """
  end

  @doc "stamp.svg"
  def stamp(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 22h14" />
    <path d="M19.27 13.73A2.5 2.5 0 0 0 17.5 13h-11A2.5 2.5 0 0 0 4 15.5V17a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1v-1.5c0-.66-.26-1.3-.73-1.77Z" />
    <path d="M14 13V8.5C14 7 15 7 15 5a3 3 0 0 0-3-3c-1.66 0-3 1-3 3s1 2 1 3.5V13" />
    </svg>
    """
  end

  @doc "star-half.svg"
  def star_half(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 17.8 5.8 21 7 14.1 2 9.3l7-1L12 2" />
    </svg>
    """
  end

  @doc "star-off.svg"
  def star_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8.34 8.34 2 9.27l5 4.87L5.82 21 12 17.77 18.18 21l-.59-3.43" />
    <path d="M18.42 12.76 22 9.27l-6.91-1L12 2l-1.44 2.91" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "star.svg"
  def star(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2" />
    </svg>
    """
  end

  @doc "step-back.svg"
  def step_back(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="18" x2="18" y1="20" y2="4" />
    <polygon points="14,20 4,12 14,4" />
    </svg>
    """
  end

  @doc "step-forward.svg"
  def step_forward(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="6" x2="6" y1="4" y2="20" />
    <polygon points="10,4 20,12 10,20" />
    </svg>
    """
  end

  @doc "stethoscope.svg"
  def stethoscope(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4.8 2.3A.3.3 0 1 0 5 2H4a2 2 0 0 0-2 2v5a6 6 0 0 0 6 6v0a6 6 0 0 0 6-6V4a2 2 0 0 0-2-2h-1a.2.2 0 1 0 .3.3" />
    <path d="M8 15v1a6 6 0 0 0 6 6v0a6 6 0 0 0 6-6v-4" />
    <circle cx="20" cy="10" r="2" />
    </svg>
    """
  end

  @doc "sticker.svg"
  def sticker(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15.5 3H5a2 2 0 0 0-2 2v14c0 1.1.9 2 2 2h14a2 2 0 0 0 2-2V8.5L15.5 3Z" />
    <path d="M14 3v4a2 2 0 0 0 2 2h4" />
    <path d="M8 13h0" />
    <path d="M16 13h0" />
    <path d="M10 16s.8 1 2 1c1.3 0 2-1 2-1" />
    </svg>
    """
  end

  @doc "sticky-note.svg"
  def sticky_note(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 3H5a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V8Z" />
    <path d="M15 3v4a2 2 0 0 0 2 2h4" />
    </svg>
    """
  end

  @doc "stop-circle.svg"
  def stop_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <rect width="6" height="6" x="9" y="9" />
    </svg>
    """
  end

  @doc "store.svg"
  def store(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m2 7 4.41-4.41A2 2 0 0 1 7.83 2h8.34a2 2 0 0 1 1.42.59L22 7" />
    <path d="M4 12v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8" />
    <path d="M15 22v-4a2 2 0 0 0-2-2h-2a2 2 0 0 0-2 2v4" />
    <path d="M2 7h20" />
    <path d="M22 7v3a2 2 0 0 1-2 2v0a2.7 2.7 0 0 1-1.59-.63.7.7 0 0 0-.82 0A2.7 2.7 0 0 1 16 12a2.7 2.7 0 0 1-1.59-.63.7.7 0 0 0-.82 0A2.7 2.7 0 0 1 12 12a2.7 2.7 0 0 1-1.59-.63.7.7 0 0 0-.82 0A2.7 2.7 0 0 1 8 12a2.7 2.7 0 0 1-1.59-.63.7.7 0 0 0-.82 0A2.7 2.7 0 0 1 4 12v0a2 2 0 0 1-2-2V7" />
    </svg>
    """
  end

  @doc "stretch-horizontal.svg"
  def stretch_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="6" x="2" y="4" rx="2" />
    <rect width="20" height="6" x="2" y="14" rx="2" />
    </svg>
    """
  end

  @doc "stretch-vertical.svg"
  def stretch_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="6" height="20" x="4" y="2" rx="2" />
    <rect width="6" height="20" x="14" y="2" rx="2" />
    </svg>
    """
  end

  @doc "strikethrough.svg"
  def strikethrough(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 4H9a3 3 0 0 0-2.83 4" />
    <path d="M14 12a4 4 0 0 1 0 8H6" />
    <line x1="4" x2="20" y1="12" y2="12" />
    </svg>
    """
  end

  @doc "subscript.svg"
  def subscript(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m4 5 8 8" />
    <path d="m12 5-8 8" />
    <path d="M20 19h-4c0-1.5.44-2 1.5-2.5S20 15.33 20 14c0-.47-.17-.93-.48-1.29a2.11 2.11 0 0 0-2.62-.44c-.42.24-.74.62-.9 1.07" />
    </svg>
    """
  end

  @doc "sun-dim.svg"
  def sun_dim(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="4" />
    <path d="M12 4h.01" />
    <path d="M20 12h.01" />
    <path d="M12 20h.01" />
    <path d="M4 12h.01" />
    <path d="M17.657 6.343h.01" />
    <path d="M17.657 17.657h.01" />
    <path d="M6.343 17.657h.01" />
    <path d="M6.343 6.343h.01" />
    </svg>
    """
  end

  @doc "sun-medium.svg"
  def sun_medium(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="4" />
    <path d="M12 3v1" />
    <path d="M12 20v1" />
    <path d="M3 12h1" />
    <path d="M20 12h1" />
    <path d="m18.364 5.636-.707.707" />
    <path d="m6.343 17.657-.707.707" />
    <path d="m5.636 5.636.707.707" />
    <path d="m17.657 17.657.707.707" />
    </svg>
    """
  end

  @doc "sun-moon.svg"
  def sun_moon(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 8a2.83 2.83 0 0 0 4 4 4 4 0 1 1-4-4" />
    <path d="M12 2v2" />
    <path d="M12 20v2" />
    <path d="m4.9 4.9 1.4 1.4" />
    <path d="m17.7 17.7 1.4 1.4" />
    <path d="M2 12h2" />
    <path d="M20 12h2" />
    <path d="m6.3 17.7-1.4 1.4" />
    <path d="m19.1 4.9-1.4 1.4" />
    </svg>
    """
  end

  @doc "sun-snow.svg"
  def sun_snow(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 9a3 3 0 1 0 0 6" />
    <path d="M2 12h1" />
    <path d="M14 21V3" />
    <path d="M10 4V3" />
    <path d="M10 21v-1" />
    <path d="m3.64 18.36.7-.7" />
    <path d="m4.34 6.34-.7-.7" />
    <path d="M14 12h8" />
    <path d="m17 4-3 3" />
    <path d="m14 17 3 3" />
    <path d="m21 15-3-3 3-3" />
    </svg>
    """
  end

  @doc "sun.svg"
  def sun(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="4" />
    <path d="M12 2v2" />
    <path d="M12 20v2" />
    <path d="m4.93 4.93 1.41 1.41" />
    <path d="m17.66 17.66 1.41 1.41" />
    <path d="M2 12h2" />
    <path d="M20 12h2" />
    <path d="m6.34 17.66-1.41 1.41" />
    <path d="m19.07 4.93-1.41 1.41" />
    </svg>
    """
  end

  @doc "sunrise.svg"
  def sunrise(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 2v8" />
    <path d="m4.93 10.93 1.41 1.41" />
    <path d="M2 18h2" />
    <path d="M20 18h2" />
    <path d="m19.07 10.93-1.41 1.41" />
    <path d="M22 22H2" />
    <path d="m8 6 4-4 4 4" />
    <path d="M16 18a4 4 0 0 0-8 0" />
    </svg>
    """
  end

  @doc "sunset.svg"
  def sunset(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 10V2" />
    <path d="m4.93 10.93 1.41 1.41" />
    <path d="M2 18h2" />
    <path d="M20 18h2" />
    <path d="m19.07 10.93-1.41 1.41" />
    <path d="M22 22H2" />
    <path d="m16 6-4 4-4-4" />
    <path d="M16 18a4 4 0 0 0-8 0" />
    </svg>
    """
  end

  @doc "superscript.svg"
  def superscript(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m4 19 8-8" />
    <path d="m12 19-8-8" />
    <path d="M20 12h-4c0-1.5.442-2 1.5-2.5S20 8.334 20 7.002c0-.472-.17-.93-.484-1.29a2.105 2.105 0 0 0-2.617-.436c-.42.239-.738.614-.899 1.06" />
    </svg>
    """
  end

  @doc "swatch-book.svg"
  def swatch_book(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 17a4 4 0 0 1-8 0V5a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2Z" />
    <path d="M16.7 13H19a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2H7" />
    <path d="M 7 17h0.01" />
    <path d="m11 8 2.3-2.3a2.4 2.4 0 0 1 3.404.004L18.6 7.6a2.4 2.4 0 0 1 .026 3.434L9.9 19.8" />
    </svg>
    """
  end

  @doc "swiss-franc.svg"
  def swiss_franc(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 21V3h8" />
    <path d="M6 16h9" />
    <path d="M10 9.5h7" />
    </svg>
    """
  end

  @doc "switch-camera.svg"
  def switch_camera(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M11 19H4a2 2 0 0 1-2-2V7a2 2 0 0 1 2-2h5" />
    <path d="M13 5h7a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-5" />
    <circle cx="12" cy="12" r="3" />
    <path d="m18 22-3-3 3-3" />
    <path d="m6 2 3 3-3 3" />
    </svg>
    """
  end

  @doc "sword.svg"
  def sword(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="14.5 17.5 3 6 3 3 6 3 17.5 14.5" />
    <line x1="13" x2="19" y1="19" y2="13" />
    <line x1="16" x2="20" y1="16" y2="20" />
    <line x1="19" x2="21" y1="21" y2="19" />
    </svg>
    """
  end

  @doc "swords.svg"
  def swords(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="14.5 17.5 3 6 3 3 6 3 17.5 14.5" />
    <line x1="13" x2="19" y1="19" y2="13" />
    <line x1="16" x2="20" y1="16" y2="20" />
    <line x1="19" x2="21" y1="21" y2="19" />
    <polyline points="14.5 6.5 18 3 21 3 21 6 17.5 9.5" />
    <line x1="5" x2="9" y1="14" y2="18" />
    <line x1="7" x2="4" y1="17" y2="20" />
    <line x1="3" x2="5" y1="19" y2="21" />
    </svg>
    """
  end

  @doc "syringe.svg"
  def syringe(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m18 2 4 4" />
    <path d="m17 7 3-3" />
    <path d="M19 9 8.7 19.3c-1 1-2.5 1-3.4 0l-.6-.6c-1-1-1-2.5 0-3.4L15 5" />
    <path d="m9 11 4 4" />
    <path d="m5 19-3 3" />
    <path d="m14 4 6 6" />
    </svg>
    """
  end

  @doc "table-2.svg"
  def table_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 3H5a2 2 0 0 0-2 2v4m6-6h10a2 2 0 0 1 2 2v4M9 3v18m0 0h10a2 2 0 0 0 2-2V9M9 21H5a2 2 0 0 1-2-2V9m0 0h18" />
    </svg>
    """
  end

  @doc "table-properties.svg"
  def table_properties(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 3v18" />
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M21 9H3" />
    <path d="M21 15H3" />
    </svg>
    """
  end

  @doc "table.svg"
  def table(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 3v18" />
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M3 9h18" />
    <path d="M3 15h18" />
    </svg>
    """
  end

  @doc "tablet-smartphone.svg"
  def tablet_smartphone(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="10" height="14" x="3" y="8" rx="2" />
    <path d="M5 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v16a2 2 0 0 1-2 2h-2.4" />
    <path d="M8 18h.01" />
    </svg>
    """
  end

  @doc "tablet.svg"
  def tablet(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="16" height="20" x="4" y="2" rx="2" ry="2" />
    <line x1="12" x2="12.01" y1="18" y2="18" />
    </svg>
    """
  end

  @doc "tablets.svg"
  def tablets(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="7" cy="7" r="5" />
    <circle cx="17" cy="17" r="5" />
    <path d="M12 17h10" />
    <path d="m3.46 10.54 7.08-7.08" />
    </svg>
    """
  end

  @doc "tag.svg"
  def tag(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12.586 2.586A2 2 0 0 0 11.172 2H4a2 2 0 0 0-2 2v7.172a2 2 0 0 0 .586 1.414l8.704 8.704a2.426 2.426 0 0 0 3.42 0l6.58-6.58a2.426 2.426 0 0 0 0-3.42z" />
    <circle cx="7.5" cy="7.5" r=".5" fill="currentColor" />
    </svg>
    """
  end

  @doc "tags.svg"
  def tags(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m15 5 6.3 6.3a2.4 2.4 0 0 1 0 3.4L17 19" />
    <path d="M9.586 5.586A2 2 0 0 0 8.172 5H3a1 1 0 0 0-1 1v5.172a2 2 0 0 0 .586 1.414L8.29 18.29a2.426 2.426 0 0 0 3.42 0l3.58-3.58a2.426 2.426 0 0 0 0-3.42z" />
    <circle cx="6.5" cy="9.5" r=".5" fill="currentColor" />
    </svg>
    """
  end

  @doc "tally-1.svg"
  def tally_1(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 4v16" />
    </svg>
    """
  end

  @doc "tally-2.svg"
  def tally_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 4v16" />
    <path d="M9 4v16" />
    </svg>
    """
  end

  @doc "tally-3.svg"
  def tally_3(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 4v16" />
    <path d="M9 4v16" />
    <path d="M14 4v16" />
    </svg>
    """
  end

  @doc "tally-4.svg"
  def tally_4(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 4v16" />
    <path d="M9 4v16" />
    <path d="M14 4v16" />
    <path d="M19 4v16" />
    </svg>
    """
  end

  @doc "tally-5.svg"
  def tally_5(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 4v16" />
    <path d="M9 4v16" />
    <path d="M14 4v16" />
    <path d="M19 4v16" />
    <path d="M22 6 2 18" />
    </svg>
    """
  end

  @doc "tangent.svg"
  def tangent(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="17" cy="4" r="2" />
    <path d="M15.59 5.41 5.41 15.59" />
    <circle cx="4" cy="17" r="2" />
    <path d="M12 22s-4-9-1.5-11.5S22 12 22 12" />
    </svg>
    """
  end

  @doc "target.svg"
  def target(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <circle cx="12" cy="12" r="6" />
    <circle cx="12" cy="12" r="2" />
    </svg>
    """
  end

  @doc "telescope.svg"
  def telescope(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m10.065 12.493-6.18 1.318a.934.934 0 0 1-1.108-.702l-.537-2.15a1.07 1.07 0 0 1 .691-1.265l13.504-4.44" />
    <path d="m13.56 11.747 4.332-.924" />
    <path d="m16 21-3.105-6.21" />
    <path d="M16.485 5.94a2 2 0 0 1 1.455-2.425l1.09-.272a1 1 0 0 1 1.212.727l1.515 6.06a1 1 0 0 1-.727 1.213l-1.09.272a2 2 0 0 1-2.425-1.455z" />
    <path d="m6.158 8.633 1.114 4.456" />
    <path d="m8 21 3.105-6.21" />
    <circle cx="12" cy="13" r="2" />
    </svg>
    """
  end

  @doc "tent-tree.svg"
  def tent_tree(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="4" cy="4" r="2" />
    <path d="m14 5 3-3 3 3" />
    <path d="m14 10 3-3 3 3" />
    <path d="M17 14V2" />
    <path d="M17 14H7l-5 8h20Z" />
    <path d="M8 14v8" />
    <path d="m9 14 5 8" />
    </svg>
    """
  end

  @doc "tent.svg"
  def tent(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3.5 21 14 3" />
    <path d="M20.5 21 10 3" />
    <path d="M15.5 21 12 15l-3.5 6" />
    <path d="M2 21h20" />
    </svg>
    """
  end

  @doc "terminal-square.svg"
  def terminal_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m7 11 2-2-2-2" />
    <path d="M11 13h4" />
    <rect width="18" height="18" x="3" y="3" rx="2" ry="2" />
    </svg>
    """
  end

  @doc "terminal.svg"
  def terminal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="4 17 10 11 4 5" />
    <line x1="12" x2="20" y1="19" y2="19" />
    </svg>
    """
  end

  @doc "test-tube-2.svg"
  def test_tube_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 7 6.82 21.18a2.83 2.83 0 0 1-3.99-.01v0a2.83 2.83 0 0 1 0-4L17 3" />
    <path d="m16 2 6 6" />
    <path d="M12 16H4" />
    </svg>
    """
  end

  @doc "test-tube.svg"
  def test_tube(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14.5 2v17.5c0 1.4-1.1 2.5-2.5 2.5h0c-1.4 0-2.5-1.1-2.5-2.5V2" />
    <path d="M8.5 2h7" />
    <path d="M14.5 16h-5" />
    </svg>
    """
  end

  @doc "test-tubes.svg"
  def test_tubes(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 2v17.5A2.5 2.5 0 0 1 6.5 22v0A2.5 2.5 0 0 1 4 19.5V2" />
    <path d="M20 2v17.5a2.5 2.5 0 0 1-2.5 2.5v0a2.5 2.5 0 0 1-2.5-2.5V2" />
    <path d="M3 2h7" />
    <path d="M14 2h7" />
    <path d="M9 16H4" />
    <path d="M20 16h-5" />
    </svg>
    """
  end

  @doc "text-cursor-input.svg"
  def text_cursor_input(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 4h1a3 3 0 0 1 3 3 3 3 0 0 1 3-3h1" />
    <path d="M13 20h-1a3 3 0 0 1-3-3 3 3 0 0 1-3 3H5" />
    <path d="M5 16H4a2 2 0 0 1-2-2v-4a2 2 0 0 1 2-2h1" />
    <path d="M13 8h7a2 2 0 0 1 2 2v4a2 2 0 0 1-2 2h-7" />
    <path d="M9 7v10" />
    </svg>
    """
  end

  @doc "text-cursor.svg"
  def text_cursor(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 22h-1a4 4 0 0 1-4-4V6a4 4 0 0 1 4-4h1" />
    <path d="M7 22h1a4 4 0 0 0 4-4v-1" />
    <path d="M7 2h1a4 4 0 0 1 4 4v1" />
    </svg>
    """
  end

  @doc "text-quote.svg"
  def text_quote(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 6H3" />
    <path d="M21 12H8" />
    <path d="M21 18H8" />
    <path d="M3 12v6" />
    </svg>
    """
  end

  @doc "text-search.svg"
  def text_search(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 6H3" />
    <path d="M10 12H3" />
    <path d="M10 18H3" />
    <circle cx="17" cy="15" r="3" />
    <path d="m21 19-1.9-1.9" />
    </svg>
    """
  end

  @doc "text-select.svg"
  def text_select(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 3a2 2 0 0 0-2 2" />
    <path d="M19 3a2 2 0 0 1 2 2" />
    <path d="M21 19a2 2 0 0 1-2 2" />
    <path d="M5 21a2 2 0 0 1-2-2" />
    <path d="M9 3h1" />
    <path d="M9 21h1" />
    <path d="M14 3h1" />
    <path d="M14 21h1" />
    <path d="M3 9v1" />
    <path d="M21 9v1" />
    <path d="M3 14v1" />
    <path d="M21 14v1" />
    <line x1="7" x2="15" y1="8" y2="8" />
    <line x1="7" x2="17" y1="12" y2="12" />
    <line x1="7" x2="13" y1="16" y2="16" />
    </svg>
    """
  end

  @doc "text.svg"
  def text(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 6.1H3" />
    <path d="M21 12.1H3" />
    <path d="M15.1 18H3" />
    </svg>
    """
  end

  @doc "theater.svg"
  def theater(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 10s3-3 3-8" />
    <path d="M22 10s-3-3-3-8" />
    <path d="M10 2c0 4.4-3.6 8-8 8" />
    <path d="M14 2c0 4.4 3.6 8 8 8" />
    <path d="M2 10s2 2 2 5" />
    <path d="M22 10s-2 2-2 5" />
    <path d="M8 15h8" />
    <path d="M2 22v-1a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v1" />
    <path d="M14 22v-1a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v1" />
    </svg>
    """
  end

  @doc "thermometer-snowflake.svg"
  def thermometer_snowflake(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 12h10" />
    <path d="M9 4v16" />
    <path d="m3 9 3 3-3 3" />
    <path d="M12 6 9 9 6 6" />
    <path d="m6 18 3-3 1.5 1.5" />
    <path d="M20 4v10.54a4 4 0 1 1-4 0V4a2 2 0 0 1 4 0Z" />
    </svg>
    """
  end

  @doc "thermometer-sun.svg"
  def thermometer_sun(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 9a4 4 0 0 0-2 7.5" />
    <path d="M12 3v2" />
    <path d="m6.6 18.4-1.4 1.4" />
    <path d="M20 4v10.54a4 4 0 1 1-4 0V4a2 2 0 0 1 4 0Z" />
    <path d="M4 13H2" />
    <path d="M6.34 7.34 4.93 5.93" />
    </svg>
    """
  end

  @doc "thermometer.svg"
  def thermometer(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14 4v10.54a4 4 0 1 1-4 0V4a2 2 0 0 1 4 0Z" />
    </svg>
    """
  end

  @doc "thumbs-down.svg"
  def thumbs_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 14V2" />
    <path d="M9 18.12 10 14H4.17a2 2 0 0 1-1.92-2.56l2.33-8A2 2 0 0 1 6.5 2H20a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2h-2.76a2 2 0 0 0-1.79 1.11L12 22h0a3.13 3.13 0 0 1-3-3.88Z" />
    </svg>
    """
  end

  @doc "thumbs-up.svg"
  def thumbs_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 10v12" />
    <path d="M15 5.88 14 10h5.83a2 2 0 0 1 1.92 2.56l-2.33 8A2 2 0 0 1 17.5 22H4a2 2 0 0 1-2-2v-8a2 2 0 0 1 2-2h2.76a2 2 0 0 0 1.79-1.11L12 2h0a3.13 3.13 0 0 1 3 3.88Z" />
    </svg>
    """
  end

  @doc "ticket-check.svg"
  def ticket_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 9a3 3 0 0 1 0 6v2a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-2a3 3 0 0 1 0-6V7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z" />
    <path d="m9 12 2 2 4-4" />
    </svg>
    """
  end

  @doc "ticket-minus.svg"
  def ticket_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 9a3 3 0 0 1 0 6v2a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-2a3 3 0 0 1 0-6V7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z" />
    <path d="M9 12h6" />
    </svg>
    """
  end

  @doc "ticket-percent.svg"
  def ticket_percent(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 9a3 3 0 1 1 0 6v2a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-2a3 3 0 1 1 0-6V7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z" />
    <path d="M9 9h.01" />
    <path d="m15 9-6 6" />
    <path d="M15 15h.01" />
    </svg>
    """
  end

  @doc "ticket-plus.svg"
  def ticket_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 9a3 3 0 0 1 0 6v2a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-2a3 3 0 0 1 0-6V7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z" />
    <path d="M9 12h6" />
    <path d="M12 9v6" />
    </svg>
    """
  end

  @doc "ticket-slash.svg"
  def ticket_slash(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 9a3 3 0 0 1 0 6v2a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-2a3 3 0 0 1 0-6V7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z" />
    <path d="m9.5 14.5 5-5" />
    </svg>
    """
  end

  @doc "ticket-x.svg"
  def ticket_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 9a3 3 0 0 1 0 6v2a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-2a3 3 0 0 1 0-6V7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z" />
    <path d="m9.5 14.5 5-5" />
    <path d="m9.5 9.5 5 5" />
    </svg>
    """
  end

  @doc "ticket.svg"
  def ticket(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 9a3 3 0 0 1 0 6v2a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-2a3 3 0 0 1 0-6V7a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2Z" />
    <path d="M13 5v2" />
    <path d="M13 17v2" />
    <path d="M13 11v2" />
    </svg>
    """
  end

  @doc "timer-off.svg"
  def timer_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 2h4" />
    <path d="M4.6 11a8 8 0 0 0 1.7 8.7 8 8 0 0 0 8.7 1.7" />
    <path d="M7.4 7.4a8 8 0 0 1 10.3 1 8 8 0 0 1 .9 10.2" />
    <path d="m2 2 20 20" />
    <path d="M12 12v-2" />
    </svg>
    """
  end

  @doc "timer-reset.svg"
  def timer_reset(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 2h4" />
    <path d="M12 14v-4" />
    <path d="M4 13a8 8 0 0 1 8-7 8 8 0 1 1-5.3 14L4 17.6" />
    <path d="M9 17H4v5" />
    </svg>
    """
  end

  @doc "timer.svg"
  def timer(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="10" x2="14" y1="2" y2="2" />
    <line x1="12" x2="15" y1="14" y2="11" />
    <circle cx="12" cy="14" r="8" />
    </svg>
    """
  end

  @doc "toggle-left.svg"
  def toggle_left(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="12" x="2" y="6" rx="6" ry="6" />
    <circle cx="8" cy="12" r="2" />
    </svg>
    """
  end

  @doc "toggle-right.svg"
  def toggle_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="12" x="2" y="6" rx="6" ry="6" />
    <circle cx="16" cy="12" r="2" />
    </svg>
    """
  end

  @doc "tornado.svg"
  def tornado(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 4H3" />
    <path d="M18 8H6" />
    <path d="M19 12H9" />
    <path d="M16 16h-6" />
    <path d="M11 20H9" />
    </svg>
    """
  end

  @doc "torus.svg"
  def torus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <ellipse cx="12" cy="11" rx="3" ry="2" />
    <ellipse cx="12" cy="12.5" rx="10" ry="8.5" />
    </svg>
    """
  end

  @doc "touchpad-off.svg"
  def touchpad_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h16" />
    <path d="M2 14h12" />
    <path d="M22 14h-2" />
    <path d="M12 20v-6" />
    <path d="m2 2 20 20" />
    <path d="M22 16V6a2 2 0 0 0-2-2H10" />
    </svg>
    """
  end

  @doc "touchpad.svg"
  def touchpad(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="16" x="2" y="4" rx="2" />
    <path d="M2 14h20" />
    <path d="M12 20v-6" />
    </svg>
    """
  end

  @doc "tower-control.svg"
  def tower_control(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18.2 12.27 20 6H4l1.8 6.27a1 1 0 0 0 .95.73h10.5a1 1 0 0 0 .96-.73Z" />
    <path d="M8 13v9" />
    <path d="M16 22v-9" />
    <path d="m9 6 1 7" />
    <path d="m15 6-1 7" />
    <path d="M12 6V2" />
    <path d="M13 2h-2" />
    </svg>
    """
  end

  @doc "toy-brick.svg"
  def toy_brick(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="12" x="3" y="8" rx="1" />
    <path d="M10 8V5c0-.6-.4-1-1-1H6a1 1 0 0 0-1 1v3" />
    <path d="M19 8V5c0-.6-.4-1-1-1h-3a1 1 0 0 0-1 1v3" />
    </svg>
    """
  end

  @doc "tractor.svg"
  def tractor(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 4h9l1 7" />
    <path d="M4 11V4" />
    <path d="M8 10V4" />
    <path d="M18 5c-.6 0-1 .4-1 1v5.6" />
    <path d="m10 11 11 .9c.6 0 .9.5.8 1.1l-.8 5h-1" />
    <circle cx="7" cy="15" r=".5" />
    <circle cx="7" cy="15" r="5" />
    <path d="M16 18h-5" />
    <circle cx="18" cy="18" r="2" />
    </svg>
    """
  end

  @doc "traffic-cone.svg"
  def traffic_cone(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9.3 6.2a4.55 4.55 0 0 0 5.4 0" />
    <path d="M7.9 10.7c.9.8 2.4 1.3 4.1 1.3s3.2-.5 4.1-1.3" />
    <path d="M13.9 3.5a1.93 1.93 0 0 0-3.8-.1l-3 10c-.1.2-.1.4-.1.6 0 1.7 2.2 3 5 3s5-1.3 5-3c0-.2 0-.4-.1-.5Z" />
    <path d="m7.5 12.2-4.7 2.7c-.5.3-.8.7-.8 1.1s.3.8.8 1.1l7.6 4.5c.9.5 2.1.5 3 0l7.6-4.5c.7-.3 1-.7 1-1.1s-.3-.8-.8-1.1l-4.7-2.8" />
    </svg>
    """
  end

  @doc "train-front-tunnel.svg"
  def train_front_tunnel(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 22V12a10 10 0 1 1 20 0v10" />
    <path d="M15 6.8v1.4a3 2.8 0 1 1-6 0V6.8" />
    <path d="M10 15h.01" />
    <path d="M14 15h.01" />
    <path d="M10 19a4 4 0 0 1-4-4v-3a6 6 0 1 1 12 0v3a4 4 0 0 1-4 4Z" />
    <path d="m9 19-2 3" />
    <path d="m15 19 2 3" />
    </svg>
    """
  end

  @doc "train-front.svg"
  def train_front(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 3.1V7a4 4 0 0 0 8 0V3.1" />
    <path d="m9 15-1-1" />
    <path d="m15 15 1-1" />
    <path d="M9 19c-2.8 0-5-2.2-5-5v-4a8 8 0 0 1 16 0v4c0 2.8-2.2 5-5 5Z" />
    <path d="m8 19-2 3" />
    <path d="m16 19 2 3" />
    </svg>
    """
  end

  @doc "train-track.svg"
  def train_track(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 17 17 2" />
    <path d="m2 14 8 8" />
    <path d="m5 11 8 8" />
    <path d="m8 8 8 8" />
    <path d="m11 5 8 8" />
    <path d="m14 2 8 8" />
    <path d="M7 22 22 7" />
    </svg>
    """
  end

  @doc "tram-front.svg"
  def tram_front(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="16" height="16" x="4" y="3" rx="2" />
    <path d="M4 11h16" />
    <path d="M12 3v8" />
    <path d="m8 19-2 3" />
    <path d="m18 22-2-3" />
    <path d="M8 15h0" />
    <path d="M16 15h0" />
    </svg>
    """
  end

  @doc "trash-2.svg"
  def trash_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 6h18" />
    <path d="M19 6v14c0 1-1 2-2 2H7c-1 0-2-1-2-2V6" />
    <path d="M8 6V4c0-1 1-2 2-2h4c1 0 2 1 2 2v2" />
    <line x1="10" x2="10" y1="11" y2="17" />
    <line x1="14" x2="14" y1="11" y2="17" />
    </svg>
    """
  end

  @doc "trash.svg"
  def trash(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 6h18" />
    <path d="M19 6v14c0 1-1 2-2 2H7c-1 0-2-1-2-2V6" />
    <path d="M8 6V4c0-1 1-2 2-2h4c1 0 2 1 2 2v2" />
    </svg>
    """
  end

  @doc "tree-deciduous.svg"
  def tree_deciduous(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 19a4 4 0 0 1-2.24-7.32A3.5 3.5 0 0 1 9 6.03V6a3 3 0 1 1 6 0v.04a3.5 3.5 0 0 1 3.24 5.65A4 4 0 0 1 16 19Z" />
    <path d="M12 19v3" />
    </svg>
    """
  end

  @doc "tree-pine.svg"
  def tree_pine(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m17 14 3 3.3a1 1 0 0 1-.7 1.7H4.7a1 1 0 0 1-.7-1.7L7 14h-.3a1 1 0 0 1-.7-1.7L9 9h-.2A1 1 0 0 1 8 7.3L12 3l4 4.3a1 1 0 0 1-.8 1.7H15l3 3.3a1 1 0 0 1-.7 1.7H17Z" />
    <path d="M12 22v-3" />
    </svg>
    """
  end

  @doc "trees.svg"
  def trees(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10 10v.2A3 3 0 0 1 8.9 16v0H5v0h0a3 3 0 0 1-1-5.8V10a3 3 0 0 1 6 0Z" />
    <path d="M7 16v6" />
    <path d="M13 19v3" />
    <path d="M12 19h8.3a1 1 0 0 0 .7-1.7L18 14h.3a1 1 0 0 0 .7-1.7L16 9h.2a1 1 0 0 0 .8-1.7L13 3l-1.4 1.5" />
    </svg>
    """
  end

  @doc "trello.svg"
  def trello(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" ry="2" />
    <rect width="3" height="9" x="7" y="7" />
    <rect width="3" height="5" x="14" y="7" />
    </svg>
    """
  end

  @doc "trending-down.svg"
  def trending_down(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="22 17 13.5 8.5 8.5 13.5 2 7" />
    <polyline points="16 17 22 17 22 11" />
    </svg>
    """
  end

  @doc "trending-up.svg"
  def trending_up(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="22 7 13.5 15.5 8.5 10.5 2 17" />
    <polyline points="16 7 22 7 22 13" />
    </svg>
    """
  end

  @doc "triangle-right.svg"
  def triangle_right(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 18a2 2 0 0 1-2 2H3c-1.1 0-1.3-.6-.4-1.3L20.4 4.3c.9-.7 1.6-.4 1.6.7Z" />
    </svg>
    """
  end

  @doc "triangle.svg"
  def triangle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M13.73 4a2 2 0 0 0-3.46 0l-8 14A2 2 0 0 0 4 21h16a2 2 0 0 0 1.73-3Z" />
    </svg>
    """
  end

  @doc "trophy.svg"
  def trophy(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 9H4.5a2.5 2.5 0 0 1 0-5H6" />
    <path d="M18 9h1.5a2.5 2.5 0 0 0 0-5H18" />
    <path d="M4 22h16" />
    <path d="M10 14.66V17c0 .55-.47.98-.97 1.21C7.85 18.75 7 20.24 7 22" />
    <path d="M14 14.66V17c0 .55.47.98.97 1.21C16.15 18.75 17 20.24 17 22" />
    <path d="M18 2H6v7a6 6 0 0 0 12 0V2Z" />
    </svg>
    """
  end

  @doc "truck.svg"
  def truck(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14 18V6a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v11a1 1 0 0 0 1 1h2" />
    <path d="M15 18H9" />
    <path d="M19 18h2a1 1 0 0 0 1-1v-3.65a1 1 0 0 0-.22-.624l-3.48-4.35A1 1 0 0 0 17.52 8H14" />
    <circle cx="17" cy="18" r="2" />
    <circle cx="7" cy="18" r="2" />
    </svg>
    """
  end

  @doc "turtle.svg"
  def turtle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m12 10 2 4v3a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1v-3a8 8 0 1 0-16 0v3a1 1 0 0 0 1 1h2a1 1 0 0 0 1-1v-3l2-4h4Z" />
    <path d="M4.82 7.9 8 10" />
    <path d="M15.18 7.9 12 10" />
    <path d="M16.93 10H20a2 2 0 0 1 0 4H2" />
    </svg>
    """
  end

  @doc "tv-2.svg"
  def tv_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M7 21h10" />
    <rect width="20" height="14" x="2" y="3" rx="2" />
    </svg>
    """
  end

  @doc "tv.svg"
  def tv(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="15" x="2" y="7" rx="2" ry="2" />
    <polyline points="17 2 12 7 7 2" />
    </svg>
    """
  end

  @doc "twitch.svg"
  def twitch(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 2H3v16h5v4l4-4h5l4-4V2zm-10 9V7m5 4V7" />
    </svg>
    """
  end

  @doc "twitter.svg"
  def twitter(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 4s-.7 2.1-2 3.4c1.6 10-9.4 17.3-18 11.6 2.2.1 4.4-.6 6-2C3 15.5.5 9.6 3 5c2.2 2.6 5.6 4.1 9 4-.9-4.2 4-6.6 7-3.8 1.1 0 3-1.2 3-1.2z" />
    </svg>
    """
  end

  @doc "type.svg"
  def type(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="4 7 4 4 20 4 20 7" />
    <line x1="9" x2="15" y1="20" y2="20" />
    <line x1="12" x2="12" y1="4" y2="20" />
    </svg>
    """
  end

  @doc "umbrella-off.svg"
  def umbrella_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 2v1" />
    <path d="M15.5 21a1.85 1.85 0 0 1-3.5-1v-8H2a10 10 0 0 1 3.428-6.575" />
    <path d="M17.5 12H22A10 10 0 0 0 9.004 3.455" />
    <path d="m2 2 20 20" />
    </svg>
    """
  end

  @doc "umbrella.svg"
  def umbrella(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 12a10.06 10.06 1 0 0-20 0Z" />
    <path d="M12 12v8a2 2 0 0 0 4 0" />
    <path d="M12 2v1" />
    </svg>
    """
  end

  @doc "underline.svg"
  def underline(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M6 4v6a6 6 0 0 0 12 0V4" />
    <line x1="4" x2="20" y1="20" y2="20" />
    </svg>
    """
  end

  @doc "undo-2.svg"
  def undo_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M9 14 4 9l5-5" />
    <path d="M4 9h10.5a5.5 5.5 0 0 1 5.5 5.5v0a5.5 5.5 0 0 1-5.5 5.5H11" />
    </svg>
    """
  end

  @doc "undo-dot.svg"
  def undo_dot(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="17" r="1" />
    <path d="M3 7v6h6" />
    <path d="M21 17a9 9 0 0 0-9-9 9 9 0 0 0-6 2.3L3 13" />
    </svg>
    """
  end

  @doc "undo.svg"
  def undo(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 7v6h6" />
    <path d="M21 17a9 9 0 0 0-9-9 9 9 0 0 0-6 2.3L3 13" />
    </svg>
    """
  end

  @doc "unfold-horizontal.svg"
  def unfold_horizontal(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 12h6" />
    <path d="M8 12H2" />
    <path d="M12 2v2" />
    <path d="M12 8v2" />
    <path d="M12 14v2" />
    <path d="M12 20v2" />
    <path d="m19 15 3-3-3-3" />
    <path d="m5 9-3 3 3 3" />
    </svg>
    """
  end

  @doc "unfold-vertical.svg"
  def unfold_vertical(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 22v-6" />
    <path d="M12 8V2" />
    <path d="M4 12H2" />
    <path d="M10 12H8" />
    <path d="M16 12h-2" />
    <path d="M22 12h-2" />
    <path d="m15 19-3 3-3-3" />
    <path d="m15 5-3-3-3 3" />
    </svg>
    """
  end

  @doc "ungroup.svg"
  def ungroup(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="6" x="5" y="4" rx="1" />
    <rect width="8" height="6" x="11" y="14" rx="1" />
    </svg>
    """
  end

  @doc "unlink-2.svg"
  def unlink_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 7h2a5 5 0 0 1 0 10h-2m-6 0H7A5 5 0 0 1 7 7h2" />
    </svg>
    """
  end

  @doc "unlink.svg"
  def unlink(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m18.84 12.25 1.72-1.71h-.02a5.004 5.004 0 0 0-.12-7.07 5.006 5.006 0 0 0-6.95 0l-1.72 1.71" />
    <path d="m5.17 11.75-1.71 1.71a5.004 5.004 0 0 0 .12 7.07 5.006 5.006 0 0 0 6.95 0l1.71-1.71" />
    <line x1="8" x2="8" y1="2" y2="5" />
    <line x1="2" x2="5" y1="8" y2="8" />
    <line x1="16" x2="16" y1="19" y2="22" />
    <line x1="19" x2="22" y1="16" y2="16" />
    </svg>
    """
  end

  @doc "unlock-keyhole.svg"
  def unlock_keyhole(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="16" r="1" />
    <rect x="3" y="10" width="18" height="12" rx="2" />
    <path d="M7 10V7a5 5 0 0 1 9.33-2.5" />
    </svg>
    """
  end

  @doc "unlock.svg"
  def unlock(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="11" x="3" y="11" rx="2" ry="2" />
    <path d="M7 11V7a5 5 0 0 1 9.9-1" />
    </svg>
    """
  end

  @doc "unplug.svg"
  def unplug(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m19 5 3-3" />
    <path d="m2 22 3-3" />
    <path d="M6.3 20.3a2.4 2.4 0 0 0 3.4 0L12 18l-6-6-2.3 2.3a2.4 2.4 0 0 0 0 3.4Z" />
    <path d="M7.5 13.5 10 11" />
    <path d="M10.5 16.5 13 14" />
    <path d="m12 6 6 6 2.3-2.3a2.4 2.4 0 0 0 0-3.4l-2.6-2.6a2.4 2.4 0 0 0-3.4 0Z" />
    </svg>
    """
  end

  @doc "upload-cloud.svg"
  def upload_cloud(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M4 14.899A7 7 0 1 1 15.71 8h1.79a4.5 4.5 0 0 1 2.5 8.242" />
    <path d="M12 12v9" />
    <path d="m16 16-4-4-4 4" />
    </svg>
    """
  end

  @doc "upload.svg"
  def upload(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4" />
    <polyline points="17 8 12 3 7 8" />
    <line x1="12" x2="12" y1="3" y2="15" />
    </svg>
    """
  end

  @doc "usb.svg"
  def usb(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="10" cy="7" r="1" />
    <circle cx="4" cy="20" r="1" />
    <path d="M4.7 19.3 19 5" />
    <path d="m21 3-3 1 2 2Z" />
    <path d="M9.26 7.68 5 12l2 5" />
    <path d="m10 14 5 2 3.5-3.5" />
    <path d="m18 12 1-1 1 1-1 1Z" />
    </svg>
    """
  end

  @doc "user-check.svg"
  def user_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2" />
    <circle cx="9" cy="7" r="4" />
    <polyline points="16 11 18 13 22 9" />
    </svg>
    """
  end

  @doc "user-cog.svg"
  def user_cog(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="18" cy="15" r="3" />
    <circle cx="9" cy="7" r="4" />
    <path d="M10 15H6a4 4 0 0 0-4 4v2" />
    <path d="m21.7 16.4-.9-.3" />
    <path d="m15.2 13.9-.9-.3" />
    <path d="m16.6 18.7.3-.9" />
    <path d="m19.1 12.2.3-.9" />
    <path d="m19.6 18.7-.4-1" />
    <path d="m16.8 12.3-.4-1" />
    <path d="m14.3 16.6 1-.4" />
    <path d="m20.7 13.8 1-.4" />
    </svg>
    """
  end

  @doc "user-minus.svg"
  def user_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2" />
    <circle cx="9" cy="7" r="4" />
    <line x1="22" x2="16" y1="11" y2="11" />
    </svg>
    """
  end

  @doc "user-plus.svg"
  def user_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2" />
    <circle cx="9" cy="7" r="4" />
    <line x1="19" x2="19" y1="8" y2="14" />
    <line x1="22" x2="16" y1="11" y2="11" />
    </svg>
    """
  end

  @doc "user-round-check.svg"
  def user_round_check(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 21a8 8 0 0 1 13.292-6" />
    <circle cx="10" cy="8" r="5" />
    <path d="m16 19 2 2 4-4" />
    </svg>
    """
  end

  @doc "user-round-cog.svg"
  def user_round_cog(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 21a8 8 0 0 1 10.434-7.62" />
    <circle cx="10" cy="8" r="5" />
    <circle cx="18" cy="18" r="3" />
    <path d="m19.5 14.3-.4.9" />
    <path d="m16.9 20.8-.4.9" />
    <path d="m21.7 19.5-.9-.4" />
    <path d="m15.2 16.9-.9-.4" />
    <path d="m21.7 16.5-.9.4" />
    <path d="m15.2 19.1-.9.4" />
    <path d="m19.5 21.7-.4-.9" />
    <path d="m16.9 15.2-.4-.9" />
    </svg>
    """
  end

  @doc "user-round-minus.svg"
  def user_round_minus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 21a8 8 0 0 1 13.292-6" />
    <circle cx="10" cy="8" r="5" />
    <path d="M22 19h-6" />
    </svg>
    """
  end

  @doc "user-round-plus.svg"
  def user_round_plus(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 21a8 8 0 0 1 13.292-6" />
    <circle cx="10" cy="8" r="5" />
    <path d="M19 16v6" />
    <path d="M22 19h-6" />
    </svg>
    """
  end

  @doc "user-round-search.svg"
  def user_round_search(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="10" cy="8" r="5" />
    <path d="M2 21a8 8 0 0 1 10.434-7.62" />
    <circle cx="18" cy="18" r="3" />
    <path d="m22 22-1.9-1.9" />
    </svg>
    """
  end

  @doc "user-round-x.svg"
  def user_round_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 21a8 8 0 0 1 11.873-7" />
    <circle cx="10" cy="8" r="5" />
    <path d="m17 17 5 5" />
    <path d="m22 17-5 5" />
    </svg>
    """
  end

  @doc "user-round.svg"
  def user_round(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="8" r="5" />
    <path d="M20 21a8 8 0 0 0-16 0" />
    </svg>
    """
  end

  @doc "user-search.svg"
  def user_search(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="10" cy="7" r="4" />
    <path d="M10.3 15H7a4 4 0 0 0-4 4v2" />
    <circle cx="17" cy="17" r="3" />
    <path d="m21 21-1.9-1.9" />
    </svg>
    """
  end

  @doc "user-x.svg"
  def user_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2" />
    <circle cx="9" cy="7" r="4" />
    <line x1="17" x2="22" y1="8" y2="13" />
    <line x1="22" x2="17" y1="8" y2="13" />
    </svg>
    """
  end

  @doc "user.svg"
  def user(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M19 21v-2a4 4 0 0 0-4-4H9a4 4 0 0 0-4 4v2" />
    <circle cx="12" cy="7" r="4" />
    </svg>
    """
  end

  @doc "users-round.svg"
  def users_round(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 21a8 8 0 0 0-16 0" />
    <circle cx="10" cy="8" r="5" />
    <path d="M22 20c0-3.37-2-6.5-4-8a5 5 0 0 0-.45-8.3" />
    </svg>
    """
  end

  @doc "users.svg"
  def users(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2" />
    <circle cx="9" cy="7" r="4" />
    <path d="M22 21v-2a4 4 0 0 0-3-3.87" />
    <path d="M16 3.13a4 4 0 0 1 0 7.75" />
    </svg>
    """
  end

  @doc "utensils-crossed.svg"
  def utensils_crossed(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m16 2-2.3 2.3a3 3 0 0 0 0 4.2l1.8 1.8a3 3 0 0 0 4.2 0L22 8" />
    <path d="M15 15 3.3 3.3a4.2 4.2 0 0 0 0 6l7.3 7.3c.7.7 2 .7 2.8 0L15 15Zm0 0 7 7" />
    <path d="m2.1 21.8 6.4-6.3" />
    <path d="m19 5-7 7" />
    </svg>
    """
  end

  @doc "utensils.svg"
  def utensils(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 2v7c0 1.1.9 2 2 2h4a2 2 0 0 0 2-2V2" />
    <path d="M7 2v20" />
    <path d="M21 15V2v0a5 5 0 0 0-5 5v6c0 1.1.9 2 2 2h3Zm0 0v7" />
    </svg>
    """
  end

  @doc "utility-pole.svg"
  def utility_pole(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 2v20" />
    <path d="M2 5h20" />
    <path d="M3 3v2" />
    <path d="M7 3v2" />
    <path d="M17 3v2" />
    <path d="M21 3v2" />
    <path d="m19 5-7 7-7-7" />
    </svg>
    """
  end

  @doc "variable.svg"
  def variable(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 21s-4-3-4-9 4-9 4-9" />
    <path d="M16 3s4 3 4 9-4 9-4 9" />
    <line x1="15" x2="9" y1="9" y2="15" />
    <line x1="9" x2="15" y1="9" y2="15" />
    </svg>
    """
  end

  @doc "vault.svg"
  def vault(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <circle cx="7.5" cy="7.5" r=".5" fill="currentColor" />
    <path d="m7.9 7.9 2.7 2.7" />
    <circle cx="16.5" cy="7.5" r=".5" fill="currentColor" />
    <path d="m13.4 10.6 2.7-2.7" />
    <circle cx="7.5" cy="16.5" r=".5" fill="currentColor" />
    <path d="m7.9 16.1 2.7-2.7" />
    <circle cx="16.5" cy="16.5" r=".5" fill="currentColor" />
    <path d="m13.4 13.4 2.7 2.7" />
    <circle cx="12" cy="12" r="2" />
    </svg>
    """
  end

  @doc "vegan.svg"
  def vegan(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 2a26.6 26.6 0 0 1 10 20c.9-6.82 1.5-9.5 4-14" />
    <path d="M16 8c4 0 6-2 6-6-4 0-6 2-6 6" />
    <path d="M17.41 3.6a10 10 0 1 0 3 3" />
    </svg>
    """
  end

  @doc "venetian-mask.svg"
  def venetian_mask(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 12a5 5 0 0 0 5 5 8 8 0 0 1 5 2 8 8 0 0 1 5-2 5 5 0 0 0 5-5V7h-5a8 8 0 0 0-5 2 8 8 0 0 0-5-2H2Z" />
    <path d="M6 11c1.5 0 3 .5 3 2-2 0-3 0-3-2Z" />
    <path d="M18 11c-1.5 0-3 .5-3 2 2 0 3 0 3-2Z" />
    </svg>
    """
  end

  @doc "vibrate-off.svg"
  def vibrate_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m2 8 2 2-2 2 2 2-2 2" />
    <path d="m22 8-2 2 2 2-2 2 2 2" />
    <path d="M8 8v10c0 .55.45 1 1 1h6c.55 0 1-.45 1-1v-2" />
    <path d="M16 10.34V6c0-.55-.45-1-1-1h-4.34" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "vibrate.svg"
  def vibrate(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m2 8 2 2-2 2 2 2-2 2" />
    <path d="m22 8-2 2 2 2-2 2 2 2" />
    <rect width="8" height="14" x="8" y="5" rx="1" />
    </svg>
    """
  end

  @doc "video-off.svg"
  def video_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M10.66 6H14a2 2 0 0 1 2 2v2.34l1 1L22 8v8" />
    <path d="M16 16a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h2l10 10Z" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "video.svg"
  def video(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m22 8-6 4 6 4V8Z" />
    <rect width="14" height="12" x="2" y="6" rx="2" ry="2" />
    </svg>
    """
  end

  @doc "videotape.svg"
  def videotape(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="20" height="16" x="2" y="4" rx="2" />
    <path d="M2 8h20" />
    <circle cx="8" cy="14" r="2" />
    <path d="M8 12h8" />
    <circle cx="16" cy="14" r="2" />
    </svg>
    """
  end

  @doc "view.svg"
  def view(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M5 12s2.545-5 7-5c4.454 0 7 5 7 5s-2.546 5-7 5c-4.455 0-7-5-7-5z" />
    <path d="M12 13a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
    <path d="M21 17v2a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-2" />
    <path d="M21 7V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v2" />
    </svg>
    """
  end

  @doc "voicemail.svg"
  def voicemail(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="6" cy="12" r="4" />
    <circle cx="18" cy="12" r="4" />
    <line x1="6" x2="18" y1="16" y2="16" />
    </svg>
    """
  end

  @doc "volume-1.svg"
  def volume_1(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="11 5 6 9 2 9 2 15 6 15 11 19 11 5" />
    <path d="M15.54 8.46a5 5 0 0 1 0 7.07" />
    </svg>
    """
  end

  @doc "volume-2.svg"
  def volume_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="11 5 6 9 2 9 2 15 6 15 11 19 11 5" />
    <path d="M15.54 8.46a5 5 0 0 1 0 7.07" />
    <path d="M19.07 4.93a10 10 0 0 1 0 14.14" />
    </svg>
    """
  end

  @doc "volume-x.svg"
  def volume_x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="11 5 6 9 2 9 2 15 6 15 11 19 11 5" />
    <line x1="22" x2="16" y1="9" y2="15" />
    <line x1="16" x2="22" y1="9" y2="15" />
    </svg>
    """
  end

  @doc "volume.svg"
  def volume(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="11 5 6 9 2 9 2 15 6 15 11 19 11 5" />
    </svg>
    """
  end

  @doc "vote.svg"
  def vote(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m9 12 2 2 4-4" />
    <path d="M5 7c0-1.1.9-2 2-2h10a2 2 0 0 1 2 2v12H5V7Z" />
    <path d="M22 19H2" />
    </svg>
    """
  end

  @doc "wallet-2.svg"
  def wallet_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 14h.01" />
    <path d="M7 7h12a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h14" />
    </svg>
    """
  end

  @doc "wallet-cards.svg"
  def wallet_cards(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" />
    <path d="M3 9a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2" />
    <path d="M3 11h3c.8 0 1.6.3 2.1.9l1.1.9c1.6 1.6 4.1 1.6 5.7 0l1.1-.9c.5-.5 1.3-.9 2.1-.9H21" />
    </svg>
    """
  end

  @doc "wallet.svg"
  def wallet(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M21 12V7H5a2 2 0 0 1 0-4h14v4" />
    <path d="M3 5v14a2 2 0 0 0 2 2h16v-5" />
    <path d="M18 12a2 2 0 0 0 0 4h4v-4Z" />
    </svg>
    """
  end

  @doc "wallpaper.svg"
  def wallpaper(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="8" cy="9" r="2" />
    <path d="m9 17 6.1-6.1a2 2 0 0 1 2.81.01L22 15V5a2 2 0 0 0-2-2H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2" />
    <path d="M8 21h8" />
    <path d="M12 17v4" />
    </svg>
    """
  end

  @doc "wand-2.svg"
  def wand_2(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m21.64 3.64-1.28-1.28a1.21 1.21 0 0 0-1.72 0L2.36 18.64a1.21 1.21 0 0 0 0 1.72l1.28 1.28a1.2 1.2 0 0 0 1.72 0L21.64 5.36a1.2 1.2 0 0 0 0-1.72Z" />
    <path d="m14 7 3 3" />
    <path d="M5 6v4" />
    <path d="M19 14v4" />
    <path d="M10 2v2" />
    <path d="M7 8H3" />
    <path d="M21 16h-4" />
    <path d="M11 3H9" />
    </svg>
    """
  end

  @doc "wand.svg"
  def wand(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M15 4V2" />
    <path d="M15 16v-2" />
    <path d="M8 9h2" />
    <path d="M20 9h2" />
    <path d="M17.8 11.8 19 13" />
    <path d="M15 9h0" />
    <path d="M17.8 6.2 19 5" />
    <path d="m3 21 9-9" />
    <path d="M12.2 6.2 11 5" />
    </svg>
    """
  end

  @doc "warehouse.svg"
  def warehouse(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M22 8.35V20a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V8.35A2 2 0 0 1 3.26 6.5l8-3.2a2 2 0 0 1 1.48 0l8 3.2A2 2 0 0 1 22 8.35Z" />
    <path d="M6 18h12" />
    <path d="M6 14h12" />
    <rect width="12" height="12" x="6" y="10" />
    </svg>
    """
  end

  @doc "washing-machine.svg"
  def washing_machine(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M3 6h3" />
    <path d="M17 6h.01" />
    <rect width="18" height="20" x="3" y="2" rx="2" />
    <circle cx="12" cy="13" r="5" />
    <path d="M12 18a2.5 2.5 0 0 0 0-5 2.5 2.5 0 0 1 0-5" />
    </svg>
    """
  end

  @doc "watch.svg"
  def watch(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="6" />
    <polyline points="12 10 12 12 13 13" />
    <path d="m16.13 7.66-.81-4.05a2 2 0 0 0-2-1.61h-2.68a2 2 0 0 0-2 1.61l-.78 4.05" />
    <path d="m7.88 16.36.8 4a2 2 0 0 0 2 1.61h2.72a2 2 0 0 0 2-1.61l.81-4.05" />
    </svg>
    """
  end

  @doc "waves.svg"
  def waves(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 6c.6.5 1.2 1 2.5 1C7 7 7 5 9.5 5c2.6 0 2.4 2 5 2 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1" />
    <path d="M2 12c.6.5 1.2 1 2.5 1 2.5 0 2.5-2 5-2 2.6 0 2.4 2 5 2 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1" />
    <path d="M2 18c.6.5 1.2 1 2.5 1 2.5 0 2.5-2 5-2 2.6 0 2.4 2 5 2 2.5 0 2.5-2 5-2 1.3 0 1.9.5 2.5 1" />
    </svg>
    """
  end

  @doc "waypoints.svg"
  def waypoints(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="4.5" r="2.5" />
    <path d="m10.2 6.3-3.9 3.9" />
    <circle cx="4.5" cy="12" r="2.5" />
    <path d="M7 12h10" />
    <circle cx="19.5" cy="12" r="2.5" />
    <path d="m13.8 17.7 3.9-3.9" />
    <circle cx="12" cy="19.5" r="2.5" />
    </svg>
    """
  end

  @doc "webcam.svg"
  def webcam(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="10" r="8" />
    <circle cx="12" cy="10" r="3" />
    <path d="M7 22h10" />
    <path d="M12 22v-4" />
    </svg>
    """
  end

  @doc "webhook-off.svg"
  def webhook_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17 17h-5c-1.09-.02-1.94.92-2.5 1.9A3 3 0 1 1 2.57 15" />
    <path d="M9 3.4a4 4 0 0 1 6.52.66" />
    <path d="m6 17 3.1-5.8a2.5 2.5 0 0 0 .057-2.05" />
    <path d="M20.3 20.3a4 4 0 0 1-2.3.7" />
    <path d="M18.6 13a4 4 0 0 1 3.357 3.414" />
    <path d="m12 6 .6 1" />
    <path d="m2 2 20 20" />
    </svg>
    """
  end

  @doc "webhook.svg"
  def webhook(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 16.98h-5.99c-1.1 0-1.95.94-2.48 1.9A4 4 0 0 1 2 17c.01-.7.2-1.4.57-2" />
    <path d="m6 17 3.13-5.78c.53-.97.1-2.18-.5-3.1a4 4 0 1 1 6.89-4.06" />
    <path d="m12 6 3.13 5.73C15.66 12.7 16.9 13 18 13a4 4 0 0 1 0 8" />
    </svg>
    """
  end

  @doc "weight.svg"
  def weight(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="5" r="3" />
    <path d="M6.5 8a2 2 0 0 0-1.905 1.46L2.1 18.5A2 2 0 0 0 4 21h16a2 2 0 0 0 1.925-2.54L19.4 9.5A2 2 0 0 0 17.48 8Z" />
    </svg>
    """
  end

  @doc "wheat-off.svg"
  def wheat_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="m2 22 10-10" />
    <path d="m16 8-1.17 1.17" />
    <path d="M3.47 12.53 5 11l1.53 1.53a3.5 3.5 0 0 1 0 4.94L5 19l-1.53-1.53a3.5 3.5 0 0 1 0-4.94Z" />
    <path d="m8 8-.53.53a3.5 3.5 0 0 0 0 4.94L9 15l1.53-1.53c.55-.55.88-1.25.98-1.97" />
    <path d="M10.91 5.26c.15-.26.34-.51.56-.73L13 3l1.53 1.53a3.5 3.5 0 0 1 .28 4.62" />
    <path d="M20 2h2v2a4 4 0 0 1-4 4h-2V6a4 4 0 0 1 4-4Z" />
    <path d="M11.47 17.47 13 19l-1.53 1.53a3.5 3.5 0 0 1-4.94 0L5 19l1.53-1.53a3.5 3.5 0 0 1 4.94 0Z" />
    <path d="m16 16-.53.53a3.5 3.5 0 0 1-4.94 0L9 15l1.53-1.53a3.49 3.49 0 0 1 1.97-.98" />
    <path d="M18.74 13.09c.26-.15.51-.34.73-.56L21 11l-1.53-1.53a3.5 3.5 0 0 0-4.62-.28" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "wheat.svg"
  def wheat(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2 22 16 8" />
    <path d="M3.47 12.53 5 11l1.53 1.53a3.5 3.5 0 0 1 0 4.94L5 19l-1.53-1.53a3.5 3.5 0 0 1 0-4.94Z" />
    <path d="M7.47 8.53 9 7l1.53 1.53a3.5 3.5 0 0 1 0 4.94L9 15l-1.53-1.53a3.5 3.5 0 0 1 0-4.94Z" />
    <path d="M11.47 4.53 13 3l1.53 1.53a3.5 3.5 0 0 1 0 4.94L13 11l-1.53-1.53a3.5 3.5 0 0 1 0-4.94Z" />
    <path d="M20 2h2v2a4 4 0 0 1-4 4h-2V6a4 4 0 0 1 4-4Z" />
    <path d="M11.47 17.47 13 19l-1.53 1.53a3.5 3.5 0 0 1-4.94 0L5 19l1.53-1.53a3.5 3.5 0 0 1 4.94 0Z" />
    <path d="M15.47 13.47 17 15l-1.53 1.53a3.5 3.5 0 0 1-4.94 0L9 15l1.53-1.53a3.5 3.5 0 0 1 4.94 0Z" />
    <path d="M19.47 9.47 21 11l-1.53 1.53a3.5 3.5 0 0 1-4.94 0L13 11l1.53-1.53a3.5 3.5 0 0 1 4.94 0Z" />
    </svg>
    """
  end

  @doc "whole-word.svg"
  def whole_word(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="7" cy="12" r="3" />
    <path d="M10 9v6" />
    <circle cx="17" cy="12" r="3" />
    <path d="M14 7v8" />
    <path d="M22 17v1c0 .5-.5 1-1 1H3c-.5 0-1-.5-1-1v-1" />
    </svg>
    """
  end

  @doc "wifi-off.svg"
  def wifi_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 20h.01" />
    <path d="M8.5 16.429a5 5 0 0 1 7 0" />
    <path d="M5 12.859a10 10 0 0 1 5.17-2.69" />
    <path d="M19 12.859a10 10 0 0 0-2.007-1.523" />
    <path d="M2 8.82a15 15 0 0 1 4.177-2.643" />
    <path d="M22 8.82a15 15 0 0 0-11.288-3.764" />
    <path d="m2 2 20 20" />
    </svg>
    """
  end

  @doc "wifi.svg"
  def wifi(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M12 20h.01" />
    <path d="M2 8.82a15 15 0 0 1 20 0" />
    <path d="M5 12.859a10 10 0 0 1 14 0" />
    <path d="M8.5 16.429a5 5 0 0 1 7 0" />
    </svg>
    """
  end

  @doc "wind.svg"
  def wind(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M17.7 7.7a2.5 2.5 0 1 1 1.8 4.3H2" />
    <path d="M9.6 4.6A2 2 0 1 1 11 8H2" />
    <path d="M12.6 19.4A2 2 0 1 0 14 16H2" />
    </svg>
    """
  end

  @doc "wine-off.svg"
  def wine_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 22h8" />
    <path d="M7 10h3m7 0h-1.343" />
    <path d="M12 15v7" />
    <path d="M7.307 7.307A12.33 12.33 0 0 0 7 10a5 5 0 0 0 7.391 4.391M8.638 2.981C8.75 2.668 8.872 2.34 9 2h6c1.5 4 2 6 2 8 0 .407-.05.809-.145 1.198" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "wine.svg"
  def wine(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M8 22h8" />
    <path d="M7 10h10" />
    <path d="M12 15v7" />
    <path d="M12 15a5 5 0 0 0 5-5c0-2-.5-4-2-8H9c-1.5 4-2 6-2 8a5 5 0 0 0 5 5Z" />
    </svg>
    """
  end

  @doc "workflow.svg"
  def workflow(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="8" height="8" x="3" y="3" rx="2" />
    <path d="M7 11v4a2 2 0 0 0 2 2h4" />
    <rect width="8" height="8" x="13" y="13" rx="2" />
    </svg>
    """
  end

  @doc "wrap-text.svg"
  def wrap_text(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <line x1="3" x2="21" y1="6" y2="6" />
    <path d="M3 12h15a3 3 0 1 1 0 6h-4" />
    <polyline points="16 16 14 18 16 20" />
    <line x1="3" x2="10" y1="18" y2="18" />
    </svg>
    """
  end

  @doc "wrench.svg"
  def wrench(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.77-3.77a6 6 0 0 1-7.94 7.94l-6.91 6.91a2.12 2.12 0 0 1-3-3l6.91-6.91a6 6 0 0 1 7.94-7.94l-3.76 3.76z" />
    </svg>
    """
  end

  @doc "x-circle.svg"
  def x_circle(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="12" cy="12" r="10" />
    <path d="m15 9-6 6" />
    <path d="m9 9 6 6" />
    </svg>
    """
  end

  @doc "x-octagon.svg"
  def x_octagon(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2" />
    <path d="m15 9-6 6" />
    <path d="m9 9 6 6" />
    </svg>
    """
  end

  @doc "x-square.svg"
  def x_square(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <rect width="18" height="18" x="3" y="3" rx="2" ry="2" />
    <path d="m15 9-6 6" />
    <path d="m9 9 6 6" />
    </svg>
    """
  end

  @doc "x.svg"
  def x(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M18 6 6 18" />
    <path d="m6 6 12 12" />
    </svg>
    """
  end

  @doc "youtube.svg"
  def youtube(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <path d="M2.5 17a24.12 24.12 0 0 1 0-10 2 2 0 0 1 1.4-1.4 49.56 49.56 0 0 1 16.2 0A2 2 0 0 1 21.5 7a24.12 24.12 0 0 1 0 10 2 2 0 0 1-1.4 1.4 49.55 49.55 0 0 1-16.2 0A2 2 0 0 1 2.5 17" />
    <path d="m10 15 5-3-5-3z" />
    </svg>
    """
  end

  @doc "zap-off.svg"
  def zap_off(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polyline points="12.41 6.75 13 2 10.57 4.92" />
    <polyline points="18.57 12.91 21 10 15.66 10" />
    <polyline points="8 8 3 14 12 14 11 22 16 16" />
    <line x1="2" x2="22" y1="2" y2="22" />
    </svg>
    """
  end

  @doc "zap.svg"
  def zap(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2" />
    </svg>
    """
  end

  @doc "zoom-in.svg"
  def zoom_in(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="11" cy="11" r="8" />
    <line x1="21" x2="16.65" y1="21" y2="16.65" />
    <line x1="11" x2="11" y1="8" y2="14" />
    <line x1="8" x2="14" y1="11" y2="11" />
    </svg>
    """
  end

  @doc "zoom-out.svg"
  def zoom_out(assigns) do
    attrs = assigns_to_attributes(assigns)
    assigns = assign(assigns, :attrs, attrs)

    ~H"""
    <svg {@attrs}
    xmlns="http://www.w3.org/2000/svg"
    width="24"
    height="24"
    viewBox="0 0 24 24"
    fill="none"
    stroke="currentColor"
    stroke-width="2"
    stroke-linecap="round"
    stroke-linejoin="round"
    >
    <circle cx="11" cy="11" r="8" />
    <line x1="21" x2="16.65" y1="21" y2="16.65" />
    <line x1="8" x2="14" y1="11" y2="11" />
    </svg>
    """
  end
end
