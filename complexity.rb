
def my_min(list)
  smallest = list.first
  list.each_with_index do |el, i|
    j = i + 1
    while j < list.length
      smallest = list[j] if list[j] < smallest

      j += 1
    end

  end
  smallest
end
# 
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# puts my_min(list)

def my_min(list)
  smallest = list.first
  list.each do |el|
    smallest = el if el < smallest
  end
  smallest
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
puts my_min(list)
