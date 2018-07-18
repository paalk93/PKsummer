defmodule Course01Web.JavascriptController do
  use Course01Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def variables_and_data(conn, _params) do
    render conn, "variables_and_data.html"
  end

  def operators(conn, _params) do
    render conn, "operators.html"
  end

  def logic_flow(conn, _params) do
    render conn, "logic_flow.html"
  end

  def logic_flow_if_else(conn, _params) do
    render conn, "logic_flow_if_else.html"
  end

  def logic_flow_switch(conn, _params) do
    render conn, "logic_flow_switch.html"
  end

  def arrays(conn, _params) do
    render conn, "arrays.html"
  end

  def functions(conn, _params) do
    render conn, "functions.html"
  end

  def objects(conn, _params) do
    render conn, "objects.html"
  end

  def loops(conn, _params) do
    render conn, "loops.html"
  end

  def loops_for_and_in(conn, _params) do
    render conn, "loops_for_and_in.html"
  end

  def scope(conn, _params) do
    render conn, "scope.html"
  end

  def misc(conn, _params) do
    render conn, "misc.html"
  end
  
end
