require 'set'

class Graph
  def initialize
    @graph = {}
  end

  def add_vertex(vertex_name)
    return if @graph.key? vertex_name

    @graph[vertex_name] = []
  end

  def connect(v1, v2)
    add_vertex(v1) unless @graph.key? v1
    add_vertex(v2) unless @graph.key? v2

    @graph[v1] << v2
    @graph[v2] << v1
  end

  # This BFS yields each vertex and its level that can be reached from start_vertex
  def bfs(start_vertex)
    q = Queue.new
    visited = Set.new
    path = { start_vertex => nil }

    q << [0, start_vertex]
    visited << start_vertex

    until q.empty?
      level, current = q.pop
      yield level, current if block_given?

      unvisited = @graph[current].select { |v| !visited.include? v }

      unvisited.each do |v|
        path[v] = current
        q << [level + 1, v]
        visited << v
      end
    end

    path
  end

  def connected?(v1, v2)
    bfs(v1) do |_level, node|
      return true if node == v2
    end

    false
  end

  def path_between(v1, v2)
    path_table = bfs(v1)
    path = []

    return false unless path_table.key? v2
    current = v2

    until current.nil?
      path << current
      current = path_table[current]
    end

    path.reverse
  end
end

g = Graph.new

g.connect('1', '2')
g.connect('2', '3')
g.connect('1', '3')
g.connect('3', '4')
g.connect('3', '5')
g.connect('1', '5')

g.add_vertex('6')

g.bfs '1' do |level, node|
  puts "Level: #{level} for node: #{node}"
end

puts g.connected? '1', '4'
puts g.connected? '1', '6'

puts g.path_between('1', '4').join ' -> '
