class Stack
    def initialize
      @stack= []
    end

    def push(el)
        @stack << el
      # adds an element to the stack
    end

    def pop
        @stack.pop
      # removes one element from the stack
    end

    def peek
        @stack[-1]
      # returns, but doesn't remove, the top element in the stack
    end
  end

class Queue

    def initialzie
        @queue = []
    end

    def enqueue(el)
        @queue<<el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end

end

class Map

    def initialize(key,value)
        @map = []
        @map << [key,value]
    end

    def set(key, value)
        exist= false
        @map.each do |el|
         if el[0] == key
                el[1] = value
                exist = true
         end
         @map << [key,value] if exist == false
    end

    def get(key)
        @map.each do |el|
            if el[0] == key
                return  el[1]
            end
            
        end
        nil
    end

    def delete(key)
        @map.each_with_index do |el,i|
            if el[0] == key
                @map.delet_at(i)
            end
        end
    end


    def show
        @map.each do |el|
            p el
        end
    end
            

end