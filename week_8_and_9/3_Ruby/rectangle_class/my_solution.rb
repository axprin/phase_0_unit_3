# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge with: Spencer Olson.

# 2. Pseudocode
# define area method, which returns area of rectangle
# define permiter method, which returns perimeter of rectangle/square
# define diagonal method, which returns diagonal length
# define square? method, which returns true if rectangle is a square

# 3. Initial Solution
# class Rectangle
#   attr_accessor :width, :height

#   def initialize(width, height)
#     @width  = width
#     @height = height
#   end

#   def ==(other)
#     (other.width  == self.width && other.height == self.height ) ||
#     (other.height == self.width && other.width  == self.height )
#   end

#   def area
#   	@width * @height
#   end

#   def perimeter
#   	2*@width + 2*@height
#   end

#   def diagonal
#   	Math.sqrt(@width**2 + @height**2)
#   end

#   def square?
#   	@width == @height
#   end
# end

# 4. Refactored Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
  	@width * @height
  end

  def perimeter
  	2*@width + 2*@height
  end

  def diagonal
  	Math.sqrt(@width**2 + @height**2)
  end

  def square?
  	@width == @height
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
def assert(message)
	raise message unless yield
end

rectangle = Rectangle.new(10,20)
square = Rectangle.new(20,20)

assert("Area method should be defined"){Rectangle.method_defined?(:area)}
assert("Returns the correct area of a rectangle"){rectangle.area == 200}
assert("Returns the correct area of a square"){square.area == 400}
assert("Perimeter should be defined"){Rectangle.method_defined?(:perimeter)}
assert("Returns the correct perimeter of a rectangle"){rectangle.perimeter == 60}
assert("Returns the correct perimeter of a square"){square.perimeter == 80}
assert("Diagonal method should be defined"){Rectangle.method_defined?(:area)}
assert("Returns the correct Diagonal of a rectangle"){rectangle.diagonal == 22.360679774997898}
assert("Returns the correct Diagonal of a square"){square.diagonal == 28.284271247461902}
assert("Square? method should be defined"){Rectangle.method_defined?(:square?)}
assert("Square? of a rectangle should be false"){rectangle.square? == false}
assert("Square? of a rectangle should be true"){square.square?}


# 5. Reflection 
# This challenege proved to be fairly elementary. We solidified our knoweledge of using assert statements, creating instance methods and referring to instance variables within our methods. We also researched the attr_accessor statement and were able to better understand it's functionlity and application. 