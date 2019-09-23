defmodule Polyhedra.SurfaceAreaTest do
  use ExUnit.Case
  alias Polyhedra.SurfaceArea
  doctest Polyhedra.SurfaceArea

  test "computes cube surface area" do
    assert SurfaceArea.cube(5) == 150
  end
end
