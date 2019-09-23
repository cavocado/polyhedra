defmodule Polyhedra.Utilities do
  import :math

  def a_triangle(b, h) do
    b * h / 2
  end

  def equilateral_triangle(b) do
    c = b
    a = b / 2
    h = sqrt(pow(c, 2) - pow(a, 2))
    a_triangle(b, h)
  end

  def a_pentagon(b) do
    s = 5 * (5 + 2 * sqrt(5))
    1 / 4 * sqrt(s) * b * b
  end

  def a_hexagon(b) do
    6 * equilateral_triangle(b)
  end

  def a_octagon(b) do
    a = b / sqrt(2)
    s = 2 * a + b
    c = s * s
    t = a * a / 2
    c - 4 * t
  end

  def a_decagon(b) do
    n = b * b * 10
    t = tan(18)
    n / 4 * t
  end

  def find_height(b) do
    sqrt(b * b - b * b / 4)
  end
end
