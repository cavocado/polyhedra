defmodule Polyhedra.SurfaceArea do
  ##2D Area
  defp a_triangle(b, h) do
    b*h/2
  end

  defp equilateral_triangle(b) do
    c = b
    a = b/2
    h = :math.sqrt(:math.pow(a,2) - :math.pow(c,2))
    a_triangle(b,h)
  end

  defp a_pentagon(b) do
    5*equilateral_triangle(b)
  end

  defp a_hexagon(b) do
    6*equilateral_triangle(b)
  end

  defp a_octagon(b) do
    a = b/:math.sqrt(2)
    s = 2*a + b
    c = s*s
    t = a*a/2
    c - 4*t
  end

  defp a_decagon(b) do
    n = b*b*10
    t = :math.tan(18)
    n/4*t
  end

  ##Platonic Solids
  def tetrahedron(b) do
    4*equilateral_triangle(b)
  end

  def octahedron(b) do
    8*equilateral_triangle(b)
  end

  def cube(s) do
    6*s*s
  end

  def icosahedron(b) do
    20*equilateral_triangle(b)
  end

  def dodecahedron(b) do
    12*a_pentagon(b)
  end

  ##Archimedean Solids
  def cubeoctahedron(b) do
    cube(b) + octahedron(b)
  end

  def icosidodecahedron(b) do
    icosahedron(b) + dodecahedron(b)
  end

  def truncated_tetrahedron(b) do
    4*a_hexagon(b) + 4*equilateral_triangle(b)
  end

  def truncated_octahedron(b) do
    6*b*b + 8*a_hexagon(b)
  end

  def truncated_cube(b) do
    6*a_octagon(b) + 8*equilateral_triangle(b)
  end

  def truncated_icosahedron(b) do
    12*a_pentagon(b) + 20*a_hexagon(b)
  end

  def truncated_dodecahedron(b) do
    12*a_decagon(b) + 20*equilateral_triangle(b)
  end

  def small_rhombicuboctahedron(b) do
    8*equilateral_triangle(b) + 18*b*b
  end

  def great_rhomicuboctahedron(b) do
    12*b*b + 8*a_hexagon(b) + 6*a_octagon(b)
  end

  def small_rhombicosidodecahedron(b) do
    20*equilateral_triangle(b) + 12*a_pentagon(b)
  end

  def great_rhombicosidodecahedron(b) do
    30*b*b + 20*a_hexagon(b) + 12*a_decagon(b)
  end

  def snub_cube(b) do
    6*b*b + 32*equilateral_triangle(b)
  end

  def snub_dodecahedron(b) do
    12*a_pentagon(b) + 80*equilateral_triangle(b)
  end
end
