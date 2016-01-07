def group_consecutive(items, n)
  arr = []
  while items.length > 0
    arr += [items.take(n)]
    items = items.drop(n)
  end

  arr
end

students = File.read('students').split("\n").shuffle

groups = group_consecutive(students, 2)

puts groups.map { |group| "#{group[0]} и #{group[1]}" }
