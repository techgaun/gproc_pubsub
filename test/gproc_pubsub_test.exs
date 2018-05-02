defmodule GprocPubsubTest do
  use ExUnit.Case
  doctest GprocPubsub

  test "greets the world" do
    assert GprocPubsub.hello() == :world
  end
end
