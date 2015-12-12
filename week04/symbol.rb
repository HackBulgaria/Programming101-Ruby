class Hash
  def to_proc
    lambda do |key|
      fetch key, nil
    end
  end
end

class Symbol
  def to_proc
    lambda do |x, *args|
      x.public_send self, *args
    end
  end
end
