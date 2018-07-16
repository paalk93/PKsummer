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
  def tableandlist(conn, _params)do
    render conn, "tableandlist.html"
  end
  def media(conn, _params) do
    render conn, "media.html"
  end
  def formandinput(conn, _params) do
    render conn, "formandinput.html"
  end
  def sections(conn, _params) do
    render conn, "sections.html"
  end
  def typography(conn, _params) do
    render conn, "typography.html"
  end
  def iconsandbuttons(conn, _params) do
    render conn, "iconsandbuttons.html"
  end
  def textformatting(conn, _params) do
    render conn, "textformatting.html"
  end
  def codeandscript(conn, _params) do
    render conn, "codeandscript.html"
  end
end
