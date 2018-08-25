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
    get "/sign-in", SessionController, :new
    post "/sign-in", SessionController, :create
    delete "/sign-out", SessionController, :delete
    get "/my_profile", AssociationExampleController, :my_profile
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

    get "/attributes", HtmlAttributesController, :attributes
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

  scope "/planning_and_problemsolving", Course01Web do
    pipe_through :browser

    get "/planning", PlanningProblemController, :planning
    get "/problem_solving", PlanningProblemController, :problem_solving
  end

  scope "/css", Course01Web do
    pipe_through :browser

    get "/", CssController, :index
    get "/selectors", CssController, :selectors
    get "/properties", CssController, :properties
    get "/variables", CssController, :variables
    get "/grid", CssController, :css_grid
    get "/flexbox", CssController, :css_flexbox

    get "/pseudo_classes", CssController, :pseudo_classes
    get "/pseudo_classes/links", CssController, :pseudo_links
    get "/pseudo_classes/child_and_type", CssController, :pseudo_child_and_type
    get "/pseudo_classes/forms_and_input", CssController, :pseudo_forms_and_input
    get "/pseudo_classes/misc", CssController, :pseudo_misc

    get "/animations", CssController, :css_animations
  end

  scope "/javascript", Course01Web do
    pipe_through :browser

    get "/", JavascriptController, :index
    get "/variables_and_data",JavascriptController, :variables_and_data
    get "/operators", JavascriptController, :operators
    get "/logic_flow", JavascriptController, :logic_flow
    get "/logic_flow/if_else", JavascriptController, :logic_flow_if_else
    get "/logic_flow/switch", JavascriptController, :logic_flow_switch
    get "/arrays", JavascriptController, :arrays
    get "/functions", JavascriptController, :functions
    get "/objects", JavascriptController, :objects
    get "/loops", JavascriptController, :loops
    get "/loops/for_and_in", JavascriptController, :loops_for_and_in
    get "/scope", JavascriptController, :scope
    get "/misc", JavascriptController, :misc
  end

  scope "/elixir", Course01Web do
    pipe_through :browser

    get "/", ElixirController, :index
    get "/iex", ElixirController, :iex_example
    get "/mix", ElixirController, :mix_example
    get "/data_types", ElixirController, :data_types
    get "/collections", ElixirController, :collections
    get "/operators", ElixirController, :operators
    get "/pattern_matching", ElixirController, :pattern_matching
    get "/modules_and_functions", ElixirController, :modules_and_functions
    get "/comprehensions", ElixirController, :comprehensions
    get "/enumerables", ElixirController, :enumerables
    get "/ex_unit_and_api", ElixirController, :ex_unit_and_api
    get "/recursion", ElixirController, :recursion
  end

  scope "/phoenix", Course01Web do
    pipe_through :browser

    get "/", PhoenixController, :index
    get "/data_flow", PhoenixController, :data_flow
    get "/major_parts", PhoenixController, :major_parts
    get "/major_parts/controller", PhoenixController, :example_controller
    get "/major_parts/view", PhoenixController, :example_view
    get "/major_parts/template", PhoenixController, :example_template
    get "/major_parts/router", PhoenixController, :example_router
    get "/plug_and_conn", PhoenixController, :example_plug_and_conn
    get "/ecto", PhoenixController, :example_ecto
    get "/ecto/adapters", PhoenixController, :example_adapters
    get "/ecto/migrations", PhoenixController, :example_migrations
    get "/ecto/schema", PhoenixController, :example_schema
    get "/ecto/mix_tasks", PhoenixController, :ecto_mix_tasks
    get "/ecto/repo", PhoenixController, :example_repo
    get "/ecto/query", PhoenixController, :example_query
    get "/ecto/changeset", PhoenixController, :example_changeset
    get "/ecto/multi", PhoenixController, :example_multi
    get "/ecto/associations", PhoenixController, :example_associations
    get "/ecto/embeded", PhoenixController, :example_embedded
  end

  scope "/display_data", Course01Web do
    pipe_through :browser

    resources "/associated_data", AssociationExampleController
    resources "/simple_data", SimpleDataExampleController
    resources "/example_products", ExampleProductsController
    get "/login_example", LoginExampleController, :index
  end

  scope "/micropatterns", Course01Web do
    pipe_through :browser

    get "/", MicropatternController, :index
  end
  # Other scopes may use custom stacks.
  # scope "/api", Course01Web do
  #   pipe_through :api
  # end
end
