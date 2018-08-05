defmodule Course01.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :pnr, :string
      add :summary, :string
      add :price, :integer
      add :storage_status, :integer

      timestamps()
    end
  end

end
