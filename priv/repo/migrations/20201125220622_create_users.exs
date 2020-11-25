defmodule Membership.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :photo_urls, {:array, :string}, null: false, default: []

      timestamps()
    end

  end
end
