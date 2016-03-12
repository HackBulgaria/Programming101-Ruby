require_relative 'test'
require_relative 'meta'

class MetaTest < Test
  setup do
    @user = Object.new
  end

  teardown do
    Clean.current_table
  end

  test "expect random objects to be callable and return nil" do
    assert_raises NoMethodError do
      user.account
    end

    assert_raises NoMethodError do
      user.account
    end
  end

  test "expect Rado to nyama preateli" do
    rado = Object.new.tap do |obj|
      obj.define_singleton_method(:friends) { nil }
    end

    assert nil, rado.&.friends.&.count
  end

  test "expect nil to be callable and return nil" do
    assert nil, nil.&.asdasd
  end

  test "expect builtin behaviour to still work" do
    assert false, true & false
    assert true, true & true
    assert false, nil & true
    assert false, false.&(nil)
  end
end
