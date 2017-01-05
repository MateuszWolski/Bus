defmodule Bus.Repo.Migrations.CreateBusLineStopsTable do
  use Ecto.Migration

  def change do
    create table(:bus_line_stops) do
      add :bus_stop_id, references(:bus_stops)
      add :bus_line_id, references(:bus_lines)
      add :order, :integer

      timestamps
    end
  end
end
