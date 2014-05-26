# U3.W8-9: Reverse Words


# I worked on this challenge by myself.

# 2. Pseudocode




# 3. Initial Solution

# def reverse_words(str)
# 	str.split.map { |word| word.reverse }.join(" ")
# end

# 4. Refactored Solution


def reverse_words(str)
	str.split.map { |word| word.reverse }.join(" ")
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
	yield ? true : false
end

puts assert { reverse_words('') == '' }
puts assert { reverse_words('beer') == 'beer'.reverse }
puts assert { reverse_words('grasshopper boots') == "#{'grasshopper'.reverse} #{'boots'.reverse}" }
puts assert { reverse_words('hello world') == 'dlrow olleh' }

# 5. Reflection 

