defmodule Course01.Association.Adress do
  use Ecto.Schema
  import Ecto.Changeset


  schema "adresses" do
    field :city, :string
    field :country, :string
    belongs_to :user, Course01.Association.User

    timestamps()
  end

  def changeset(adress, attrs \\ %{}) do
    adress
    |> cast(attrs, [:city, :country, :user_id])
    |> validate_required([:city, :country])
  end

end
