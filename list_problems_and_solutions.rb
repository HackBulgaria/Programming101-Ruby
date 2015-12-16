class Weeks
  def self.list_weeks
    Dir.glob('week*/').sort.map do |week_name|
      WeekFolder.new week_name.chop # Trailing /
    end
  end
end

class WeekFolder
  attr_reader :name, :problems

  def initialize(name)
    @name = name
    @problems = []

    gather_problems
  end

  def to_s
    @name
  end

  def inspect
    to_s
  end

  private

  def gather_problems
    @problems = Dir.glob("#{@name}/[0-9]*").sort.map do |problem|
      Problem.new problem
    end
  end
end

class Problem
  attr_reader :path, :solutions

  def initialize(path)
    @path = path
  end

  def solution?
    solutions = Dir.glob("#{@path}/*solution*")

    @solutions = solutions unless solutions == []

    solutions.length > 0
  end

  def to_s
    @path
  end
end


Weeks.list_weeks.each do |week|
  puts "Looking at: #{week}"

  week.problems.each do |problem|
    puts "    #{problem}: #{problem.solution?}"
  end
end
