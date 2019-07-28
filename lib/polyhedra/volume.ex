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

end
