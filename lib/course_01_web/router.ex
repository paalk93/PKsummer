defmodule Course01Web.Router do
  use Course01Web, :router

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

  scope "/", Course01Web do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/html", Course01Web do
    pipe_through :browser

    get "/", HtmlController, :index
    get "/tags", HtmlController, :tags
    get "/tags/head", HtmlController, :tagshead
    get "/tags/body", HtmlController, :tagsbody
    get "/tags/tableandlist", HtmlController, :tableandlist
    get "/tags/media", HtmlController, :media
  end

  # Other scopes may use custom stacks.
  # scope "/api", Course01Web do
  #   pipe_through :api
  # end
end
