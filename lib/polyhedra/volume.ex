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

  def snub_cube(b) do
    t = (1 + :math.pow(19 + 3*:math.sqrt(33), 1/3) + :math.pow(19 - 3*:math.sqrt(33), 1/3))/3
    n = 3*:math.sqrt(t - 1) + 4*:math.sqrt(t + 1)
    d = 3*:math.sqrt(2 - t)
    :math.pow(b, 3) * n / d
  end

  def snub_dodecahedron(b) do
    gr = 1/2*(1 + :math.sqrt(5))
    ce = :math.pow(gr/2 + :math.sqrt(gr - 5/27)/2, 1/3) + :math.pow(gr/2 - :math.sqrt(gr - 5/27)/2, 1/3)
    n = 12*:math.pow(ce, 2)*(3*gr+1) - ce*(36*gr + 7) - (53*gr + 6)
    d = 6*:math.pow(:math.sqrt(3-:math.pow(ce, 2)), 3)
    :math.pow(b, 3)*n/d
  end
end
