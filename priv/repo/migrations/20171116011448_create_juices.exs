defmodule Juicerate.Repo.Migrations.CreateJuices do
  use Ecto.Migration

  def change do
    create table(:juices) do
      add :name, :string
      add :rating, :integer

      timestamps()
    end

  end
end
