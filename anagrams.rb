def first_anagram?(string, target)
  permutations = string.split("").permutation(target.length)
  words = permutations.to_a.map { |e| e.join("") }
  words.include?(target)
end

# p first_anagram?("gizmo", "sally")
# p first_anagram?("elvis", "lives")

def second_anagram?(string, target)
  string_dup = string.dup.split("")
  target_dup = target.dup.split("")

  string_dup.delete_if { |char| target_dup.include?(char) }

  string_dup.empty?
end

# p second_anagram?("gizmo", "sally")
# p second_anagram?("elvis", "lives")

def third_anagram?(string, target)
  string_array = string.split("").sort
  target_array = target.split("").sort

  target_array == string_array
end

# p second_anagram?("gizmo", "sally")
# p second_anagram?("elvis", "lives")

def fourth_anagram?(string, target)
  string_hash = Hash.new(0)
  target_hash = Hash.new(0)

  string.each_char do |char|
    string_hash[char] += 1
  end

  target.each_char do |char|
    target_hash[char] += 1
  end

  string_hash == target_hash
end

p second_anagram?("gizmo", "sally")
p second_anagram?("elvis", "lives")
