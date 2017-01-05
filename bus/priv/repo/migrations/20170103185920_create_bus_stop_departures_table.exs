defmodule Bus.Repo.Migrations.CreateBusStopDeparturesTable do
  use Ecto.Migration

  def change do
    create table(:bus_stop_departures) do
      add :bus_line_stop_id, references(:bus_line_stops)
      add :departure, :time

      timestamps
    end

  end
end
