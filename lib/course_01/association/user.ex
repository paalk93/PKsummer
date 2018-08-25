defmodule Course01.Association.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :fname, :string
    field :email, :string
    field :encrypted_password, :string
    field :lname, :string
    has_one :adress, Course01.Association.Adress
    timestamps()
  end

  def changeset(user, attrs \\ %{}) do
    user
    |> cast(attrs, [:fname, :lname, :email, :encrypted_password])
    |> cast_assoc(:adress)
    |> unique_constraint(:email)
    |> validate_required([:fname, :lname, :email, :encrypted_password])
    |> update_change(:encrypted_password, &Pbkdf2.hash_pwd_salt/1)
  end
end
