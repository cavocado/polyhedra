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

  end

  def dodecahedron(b) do

  end

  def icosahedron(b) do

  end

  ##Archimedean Solids

end
