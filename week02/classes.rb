class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end

  def name=(name)
    @name = name
  end

  def age=(age)
    @age = age
  end
end

def print_information(person)
  puts "#{person.name} is #{person.age} years old"
end

ivan = Person.new('Ivan', 21)
maria = Person.new('Maria', 21)

print_information ivan
print_information maria

ivan.name = 'Ivaylo'
ivan.age = 22

print_information ivan
