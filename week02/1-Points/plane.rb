class InfinitePlane
  def initialize(x, y)
    @x, @y = x, y
  end

  def move_to_directions(directions)
    coeff = 1

    dx_moves = ['>', '<']
    dy_moves = ['^', 'v']

    moves = {
      '>' => 1,
      '<' => -1,
      '^' => -1,
      'v' => 1,
      '~' => 0
    }

    directions.chars.each do |direction|
      coeff *= -1 if direction == '~'
      step = moves[direction] * coeff

      if dx_moves.include? direction
        @x += step
      else
        @y += step
      end
    end
  end

  def to_s
    "(#{@x}, #{@y})"
  end
end

plane = InfinitePlane.new 0, 0
plane.move_to_directions '>>><<<~>>>~^^^'

puts plane
