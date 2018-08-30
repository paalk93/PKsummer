defmodule Course01.Product.Supplier do
  use Ecto.Schema
  import Ecto.Changeset

  embedded_schema do
    field :company_name, :string
  end


  def changeset(supplier, attrs) do
      supplier
      |> cast(attrs, [:company_name])
    end

end
