defmodule JuicerateWeb.Router do
  use JuicerateWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  forward "/api", Absinthe.Plug,
    schema: JuicerateWeb.Schema

  forward "/graphiql", Absinthe.Plug.GraphqQL,
    schema: JuicerateWeb.Schema
end
