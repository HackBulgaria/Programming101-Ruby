class Collection
  def initialize(*data)
    @data = data
  end

  def each
    index = 0
    while index < @data.length
      yield @data[index]
      index += 1
    end
  end
end
