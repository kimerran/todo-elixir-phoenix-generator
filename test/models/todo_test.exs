defmodule TodoApp.TodoTest do
  use TodoApp.ModelCase

  alias TodoApp.Todo

  @valid_attrs %{deadline: %{day: 17, month: 4, year: 2010}, is_done: true, title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Todo.changeset(%Todo{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Todo.changeset(%Todo{}, @invalid_attrs)
    refute changeset.valid?
  end
end
