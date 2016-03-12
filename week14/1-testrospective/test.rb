class Test
  def self.test(name, &block)
    puts "Testing #{name}..."
    new.instance_exec(&block)
  end

  module Assertions
    def assert(expected, actual)
      unless expected == actual
        abort "[#{caller.first}] Expected #{expected.inspect}, got: #{actual.inspect}"
      end
    end

    def assert_raises(exception_class, &block)
      block.call
    rescue exception_class
      return
    rescue Exception => e
      abort "Expected to raise #{exception_class}, got #{e.class}"
    end
  end

  include Assertions
end
