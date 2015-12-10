class Panda
  protected
  def who_can_call_me
    puts "Called a private method"
  end

  public
  def call1
    who_can_call_me
  end

  def call2
    self.who_can_call_me
  end
end

# The following calls:
# Panda.new.who_can_call_me -> ERROR, NOT WORKING
# Panda.new.call1 -> WORKS, ITS OK
# Panda.new.call2 -> WORKS, ITS OK
# Panda.new.send(:who_can_call_me) -> WORKS, ITS OK
