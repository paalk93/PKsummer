defmodule Course01Web.PlanningProblemController do
  use Course01Web, :controller

  def problem_solving(conn, _params) do
    render conn, "problem_solving.html"
  end

  def planning(conn, _params) do
    render conn, "planning.html"
  end

end
