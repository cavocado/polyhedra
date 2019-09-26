defmodule Polyhedra.SurfaceAreaTest do
  use ExUnit.Case
  alias Polyhedra.SurfaceArea
  doctest Polyhedra.SurfaceArea

  test "computes cube surface area" do
    assert SurfaceArea.cube(5) == 150
  end

  test "computes tetrahedron surface area" do
    assert round(SurfaceArea.tetrahedron(5)) == 43
  end
end
