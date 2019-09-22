defmodule Polyhedra.Volume do
  ##Platonic Solids

  def cube(s) do
    s*s*s
  end

  def tetrahedron(b) do
    :math.pow(b, 3)/12 * :math.sqrt(2)
  end

  def octahedron(b) do
    2*tetrahedron(b)
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

  def truncated_cube(b) do
    c = 21 + 14*:math.sqrt(2)
    :math.pow(b,3)/3*c
  end

  def truncated_icosahedron(b) do
    c = 125 + 43*:math.sqrt(5)
    :math.pow(b,3)/4*c
  end

  def truncated_dodecahedron(b) do
    c = 99 + 47*:math.sqrt(5)
    5/12*:math.pow(b,3) * c
  end

  def small_rhombicuboctahedron(b) do
    c = 6 + 5 * :math.sqrt(2)
    2/3*:math.pow(b,3)*c
  end

  def great_rhombicuboctahedron(b) do
    c = 22 + :math.sqrt(2)
    c * :math.pow(b, 3)
  end

  def small_rhombicosidodecahedron(b) do
    c = 60 + 29*:math.sqrt(5)
    :math.pow(b, 3)/3 * c
  end

  def great_rhombicosidodecahedron(b) do
    c = 95 + 50*:math.sqrt(5)
    c*:math.pow(b, 3)
  end

  def snub_cube() do

  end

  def snub_dodecahedron() do

  end
end
