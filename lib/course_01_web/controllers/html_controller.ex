defmodule Course01Web.HtmlController do
  use Course01Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def tags(conn, _params) do
    render conn, "tags.html"
  end

  def tagshead(conn, _params)do
    render conn, "tagshead.html"
  end
  def tagsbody(conn, _params)do
    render conn, "tagsbody.html"
  end
end
