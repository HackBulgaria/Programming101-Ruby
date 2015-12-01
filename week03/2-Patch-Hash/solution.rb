class Object
  def tap
    yield self
    self
  end
end

class Hash
  def pick3(*keys)
    Hash.new.tap do |h|
      each do |k, v|
        h[k] = v if keys.include? k
      end
    end
  end

  def pick2(*keys)
    select do |k, v|
      keys.include? k
    end
  end

  def pick(*keys)
    result = {}

    each do |k, v|
      result[k] = v if keys.include? k
    end

    result
  end

  def except2(*keys)
    reject { |k, v| keys.include? k }
  end


  def except(*keys)
    result = {}

    each do |k, v|
      result[k] = v unless keys.include? k
    end

    result
  end

  def compact_values
    select { |key, value| value }
  end

  def defaults

  end
end
