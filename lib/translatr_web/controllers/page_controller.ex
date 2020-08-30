defmodule TranslatrWeb.PageController do
  use TranslatrWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
