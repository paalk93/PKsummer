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
    get "/tags/head", HtmlTagsController, :head_tags
    get "/tags/body", HtmlTagsController, :body_tags
    get "/tags/table_and_list", HtmlTagsController, :table_and_list
    get "/tags/media", HtmlTagsController, :media
    get "/tags/form_and_input", HtmlTagsController, :form_and_input
    get "/tags/sections", HtmlTagsController, :sections
    get "/tags/typography", HtmlTagsController, :typography
    get "/tags/icons_and_buttons", HtmlTagsController, :icons_and_buttons
    get "/tags/textformatting", HtmlTagsController, :textformatting
    get "/tags/code_and_script", HtmlTagsController, :code_and_script

    get "/attributes", HtmlAttributesController, :index
    get "/attributes/general", HtmlAttributesController, :general
    get "/attributes/for_form_and_input", HtmlAttributesController, :for_form_and_input
    get "/attributes/for_media", HtmlAttributesController, :for_media
    get "/attributes/for_table_and_list", HtmlAttributesController, :for_table_and_list
    get "/attributes/styling_attributes", HtmlAttributesController, :styling_attributes
    get "/attributes/for_links", HtmlAttributesController, :for_links
    get "/attributes/data_and_javascript", HtmlAttributesController, :data_and_javascript
  end

  scope "/git", Course01Web do
    pipe_through :browser

    get "/", GitExampleController, :index
    get "/git_commands", GitExampleController, :git_commands
    get "/git_routines", GitExampleController, :git_routines
  end

  # Other scopes may use custom stacks.
  # scope "/api", Course01Web do
  #   pipe_through :api
  # end
end
