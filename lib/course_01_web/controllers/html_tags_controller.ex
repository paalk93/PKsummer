defmodule Course01Web.HtmlTagsController do
  use Course01Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def tags(conn, _params) do
    render conn, "tags.html"
  end

  def head_tags(conn, _params)do
    render conn, "head_tags.html"
  end

  def body_tags(conn, _params)do
    render conn, "body_tags.html"
  end

  def table_and_list(conn, _params)do
    render conn, "table_and_list.html"
  end

  def media(conn, _params) do
    render conn, "media.html"
  end

  def form_and_input(conn, _params) do
    render conn, "form_and_input.html"
  end

  def sections(conn, _params) do
    render conn, "sections.html"
  end

  def typography(conn, _params) do
    render conn, "typography.html"
  end

  def icons_and_buttons(conn, _params) do
    render conn, "icons_and_buttons.html"
  end

  def textformatting(conn, _params) do
    render conn, "textformatting.html"
  end

  def code_and_script(conn, _params) do
    render conn, "code_and_script.html"
  end
end
