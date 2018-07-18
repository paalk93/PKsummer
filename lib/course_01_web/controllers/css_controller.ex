defmodule Course01Web.CssController do
  use Course01Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def selectors(conn, _params) do
    render conn, "css_selectors.html"
  end

end
