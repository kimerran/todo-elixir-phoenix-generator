defmodule TodoApp.Todo do
  use TodoApp.Web, :model

  schema "todos" do
    field :title, :string
    field :is_done, :boolean, default: false
    field :deadline, Ecto.Date

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :is_done, :deadline])
    |> validate_required([:title, :is_done, :deadline])
  end
end
