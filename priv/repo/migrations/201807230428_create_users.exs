defmodule Course01.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :fname, :string
      add :lname, :string
      add :email, :string
      add :encrypted_password, :string
      timestamps()
    end
    create unique_index(:users, [:email])
  end
end
