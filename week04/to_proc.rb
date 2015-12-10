class Symbol
  def my_to_proc
    lambda do |object, *args|
      p self
      p object
      p args
      object.send(self, *args)
    end
  end
end
