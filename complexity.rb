
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

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# puts my_min(list)

def largest_contiguous_subsum(list)
  possible = []
  list.each_with_index do |el, i|
    j = i
    while j < list.length
      possible << list[i..j]
      j += 1
    end
  end

  sums = []
  possible.each do |subset|
    sums << subset.inject(&:+)
  end

  sums.max
end

# list = [-7, 9, 4, 0, -5, -7, 3, 1, 0]
# p largest_contiguous_subsum(list)

#Almost worked
# def largest_contiguous_subsum(list)
#   #frontways
#   left_total_sum = list.first
#   running_sum = list.first
#   current_num = list.first
#
#   list[1..-1].each do |num|
#     current_num = num
#     running_sum += current_num
#     left_total_sum = current_num if current_num > left_total_sum
#     left_total_sum = running_sum if running_sum > left_total_sum
#   end
#
#   #backways
#   total_length = list.length
#   right_total_sum = list.last
#   running_sum = list.last
#   current_num = list.last
#
#   i = total_length - 2
#   while i >= 0
#     current_num = list[i]
#     running_sum += current_num
#     right_total_sum = current_num if current_num > right_total_sum
#     right_total_sum = running_sum if running_sum > right_total_sum
#
#     i -= 1
#   end
#
#   [left_total_sum, right_total_sum].max
#
# end

# list = [5, 3, -7]
# p largest_contiguous_subsum(list)
#
# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list)
#
# list = [-5, -1, -3]
# p largest_contiguous_subsum(list)


def largest_contiguous_subsum(list)
  total_sum = list.first
  running_sum = list.first
  # previous_num = list.first

  return list.max if list.all? { |num| num < 0 }

  list[1..-1].each do |num|
    running_sum += num
    if num > running_sum && num > total_sum
      total_sum = num
      running_sum = num
    else
      total_sum = running_sum if total_sum < running_sum
    end
  end
  total_sum
end


list = [5, 3, -7]
p largest_contiguous_subsum(list)

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)

list = [-5, -1, -3]
p largest_contiguous_subsum(list)
