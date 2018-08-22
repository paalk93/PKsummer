defmodule Course01.Association do
  alias Course01.Repo

  alias Course01.Association.User
  alias Course01.Association.Adress

# Login functions

def get_by_email(email) when is_nil(email) do
  nil
end

def get_by_email(email) do
  Repo.get_by(User, email: email)
end

# User functions

  def list_users do
    Repo.all(User)
    |> Course01.Repo.preload(:adress)
  end

  def create_user(attrs \\ %{}) do
  %User{}
  |> Course01.Repo.preload(:adress)
  |> User.changeset(attrs)
  |> Repo.insert()

end

def get_user!(id), do: Repo.get!(User,id) |> Course01.Repo.preload(:adress)

def change_user(%User{} = user) do
  User.changeset(user, %{})
end

def delete_user(%User{} = user) do
  Repo.delete(user)
end

def update_user(%User{} = user, attrs) do
  user
  |> User.changeset(attrs)
  |> Repo.update()
end

# Adress functions

def change_adress(%Adress{} = adress) do
  Adress.changeset(adress, %{})
end

def list_adresses do
  Repo.all(Adress)
end

def create_adress(attrs \\ %{}) do
  %Adress{}
  |> Course01.Repo.preload(:user)
  |> Adress.changeset(attrs)
  |> Repo.insert()
end

def get_adress!(id), do: Repo.get!(Adress, id)

end
