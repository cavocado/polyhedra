defmodule Polyhedra.Volume do
  ## Platonic Solids
  import :math

  def cube(s) do
    s * s * s
  end

  def tetrahedron(b) do
    pow(b, 3) / 12 * sqrt(2)
  end

  def octahedron(b) do
    2 * tetrahedron(b)
  end

  def dodecahedron(b) do
    n = 15 + 7 * sqrt(5)
    n / 4 * pow(b, 3)
  end

  def icosahedron(b) do
    a = 5 / 12
    d = 3 + sqrt(5)
    c = pow(b, 3)
    a * d * c
  end

  ## Archimedean Solids

  def cubeoctahedron(b) do
    5 / 3 * sqrt(2) * pow(b, 3)
  end

  def icosidodecahedron(b) do
    c = 45 + 17 * sqrt(5)
    pow(b, 3) / 6 * c
  end

  def truncated_tetrahedron(b) do
    23 / 12 * sqrt(2) * pow(b, 3)
  end

  def truncated_octahedron(b) do
    8 * pow(b, 3) * sqrt(2)
  end

  def truncated_cube(b) do
    c = 21 + 14 * sqrt(2)
    pow(b, 3) / 3 * c
  end

  def truncated_icosahedron(b) do
    c = 125 + 43 * sqrt(5)
    pow(b, 3) / 4 * c
  end

  def truncated_dodecahedron(b) do
    c = 99 + 47 * sqrt(5)
    5 / 12 * pow(b, 3) * c
  end

  def small_rhombicuboctahedron(b) do
    c = 6 + 5 * sqrt(2)
    2 / 3 * pow(b, 3) * c
  end

  def great_rhombicuboctahedron(b) do
    c = 22 + sqrt(2)
    c * pow(b, 3)
  end

  def small_rhombicosidodecahedron(b) do
    c = 60 + 29 * sqrt(5)
    pow(b, 3) / 3 * c
  end

  def great_rhombicosidodecahedron(b) do
    c = 95 + 50 * sqrt(5)
    c * pow(b, 3)
  end

  def snub_cube(b) do
    t =
      (1 + pow(19 + 3 * sqrt(33), 1 / 3) + pow(19 - 3 * sqrt(33), 1 / 3)) /
        3

    n = 3 * sqrt(t - 1) + 4 * sqrt(t + 1)
    d = 3 * sqrt(2 - t)
    pow(b, 3) * n / d
  end

  def snub_dodecahedron(b) do
    gr = 1 / 2 * (1 + sqrt(5))

    ce =
      pow(gr / 2 + sqrt(gr - 5 / 27) / 2, 1 / 3) +
        pow(gr / 2 - sqrt(gr - 5 / 27) / 2, 1 / 3)

    n = 12 * pow(ce, 2) * (3 * gr + 1) - ce * (36 * gr + 7) - (53 * gr + 6)
    d = 6 * pow(sqrt(3 - pow(ce, 2)), 3)
    pow(b, 3) * n / d
  end
end
