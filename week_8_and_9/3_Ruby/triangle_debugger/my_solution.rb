# U3.W8-9: Triangle Debugger


# I worked on this challenge [by myself, with: ].


# 1. Original Solution

# def valid_triangle?(a, b, c)
#   sum = 0

#   if a != 0 || b != 0 || c != 0
#     if a >= b
#       largest = a
#       sum += b
#     else largest = b
#       sum += a
#     end
#     if c > largest
#       sum += largest
#       largest = c
#     else sum += c
#     end
#     if sum > largest
#       return true
#     else return false
#     end
#     else return false
#   end
# end

# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error? expects 3 arguments
# * what is the exact line number the error is appearing? 8
# * before you fix the bug, what do you think is causing the error? We are telling it will will pass in 4 arguments

# --- Bug 2 ---
# * what is the exact description of the error? returns true for an equlateral triangle
# * what is the exact line number the error is appearing? 14
# * before you fix the bug, what do you think is causing the error?

# --- Bug 3 ---
# * what is the exact description of the error?
# * what is the exact line number the error is appearing?
# * before you fix the bug, what do you think is causing the error?


# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a, b, c)
  sides = [a, b, c]
  return false if sides.any? { |x| x==0 }
  sides.sort!
  sides[0] + sides[1] >= sides[2]? true : false
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE





# 5. Reflection 