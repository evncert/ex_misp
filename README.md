# ExMisp

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_misp` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_misp, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ex_misp](https://hexdocs.pm/ex_misp).


## Setting up the configuration
```elixir
config :ex_misp,
  url: "https://<MISP URL>",
  key: "<Automation Key>"
```
