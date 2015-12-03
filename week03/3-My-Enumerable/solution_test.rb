require 'minitest/autorun'

require_relative 'solution'

class SolutionTest < Minitest::Test
  class Collection
    include MyEnumerable

    def initialize(*data)
      @data = data
    end

    def each(&block)
      @data.each(&block)
    end

    def ==(otherCollection)
      @data == otherCollection.data
    end

    def get(index)
      return @data[index]
    end
  end

  def test_map
    collection = Collection.new(*1..5)

    assert_equal [2, 3, 4, 5, 6], collection.map(&:succ)
  end

  def test_filter
    collection = Collection.new(*1..10)

    assert_equal [1, 3, 5, 7, 9], collection.filter(&:odd?)
  end

  def test_reject
    collection = Collection.new(*1..10)

    assert_equal [1, 3, 5, 7, 9], collection.reject(&:even?)
  end

  def test_reduce
    collection = Collection.new(*1..10)

    assert_equal 55, collection.reduce(0) { |sum, n| sum + n }
  end

  def test_include?
    collection = Collection.new(*1..10)

    assert_equal true, collection.include?(5)
  end


  def test_any?
    collection = Collection.new(*1..10)

    assert collection.any?(&:even?)
  end

  def test_all?
    collection = Collection.new(*1..10)

    assert collection.all? { |x| x > 0 }
  end

  def test_size
    collection = Collection.new(*1..10)

    assert_equal 10, collection.size
  end

  def test_count_with_element_nil
    collection = Collection.new(*1..10)

    assert_equal 10, collection.count
  end

  def test_count_with_non_nil_element
    collection = Collection.new(*1..10)

    assert_equal 1, collection.count(10)
  end

  def test_min_with_numbers
    collection = Collection.new(*1..10)
    assert_equal 1, collection.min
  end

  def test_min_by
    collection = Collection.new(*['apple', 'orange', 'horse', 'ruby'])
    assert_equal 'ruby', collection.min_by { |x| x.length }
  end

  def test_max
    collection = Collection.new(*1..10)
    assert_equal 10, collection.max
  end

  def test_max_by
    collection = Collection.new(*['apples', 'oranges', 'horse', 'ruby'])
    assert_equal 'oranges', collection.max_by { |x| x.length }
  end

  def test_take_in_standard_case
    collection = Collection.new(*1..10)
    assert_equal [1, 2, 3, 4, 5], collection.take(5)
  end

  def test_take_with_0
    collection = Collection.new(*1..10)
    assert_equal [], collection.take(0)
  end

  def test_take_with_larger_than_size_number
    collection = Collection.new(*1..2)
    assert_equal [1, 2], collection.take(5)
  end

  def test_take_while_with_some_elements_matching
    collection = Collection.new(*[0, 0, 0, 1, 2, 3])
    assert_equal [0, 0, 0], collection.take_while { |x| x.zero? }
  end

  def test_take_with_no_elements_matching
    collection = Collection.new(*[2, 4, 6, 3])
    assert_equal [], collection.take_while {|x| x.odd? }
  end

  def test_drop_in_standard_case
    collection = Collection.new(*1..10)
    assert_equal [6, 7, 8, 9, 10], collection.drop(5)
  end

  def test_drop_with_0
    collection = Collection.new(*1..10)
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], collection.drop(0)
  end

  def test_take_with_larger_than_size_number
    collection = Collection.new(*1..2)
    assert_equal [1, 2], collection.take(5)
  end

  def test_drop_while_with_some_elements_matching
    collection = Collection.new(*[0, 0, 0, 1, 2, 3])
    assert_equal [1, 2, 3], collection.drop_while { |x| x.zero? }
  end

  def test_drop_with_no_elements_matching
    collection = Collection.new(*[2, 4, 6, 3])
    assert_equal [2, 4, 6, 3], collection.drop_while {|x| x.odd? }
  end
end
