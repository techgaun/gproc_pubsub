defmodule GprocPubsub do
  @moduledoc """
  `GprocPubsub` is a simple wrapper on top of gproc
  that can be used for your pubsub needs.

  It has a simple interface
  """

  def subscribe(topic, scope \\ get_scope()) do
    :gproc.reg({:p, scope, topic})
  end

  def unsubscribe(topic, scope \\ get_scope()) do
    :gproc.unreg({:p, scope, topic})
  end

  def publish(topic, message, scope \\ get_scope()) do
    :gproc.send({:p, scope, topic}, message)
  end

  def subscribers(topic, scope \\ get_scope()) do
    :gproc.lookup_pids({:p, scope, topic})
  end

  defp get_scope do
    case Application.get_env(:gproc_pubsub, :process_scope) do
      :global -> if Code.ensure_loaded?(:gen_leader), do: :g, else: :l
      _ -> :l
    end
  end
end
