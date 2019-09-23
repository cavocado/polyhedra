defmodule Polyhedra.SurfaceArea do
  alias Polyhedra.Utilities

  ## Platonic Solids
  def tetrahedron(b) do
    4 * Utilities.equilateral_triangle(b)
  end

  def octahedron(b) do
    8 * Utilities.equilateral_triangle(b)
  end

  def cube(s) do
    6 * s * s
  end

  def icosahedron(b) do
    20 * Utilities.equilateral_triangle(b)
  end

  def dodecahedron(b) do
    12 * Utilities.a_pentagon(b)
  end

  ## Archimedean Solids
  def cubeoctahedron(b) do
    cube(b) + octahedron(b)
  end

  def icosidodecahedron(b) do
    icosahedron(b) + dodecahedron(b)
  end

  def truncated_tetrahedron(b) do
    4 * Utilities.a_hexagon(b) + 4 * Utilities.equilateral_triangle(b)
  end

  def truncated_octahedron(b) do
    6 * b * b + 8 * Utilities.a_hexagon(b)
  end

  def truncated_cube(b) do
    6 * Utilities.a_octagon(b) + 8 * Utilities.equilateral_triangle(b)
  end

  def truncated_icosahedron(b) do
    12 * Utilities.a_pentagon(b) + 20 * Utilities.a_hexagon(b)
  end

  def truncated_dodecahedron(b) do
    12 * Utilities.a_decagon(b) + 20 * Utilities.equilateral_triangle(b)
  end

  def small_rhombicuboctahedron(b) do
    8 * Utilities.equilateral_triangle(b) + 18 * b * b
  end

  def great_rhomicuboctahedron(b) do
    12 * b * b + 8 * Utilities.a_hexagon(b) + 6 * Utilities.a_octagon(b)
  end

  def small_rhombicosidodecahedron(b) do
    20 * Utilities.equilateral_triangle(b) + 12 * Utilities.a_pentagon(b)
  end

  def great_rhombicosidodecahedron(b) do
    30 * b * b + 20 * Utilities.a_hexagon(b) + 12 * Utilities.a_decagon(b)
  end

  def snub_cube(b) do
    6 * b * b + 32 * Utilities.equilateral_triangle(b)
  end

  def snub_dodecahedron(b) do
    12 * Utilities.a_pentagon(b) + 80 * Utilities.equilateral_triangle(b)
  end
end
