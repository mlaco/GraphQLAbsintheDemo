defmodule JuicerateWeb.Router do
  use JuicerateWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  forward "/graphql", Absinthe.Plug,
    schema: JuicerateWeb.Schema

  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: JuicerateWeb.Schema
end
