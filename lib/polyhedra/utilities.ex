defmodule Polyhedra.Utilities do

  def a_triangle(b, h) do
    b*h/2
  end

  def equilateral_triangle(b) do
    c = b
    a = b/2
    h = :math.sqrt(:math.pow(a,2) - :math.pow(c,2))
    a_triangle(b,h)
  end

  def a_pentagon(b) do
    5*equilateral_triangle(b)
  end

  def a_hexagon(b) do
    6*equilateral_triangle(b)
  end

  def a_octagon(b) do
    a = b/:math.sqrt(2)
    s = 2*a + b
    c = s*s
    t = a*a/2
    c - 4*t
  end

  def a_decagon(b) do
    n = b*b*10
    t = :math.tan(18)
    n/4*t
  end

  defp find_height(b) do
    :math.sqrt(b*b - b*b/4)
  end

end
