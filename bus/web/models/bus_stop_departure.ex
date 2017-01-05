defmodule Bus.BusStopDeparture do
  use Bus.Web, :model

  schema "bus_stop_departures" do
      belongs_to :bus_line_stop, Bus.BusLineStop
      field :departure, :time
      timestamps
  end

end
