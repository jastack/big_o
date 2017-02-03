def windowed_max_range(array, window_size)
  max_range = nil

  (0..array.length - window_size).each do |i|
    windowed_array = array[i...i + window_size]
    min = windowed_array.min
    max = windowed_array.max
    max_range = max - min if max_range.nil? || max - min > max_range
  end

  max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8

# Queue
class MyQueue
  def initialize
    @store = []
  end

  def enqueue(el)
    @store << el
    el
  end

  def dequeue
    @store.shift
  end

  def peek
    @store[0]
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end
end

class MyStack
  def initialize
    @store = []
  end

  def pop
    @store.pop
  end

  def push(el)
    @store << el
    el
  end

  def peek
    @store[-1]
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end
end

class StackQueue
  def initialize
    @store = MyStack.new
    @store_reverse = MyStack.new
  end

  def enqueue(el)
    @store.push(el)
    el
  end

  def dequeue
    (@store.size).times do
      @store_reverse.push(@store.pop)
    end

    @store_reverse.pop

    (@store_reverse.size).times do
      @store.push(@store_reverse.pop)
    end
  end
end
