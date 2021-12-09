# Phoenix LiveView Lucide Icons

A collection of Phoenix LiveView Components for all SVG [Lucide Icons](https://https://lucide.dev/). Lucide Icons is a community fork of Feather Icons.

Based on [Phoenix LiveView Heroicons](https://github.com/rocketinsights/heroicons_liveview).

## Installation

```elixir
def deps do
  [
    {:lucide_live_view, "~> 0.1.0"}
  ]
end
```

## Usage

Basic usage

```html
<Lucide.activity />
```

Any props passed in will be forwarded to the svg element

```html
<Lucide.activity
  id="activity-icon"
  class="inline-block h-5 w-5"
  stroke_width="1.5"
/>
```

## Regenerate icons

Clone down the latest [Lucide Icons](https://github.com/lucide-icons/lucide) github repo.

```bash
git clone https://github.com/lucide-icons/lucide.git priv/lucide
mix lucide.gen
```

## License

Source code is licensed under the [MIT License](LICENSE.md).
