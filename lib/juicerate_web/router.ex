defmodule JuicerateWeb.Router do
  use JuicerateWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", JuicerateWeb do
    pipe_through :api
  end
end
