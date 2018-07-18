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
  def cssgrid(conn, _params) do
    render conn, "css_grid.html"
  end
end
