defmodule Bus.Repo.Migrations.CreateBusLinesTable do
  use Ecto.Migration

  def change do
    create table(:bus_lines) do
      add :name, :string
      add :only_working_day, :boolean
      add :only_school_day, :boolean

      timestamps
    end
  end
end
