require 'minitest/autorun'
require_relative 'solution'

class MonomTest < Minitest::Test
  def test_monom_to_s
    m = Monom.new(2, 'x', 5)
    assert_equal '2*x^5', m.to_s
  end

  def test_monom_to_s_when_power_is_1
    m = Monom.new(2, 'x', 1)
    assert_equal '2*x', m.to_s
  end

  def test_monom_to_s_when_constant
    m = Monom.constant(2)
    assert_equal '2', m.to_s
  end

  def test_monom_to_s_when_constant_and_0
    m = Monom.constant(0)
    assert_equal '0', m.to_s
  end

  def test_if_monom_is_constant_when_it_is_not
    m = Monom.new(2, 'x', 5)
    assert_equal false, m.constant?
  end

  def test_if_monom_is_constant_when_created_with_new
    m = Monom.new(2, 'x', 0)
    assert m.constant?
  end

  def test_if_monom_is_constant_when_created_with_constant
    m = Monom.constant(2)
    assert m.constant?
  end

  def test_monom_equal_power_when_powers_are_equal
    m1 = Monom.new(2, 'x', 5)
    m2 = Monom.new(3, 'x', 5)

    assert m1.equal_power? m2
  end

  def test_monom_equal_power_when_powers_are_not_equal
    m1 = Monom.new(2, 'x', 5)
    m2 = Monom.new(3, 'x', 6)

    assert_equal false, m1.equal_power?(m2)
  end

  def test_adding_monoms_with_equal_var_and_power
    m1 = Monom.new(1, 'x', 2)
    m2 = Monom.new(2, 'x', 2)
    expected = Monom.new(3, 'x', 2)

    assert_equal expected, m1 + m2
  end

  def test_adding_constants
    m1 = Monom.constant(2)
    m2 = Monom.constant(3)
    expected = Monom.constant(5)

    assert_equal expected, m1 + m2
  end

  def test_derivate_constant
    m1 = Monom.constant(1)
    expected = Monom.constant(0)

    assert_equal expected, m1.derivate
  end

  def test_derivate_power_equal_to_1
    m1 = Monom.new(5, 'x', 1)
    expected = Monom.constant(5)

    assert_equal expected, m1.derivate
  end

  def test_standard_derivate
    m1 = Monom.new(2, 'x', 5)
    expected = Monom.new(10, 'x', 4)

    assert_equal expected, m1.derivate
  end

  def test_monom_parse_with_all_parts
    input = '2*x^5'
    expected = Monom.new(2, 'x', 5)

    assert_equal(expected, Monom.parse(input))
  end

  def test_monom_parse_with_more_than_1_digit_coeff_and_power
    input = '22*x^55'
    expected = Monom.new(22, 'x', 55)

    assert_equal(expected, Monom.parse(input))
  end

  def test_monom_parse_with_power_1
    input = '2*x'
    expected = Monom.new(2, 'x', 1)

    assert_equal expected, Monom.parse(input)
  end

  def test_monom_parse_when_is_only_var
    input = 'x'
    expected = Monom.new(1, 'x', 1)

    assert_equal expected, Monom.parse(input)
  end

  def test_monom_parse_constant
    input = '2'
    expected = Monom.constant(2)

    assert_equal expected, Monom.parse(input)
  end

  def test_monom_parse_constant_with_more_than_1_digit
    input = '12345'
    expected = Monom.constant(123_45)

    assert_equal expected, Monom.parse(input)
  end
end

class TestPolynomial < Minitest::Test
  def test_empty_polynomial_to_s
    p = Polynomial.new
    assert_equal '', p.to_s
  end

  def test_empty_polynomial_to_a
    p = Polynomial.new
    assert_equal [], p.to_a
  end

  def test_polynomial_to_a_with_one_monom
    p = Polynomial.new
    m = Monom.new(2, 'x', 5)

    p << m

    assert_equal [m], p.to_a
  end

  def test_polynomial_to_s_with_monoms
    p = Polynomial.new
    p << Monom.new(2, 'x', 5)
    p << Monom.new(3, 'x', 2)
    p << Monom.new(5, 'x', 1)

    expected = '2*x^5 + 3*x^2 + 5*x'

    assert_equal expected, p.to_s
  end

  def test_polynomial_derivative
    p = Polynomial.new
    p << Monom.new(2, 'x', 5)
    p << Monom.new(3, 'x', 2)
    p << Monom.new(5, 'x', 1)

    expected = '10*x^4 + 6*x + 5'
    assert_equal expected, p.derivate.to_s
  end

  def test_polynomial_derivative_when_we_have_0_in_the_derivative
    p = Polynomial.new
    p << Monom.new(2, 'x', 5)
    p << Monom.new(3, 'x', 2)
    p << Monom.constant(5)

    expected = '10*x^4 + 6*x'
    assert_equal expected, p.derivate.to_s
  end

  def test_polynomial_derivative_of_constants
    p = Polynomial.new
    p << Monom.constant(5)

    expected = '0'
    assert_equal expected, p.derivate.to_s
  end

  def test_polynomial_parse_to_equal_a_polynomial
    input = '2*x^3+x'
    expected = Polynomial.new Monom.new(2, 'x', 3), Monom.new(1, 'x', 1)

    assert_equal expected, Polynomial.parse(input)
  end

  def test_polynomial_parse_to_get_the_right_string
    input = '2*x^2 + x^2'
    expected = '3*x^2'

    assert_equal expected, Polynomial.parse(input).to_s
  end
end
