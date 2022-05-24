class Triangle
  
  def initialize(one, two, three)
    @side_one = one
    @side_two = two
    @side_three = three
  end

  class TriangleError < StandardError
    
  end

  def kind
    sides = [@side_one, @side_two, @side_three]
    if sides.uniq.size == 1
      :equilateral
    elsif sides.uniq.size == 2
      :isosceles
    elsif sides.uniq.size == 3
      :scalene
    end
  end

end
