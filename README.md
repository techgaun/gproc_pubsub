# GprocPubsub

> A simple wrapper on top of gproc for your pubsub needs

[gproc](https://github.com/uwiger/gproc/) is a really nice process registry for Erlang
and it has a nice API that easily extends to support simple
[pubsub](https://github.com/uwiger/gproc/wiki/Publish-subscribe-with-gproc).
This package is a very simple wrapper on top of `gproc` to build
pubsub based systems.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `gproc_pubsub` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:gproc_pubsub, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/gproc_pubsub](https://hexdocs.pm/gproc_pubsub).

