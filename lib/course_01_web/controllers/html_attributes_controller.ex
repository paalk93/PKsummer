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

  def for_media(conn, _params) do
    render conn, "for_media.html"
  end

  def for_table_and_list(conn, _params) do
    render conn, "for_table_and_list.html"
  end

  def styling_attributes(conn, _params) do
    render conn, "attribute_styles.html"
  end

  def for_links(conn, _params) do
    render conn, "for_links.html"
  end

  def data_and_javascript(conn, _params) do
    render conn, "data_and_javascript.html"
  end
end
