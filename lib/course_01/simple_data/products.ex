defmodule Course01.Product.Products do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query, only: [from: 2]

  schema "products" do
    field :name, :string
    field :pnr, :string
    field :summary, :string
    field :price, :integer
    field :storage_status, :integer

    timestamps()
  end

  def changeset(products, attrs) do
    products
    |> cast(attrs, [:name, :pnr, :summary, :price, :storage_status])
    |> validate_required([:name, :pnr, :summary, :price, :storage_status])
  end

  def search(query, search_term) do
    wildcard_search = "%#{search_term}"

    from products in query,
    where: ilike(products.name, ^wildcard_search),
    or_where: ilike(products.summary, ^wildcard_search),
    or_where: ilike(products.pnr, ^wildcard_search)
  end
end
