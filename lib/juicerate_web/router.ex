defmodule JuicerateWeb.Router do
  use JuicerateWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", JuicerateWeb do
    pipe_through :browser

    get "/", PageController, :index 
  end

  forward "/graphql", Absinthe.Plug,
    schema: JuicerateWeb.Schema

  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: JuicerateWeb.Schema
end
