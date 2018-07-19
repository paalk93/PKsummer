defmodule Course01Web.ElixirController do
  use Course01Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def iex_example(conn, _params) do
    render conn, "iex_example.html"
  end

  def collections(conn, _params) do
    render conn, "collections.html"
  end

  def comprehensions(conn,_params) do
    render conn, "comprehensions.html"
  end

  def data_types(conn,_params) do
    render conn, "data_types.html"
  end

  def ex_unit(conn,_params) do
    render conn, "ex_unit.html"
  end

  def mix_example(conn,_params) do
    render conn, "mix_example.html"
  end

  def modules_and_functions(conn,_params) do
    render conn, "modules_and_functions.html"
  end

  def operators(conn,_params) do
    render conn, "operators.html"
  end

  def pattern_matching(conn,_params) do
    render conn, "pattern_matching.html"
  end

  def recursion(conn, _params) do
    render conn, "recursion.html"
  end

  def enumerables(conn, _params) do
    render conn, "enumerables.html"
  end
end
