defmodule GprocPubsub do
  @moduledoc """
  `GprocPubsub` is a simple wrapper on top of gproc
  that can be used for your pubsub needs.

  It has a simple interface
  """

  use GenServer

  def start_link(name \\ __MODULE__) do
    GenServer.start_link(__MODULE__, [], name: name)
  end

  def subscribe(topic) do
  end

  def publish(topic, message) do
  end

  def init(opts) do
    {:ok, %{}}
  end

  def handle_info(_msg, state) do
    {:noreply, state}
  end
end
