defmodule Course01Web.HtmlAttributesController do
  use Course01Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def general(conn, _params) do
    render conn, "general.html"
  end
  def for_form_and_input(conn, _params) do
    render conn, "for_form_and_input.html"
  end
end
