defmodule Bus.Repo.Migrations.CreateBusStopTable do
  use Ecto.Migration

  def change do
    create table(:bus_stops) do
      add :name, :string

      timestamps
    end
  end
end
