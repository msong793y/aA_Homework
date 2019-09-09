class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end


  


end

require "Set"

def bfs(node, target)

    visited = []

    queue = []
    queue << node

    until queue.empty?
        check= queue.shift

        return check if check.value == target

        visited<< check
        check.neighbors.each do |el|
            queue << el unless visited.include?(el)
        end

    end

    return nil

end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]


p  bfs(a, "b")