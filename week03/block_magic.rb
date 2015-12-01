def each(data)
  index = 0
  while index < data.length
    yield data[index]
    index += 1
  end
end

def each2(data, &block)
  index = 0
  while index < data.length
    block.call(data[index])
    index += 1
  end
end

def transform_value(x)
  yield x
end

def map(items)
  index = 0
  result = []
  while index < items.length
    value = yield items[index]
    result << value
    index += 1
  end

  result
end
