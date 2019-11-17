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

  test "computes octahedron surface area" do
    assert round(SurfaceArea.octahedron(5)) == 87
  end

  test "computes icosahedron surface area" do
    assert round(SurfaceArea.icosahedron(5)) == 217
  end

  test "computes dodecahedron surface area" do
    assert round(SurfaceArea.dodecahedron(5)) == 516
  end
end
