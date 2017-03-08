defmodule TodoApp.Repo.Migrations.CreateTodo do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :title, :string
      add :is_done, :boolean, default: false, null: false
      add :deadline, :date

      timestamps()
    end

  end
end
