defmodule Course01Web.PhoenixController do
  use Course01Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def data_flow(conn, _params) do
    render conn, "data_flow.html"
  end

  def major_parts(conn, _params) do
    render conn, "major_parts.html"
  end

  def example_controller(conn, _params) do
    render conn, "major_parts_controller.html"
  end

  def example_view(conn, _params) do
    render conn, "major_parts_view.html"
  end

  def example_template(conn, _params) do
    render conn, "major_parts_template.html"
  end

  def example_router(conn, _params) do
    render conn, "major_parts_router.html"
  end

  def example_plug(conn, _params) do
    render conn, "plug.html"
  end

  def example_ecto(conn, _params) do
    render conn, "ecto.html"
  end

  def example_adapters(conn, _params) do
    render conn, "ecto_adapters.html"
  end

  def example_migrations(conn, _params) do
    render conn, "ecto_migrations.html"
  end

  def example_schema(conn, _params) do
    render conn, "ecto_schema.html"
  end

  def ecto_mix_tasks(conn, _params) do
    render conn, "ecto_mix_tasks.html"
  end

  def example_repo(conn, _params) do
    render conn, "ecto_repo.html"
  end

  def example_query(conn, _params) do
    render conn, "ecto_query.html"
  end

  def example_changeset(conn, _params) do
    render conn, "ecto_changeset.html"
  end

  def example_multi(conn, _params) do
    render conn, "ecto_multi.html"
  end

  def example_associations(conn, _params) do
    render conn, "ecto_associations.html"
  end

  def example_embeded(conn, _params) do
    render conn, "ecto_embeded.html"
  end
end
