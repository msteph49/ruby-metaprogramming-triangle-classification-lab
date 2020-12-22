class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  def valid?
    if (side_a + side_b) > side_c && (side_b + side_c) > side_a && (side_a + side_c) > side_b && side_a >= 0 && side_b >= 0 && side_c >= 0 
      true
    else
      false
    end
  end
  def kind
    if !valid?
      raise TriangleError
    elsif
      side_a == side_b && side_b == side_c && side_a ==side_c
      :equilateral
    elsif
      side_a == side_b || side_a == side_c || side_b == side_c
      :isosceles
    else
      :scalene

      
    end
  end


  class TriangleError < StandardError
  end
end
