class Symbol
  def my_to_proc
    lambda do |object, *args|
      p self
      p object
      p args
      object.public_send(self, *args)
    end
  end
end
