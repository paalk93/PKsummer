defmodule Course01Web.Helpers.Auth do
  alias Course01.Association

  def signed_in?(conn) do
    user_id = Plug.Conn.get_session(conn, :current_user_id)
    if user_id, do: !!Course01.Repo.get(Course01.Association.User, user_id)
  end

  def my_user(conn) do
    user_id = Plug.Conn.get_session(conn, :current_user_id)
    user = Association.get_user!(user_id)
  end

end
