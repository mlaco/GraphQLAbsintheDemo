defmodule JuicerateWeb.Schema do
  use Absinthe.Schema
  alias Juicerate.Juice
  alias JuicerateWeb.JuiceResolver

  object :juice do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :rating, non_null(:integer)
  end

  query do
    field :all_juices, non_null(list_of(non_null(:juice))) do
      resolve &JuiceResolver.all_juices/3
    end
  end
end