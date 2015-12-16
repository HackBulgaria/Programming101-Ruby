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
  attr_reader :name, :path

  def initialize(path)
    @name = File.basename(path)
    @path = path
    @solutions = []

    solutions = Dir.glob("#{@path}/*solution*")
    @solutions = solutions unless solutions == []
  end

  def solutions
    return "None" unless solution?
    @solutions
  end

  def solution?
    @solutions.length > 0
  end

  def to_s
    @name
  end
end

TABLE_HEADER = %(
| Week | Problem | Solution |
| ---- |:-------:| --------:|
)

table = TABLE_HEADER

Weeks.list_weeks.each do |week|
  week.problems.each do |problem|
    solutions = problem.solutions

    if solutions.respond_to?(:each)
      solutions = solutions.map do |solution|
        "[#{File.basename(solution)}](#{solution})"
      end.join(', ')
    end

    row = "| #{week} | [#{problem}](#{problem.path}) | #{solutions} |\n"
    table += row
  end
end

puts table
