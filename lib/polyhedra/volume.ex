defmodule Polyhedra.Volume do
  alias Polyhedra.Utilities

  ##Platonic Solids

  def cube(s) do
    s*s*s
  end

  def tetrahedron(b) do
    a = Utilities.equilateral_triangle(b)
    ht = Utilities.find_height(b)
    h = :math.sqrt(:math.pow(ht, 2) - :math.pow(ht/2, 2))
    a*h/3
  end

  def octahedron(b) do
    ht = Utilities.find_height(b)
    h = :math.sqrt(:math.pow(ht, 2) - :math.pow(ht/2, 2))
    a = b*b
    2*a*h/3
  end

  def dodecahedron(b) do
    n = 15 + 7*:math.sqrt(5)
    n/4*:math.pow(b, 3)
  end

  def icosahedron(b) do
    a = 5/12
    d = 3 + :math.sqrt(5)
    c = :math.pow(b, 3)
    a*d*c
  end

  ##Archimedean Solids

  def cubeoctahedron(b) do
    5/3*:math.sqrt(2)*:math.pow(b, 3)
  end

  def icosidodecahedron(b) do
    c = 45 + 17*:math.sqrt(5)
    :math.pow(b,3)/6*c
  end

  def truncated_tetrahedron(b) do
    23/12*:math.sqrt(2)*:math.pow(b,3)
  end

  def truncated_octahedron(b) do
    8*:math.pow(b,3)*:math.sqrt(2)
  end

  def truncated_cube() do

  end

  def truncated_icosahedron() do

  end

  def truncated_dodecahedron() do

  end

  def small_rhombicuboctahedron() do

  end

  def great_rhombicuboctahedron() do

  end

  def small_rhombicosidodecahedron() do

  end

  def great_rhombicosidodecahedron() do

  end

  def snub_cube() do

  end

  def snub_dodecahedron() do

  end
end
