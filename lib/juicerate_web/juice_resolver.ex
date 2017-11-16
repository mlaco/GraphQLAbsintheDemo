defmodule JuicerateWeb.JuiceResolver do
  alias Juicerate.Juice

  def all_juices(_root, _args, _info) do
    juices = Juice.list_juices()
    {:ok, juices}
  end

  def create_juice(_root, args, _info) do
    case Juice.create_juice(args) do
      {:ok, juice} ->
        {:ok, juice}
      _error ->
        {:error, "could not create juice"}
    end
  end
end