defmodule Bus.BusLine do
  use Bus.Web, :model

  schema "bus_line" do
    field :name, :string
    field :only_working_day, :boolean, default: false
    field :only_school_day, :boolean, default: false
    many_to_many :bus_stops, Bus.BusStop, join_through: Bus.BusLineStop

    timestamps
  end

  def changeset(busLine, params \\ %{}) do
    busLine
    |> cast(params, [:name, :only_working_day, :only_school_day])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end

end
