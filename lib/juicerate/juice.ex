defmodule Juicerate.Juice do
  use Ecto.Schema
  import Ecto.Changeset
  alias Juicerate.{
    Juice,
    Repo
  }

  schema "juices" do
    field :name, :string
    field :rating, :integer

    timestamps()
  end

  def list_juices() do
    Repo.all(Juice)
  end

  @doc false
  def changeset(%Juice{} = juice, attrs) do
    juice
    |> cast(attrs, [:name, :rating])
    |> validate_required([:name, :rating])
  end
end
