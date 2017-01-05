defmodule Bus.BusLineStop do
  use Bus.Web, :model

  schema "bus_line_stops" do
      belongs_to :bus_stops, Bus.BusStop
      belongs_to :bus_lines, Bus.BusLine
      field :order, :integer
      has_many :bus_stop_departures, Bus.BusStopDeparture

      timestamps
  end

  def changeset(busLineStop, params \\ %{}) do
   busLineStop
   |> Ecto.Changeset.cast(params, [:bus_stops_id, :bus_lines_id, :order])
   |> Ecto.Changeset.validate_required([:bus_stops_id, :bus_lines_id, :order])
 end

# https://hexdocs.pm/ecto/Ecto.Schema.html#many_to_many/3-join-schema-example
end
