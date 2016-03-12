class Ampersand < BasicObject
  module PreserveBuiltinBehaviour
    Undefined = Object.new

    def &(other = Undefined)
      if other == Undefined
        Ampersand.new(self)
      else
        super
      end
    end
  end

  def initialize(obj)
    @obj = obj
  end

  def method_missing(name, *args, &block)
    if @obj.nil?
      nil
    else
      @obj.send(name, *args, &block)
    end
  end
end

class Object
  def &
    Ampersand.new(self)
  end
end

[Fixnum, Bignum, NilClass, TrueClass, FalseClass].each do |klass|
  klass.prepend(Ampersand::PreserveBuiltinBehaviour)
end
