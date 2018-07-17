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

    get "/", HtmlTagsController, :index
    get "/tags", HtmlTagsController, :tags
    get "/tags/head", HtmlTagsController, :tagshead
    get "/tags/body", HtmlTagsController, :tagsbody
    get "/tags/tableandlist", HtmlTagsController, :tableandlist
    get "/tags/media", HtmlTagsController, :media
    get "/tags/formandinput", HtmlTagsController, :formandinput
    get "/tags/sections", HtmlTagsController, :sections
    get "/tags/typography", HtmlTagsController, :typography
    get "/tags/iconsandbuttons", HtmlTagsController, :iconsandbuttons
    get "/tags/textformatting", HtmlTagsController, :textformatting
    get "/tags/codeandscript", HtmlTagsController, :codeandscript

    get "/attributes", HtmlAttributesController, :index
    get "/attributes/general", HtmlAttributesController, :general
    get "/attributes/for_form_and_input", HtmlAttributesController, :for_form_and_input
    get "/attributes/for_media", HtmlAttributesController, :for_media
    get "/attributes/for_table_and_list", HtmlAttributesController, :for_table_and_list
    get "/attributes/styling_attributes", HtmlAttributesController, :styling_attributes
    get "/attributes/for_links", HtmlAttributesController, :for_links
    get "/attributes/data_and_javascript", HtmlAttributesController, :data_and_javascript
  end

  # Other scopes may use custom stacks.
  # scope "/api", Course01Web do
  #   pipe_through :api
  # end
end
