defmodule Course01Web.CssController do
  use Course01Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def selectors(conn, _params) do
    render conn, "css_selectors.html"
  end

  def properties(conn, _params) do
    render conn, "css_properties.html"
  end

  def variables(conn, _params) do
    render conn, "css_variables.html"
  end

  def css_grid(conn, _params) do
    render conn, "css_grid.html"
  end

  def css_flexbox(conn, _params) do
    render conn, "css_flexbox.html"
  end

  def pseudo_classes(conn, _params) do
    render conn, "pseudo_classes.html"
  end

  def pseudo_links(conn, _params) do
    render conn, "pseudo_links.html"
  end

  def pseudo_child_and_type(conn, _params) do
    render conn, "pseudo_child_and_type.html"
  end

  def pseudo_forms_and_input(conn, _params) do
    render conn, "pseudo_forms_and_input.html"
  end

  def pseudo_misc(conn, _params) do
    render conn, "pseudo_misc.html"
  end

  def css_animations(conn, _params) do
    render conn, "css_animations.html"
  end
end
