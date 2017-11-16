defmodule JuicerateWeb.JuiceResolver do
  alias Juicerate.Juice

  def all_juices(_root, _args, _info) do
    juices = Juice.list_juices()
    {:ok, juices}
  end
end