defmodule Course01.Association.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :fname, :string
    field :lname, :string
    has_one :adress, Course01.Association.Adress
    timestamps()
  end

  def changeset(user, attrs \\ %{}) do
    user
    |> cast(attrs, [:fname, :lname])
    |> cast_assoc(:adress)
    |> validate_required([:fname, :lname])
  end
end
