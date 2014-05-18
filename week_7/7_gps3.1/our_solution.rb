#As a user, we want to be able to store our list for later use
#As a user, we want to be able to see the list printed out in its entirety
#As a user, we want to be able to check items off the list, effectively removing them from the list
#As a user, we want to be able to add items to our list


#1. Define a class, called GroceryList
#1.5 Create initialize method which takes no arguments and creates an instance variable @grocery_list
#2. Define 3 methods within GroceryList: print_list, add, remove
#3. print_list will take no arguments and return the array of grocery list items
#4. add will take 2 arguments, one string (item_name) and one optional integer (item_quantity, which will default to 1 if no value is passed in)
#4.5 within the add method, push item_name to the @grocery_list instance variable item_quantity times.
#5. 

# class Item
#   attr_accessor :name, :quantity
#   def initialize(name, quantity)
#     @name = name
#     @quantity = quantity
#   end
  
#   def purchase_item
#     @quantity = 0
#   end
  
#   def display
#     puts "Name: #{@name}, Quantity: #{@quantity}"
#   end
# end


# class GroceryList
  
#   def initialize
#     @grocery_list = []
#   end
  
#   def add(item_name, item_quantity = 1)
#     @grocery_list.push(Item.new(item_name, item_quantity))
#   end
  
#   def purchase(item_name)
#     #@grocery_list[@grocery_list.index(item_name)].purchase
#     @grocery_list.select{|item| item.name == item_name}[0].purchase_item
#   end
  
#   def print_list
#     @grocery_list.each{|item| item.display}
#   end
# end

# new_item = Item.new("spencer", 1)
# puts new_item.name

# puts new_item.display

class Item
  attr_accessor :name, :quantity
  def initialize(name, quantity)
    @name = name
    @quantity = quantity
  end
  
  def purchase_item
    @quantity = 0
  end
  
  def display
    puts "Name: #{@name}, Quantity: #{@quantity}"
  end
end


class GroceryList
  
  def initialize
    @grocery_list = []
  end
  
  def add(item_name, item_quantity = 1)
    @grocery_list.push(Item.new(item_name, item_quantity))
  end
  
  def purchase(item_name)
    @grocery_list.select{|item| item.name == item_name}[0].purchase_item    
  end
  
  def print_list
    @grocery_list.each{|item| item.display}
  end
end

def assert
  raise "Assertion failed!" unless yield
end

new_list = GroceryList.new
new_list.add("orange", 3)

new_list.purchase("orange")
assert{new_list.print_list == "Name: orange, Quantity: 0"}

new_list.add("eggs", 12)

assert{new_list.print_list == "Name: orange, Quantity: 0 \nName: eggs, Quantity: 12"}


# reflection
# This challenge proved to be a bit of an issue for us, because we couldn't really figure out how to write test/driver code to drive our development, but we are fairly confident that it is working. Also, since we were a group of 3, it was a little awkward or difficult to manage the role of navigator (we had 1 driver and 2 navigators). I think we did a good job shifting duties around, but it was a much different experience than I originally anticipated. 

