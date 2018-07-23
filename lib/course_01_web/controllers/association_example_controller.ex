defmodule Course01Web.AssociationExampleController do
  use Course01Web, :controller

  import Ecto.Query, warn: false
  alias Course01.Repo

  alias Course01.Association
  alias Course01.Association.User
  alias Course01.Association.Adress

  def index(conn, _params) do
    users = Association.list_users()
    adresses = Association.list_adresses()
    render(conn, "index.html", users: users, adresses: adresses)
  end

  def show(conn, %{"id" => id}) do
    user = Association.get_user!(id)
    adress = Association.get_adress!(id)
    render(conn, "show.html", user: user, adress: adress)
  end

  def new(conn, _params) do
    changeset = User.changeset(%User{adress: %Adress{}})
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"user" => user_params}) do
    changeset = User.changeset(%User{}, user_params)
    case Repo.insert(changeset) do
      {:ok, user} ->

        conn
        |> redirect(to: association_example_path(conn, :index))
      {:error, changeset} ->
    render(conn, "new.html", changeset: changeset)
    end
  end

  def edit(conn, %{"id" => id}) do
  user = Association.get_user!(id)
  changeset = Association.change_user(user)
  render(conn, "edit.html", user: user, changeset: changeset)
end

def update(conn, %{"id" => id, "user" => user_params}) do
  user = Association.get_user!(id)

  case Association.update_user(user, user_params) do
    {:ok, user} ->
      conn
      |> put_flash(:info, "User updated successfully.")
      |> redirect(to: association_example_path(conn, :show, user))
    {:error, %Ecto.Changeset{} = changeset} ->
      render(conn, "edit.html", user: user, changeset: changeset)
  end
end

def delete(conn, %{"id" => id}) do
  user = Association.get_user!(id)
  {:ok, _user} = Association.delete_user(user)
  conn
  |> put_flash(:info, "User deleted successfully.")
  |> redirect(to: association_example_path(conn, :index))
end

end
