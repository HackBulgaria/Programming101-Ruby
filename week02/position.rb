class Position
  def initialize(x, y)
    @x, @y = x, y
  end

  def +(other)
    Position.new @x + other.x, @y + other.y
    # @x += other.x
    # @y += other.y
  end

  def to_s
    "(#{@x}, #{@y})"
  end

  def x
    @x
  end

  def x=(value)
    @x = value
  end

  def y
    @y
  end

  def y=(value)
    @y = value
  end
end
