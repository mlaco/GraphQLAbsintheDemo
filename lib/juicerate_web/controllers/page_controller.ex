defmodule JuicerateWeb.PageController do
  use JuicerateWeb, :controller

  def index(conn, _) do
    render conn, "index.html"
  end
end