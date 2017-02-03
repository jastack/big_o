def bad_two_sums?(arr, target_sum)
  arr.each_with_index do |num, i|
    j = i + 1
    while j < arr.length
      return true if num + arr[j] == target_sum
      j += 1
    end
  end
  false
end

#O(n^2) -- Time complexity

# arr = [0, 1, 5, 7]
# p bad_two_sums?(arr, 6)
# p bad_two_sums?(arr, 10)


# def okay_two_sum?(arr, target_sum)
#   sorted = arr.sort
#
#   sorted.each do |num|
#     new_target = target_sum - num
#     return true if arr.bsearch{|x| x == new_target}
#   end
#   false
# end
#
# arr = [0, 1, 5, 7]
# p bad_two_sums?(arr, 6)
# p bad_two_sums?(arr, 10)

def two_sum?(arr,target_sum)
  hash = {}
  arr.each do |num|
    hash[num] = num
  end

  arr.each do |num|
    return true if hash[target_sum - num] != nil
  end
  false
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6)
p two_sum?(arr, 10)
