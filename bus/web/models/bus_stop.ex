defmodule Bus.BusStop do
  use Bus.Web, :model

  schema "bus_stop" do
    field :name, :string

    timestamps
  end

  def changeset(busStop, params \\ %{}) do
    busStop
    |> cast(params, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end

end
