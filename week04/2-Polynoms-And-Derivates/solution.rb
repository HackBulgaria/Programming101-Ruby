class Monom
  attr_accessor :coeff, :var, :power

  def initialize(coeff, var, power)
    @coeff = coeff
    @var = var
    @power = power
  end

  def self.parse(input)
    parsed = MonomParser.new(input)

    coeff = parsed.coeff
    coeff = 0 unless coeff

    var = parsed.var
    var = 'x' unless var

    power = parsed.power
    power = 0 unless power

    Monom.new coeff, var, power
  end

  def self.constant(x)
    Monom.new(x, 'x', 0)
  end

  def ==(other)
    return false unless other

    coeff == other.coeff && var == other.var && power == other.power
  end

  def to_s
    return coeff.to_s if constant?

    power_1 = "#{@coeff}*#{@var}"
    return power_1 if power == 1

    power_1 + "^#{@power}"
  end

  def +(other)
    if can_add?(other)
      Monom.new(coeff + other.coeff, var, power)
    end
  end

  def equal_power?(other)
    power == other.power
  end

  def equal_var?(other)
    var == other.var
  end

  def can_add?(other)
    equal_var?(other) && equal_power?(other)
  end

  def constant?
    power == 0
  end

  def derivate
    return Monom.constant(0) if constant?
    return Monom.constant(coeff) if power == 1

    Monom.new(coeff * power, var, power - 1)
  end
end

class Monom
  class MonomParser
    NUMERIC = /^[0-9]+$/
    MULT = '*'

    attr_reader :coeff, :var, :power

    def initialize(input)
      @input = input
      try_take_coeff
      try_take_var
      try_take_power
    end

    private

    def try_take_coeff
      c = @input.chars.take_while { |ch| ch =~ NUMERIC }

      if c == []
        @coeff = 1
        return
      end

      @coeff = c.join('').to_i
    end

    def try_take_var
      input = @input.chars.drop_while { |ch| ch =~ NUMERIC }
      input.shift if input.length > 0 && input[0] == MULT

      if input.length == 0
        @var = 'x'
        @power = 0
        return
      end

      @var = input[0]
    end

    def try_take_power
      return if @power

      input = @input.chars.reverse
      power = input.take_while { |ch| ch =~ NUMERIC }

      @power = 1 if power == []
      @power = power.reverse.join('').to_i unless power == []
    end
  end
end

class Polynomial
  def initialize(*monoms)
    # power => monom
    @monoms = {}

    monoms = monoms.flatten
    monoms.each { |monom| self << monom }
  end

  def self.parse(input)
    input = input.delete(' ')
    parts = input.split('+')
    p = Polynomial.new

    parts.each do |part|
      p << Monom.parse(part)
    end

    p
  end

  def ==(other)
    monoms == other.monoms
  end

  def <<(monom)
    if @monoms[monom.power]
      @monoms[monom.power] = @monoms[monom.power] + monom
    else
      @monoms[monom.power] = monom
    end
  end

  def to_a
    @monoms.map { |power, _| power }
      .sort
      .reverse
      .map { |power| @monoms[power] }
  end

  def to_s
    monoms = to_a
    # We take care if we have only 1 Monom (usually, zero)
    return monoms[0].to_s if monoms.length == 1

    monoms.select { |monom| monom.coeff != 0 }.map(&:to_s).join(' + ')
  end

  def derivate
    Polynomial.new to_a.map(&:derivate)
  end

  protected

  attr_reader :monoms
end
