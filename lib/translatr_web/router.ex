defmodule TranslatrWeb.Router do
  use TranslatrWeb, :router

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

  scope "/", TranslatrWeb do
    pipe_through :browser
    
    resources "/posts", PostController
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", TranslatrWeb do
  #   pipe_through :api
  # end
end
