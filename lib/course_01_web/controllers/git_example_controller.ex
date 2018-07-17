defmodule Course01Web.GitExampleController do
  use Course01Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def git_commands(conn, _params) do
    render conn, "git_commands.html"
  end

end
