require 'pry'

# Question 1
# Create a class called Dog. It should have, as attributes, name, breed, and age.
# Make all of those attributes read-only.

class Dog
  attr_reader :name, :breed, :age
  def initialize(name,breed,age)
    @name = name
    @breed = breed
    @age = age
  end
end

# Question 2
# Create a new Dog object.

maverick = Dog.new("Maverick","Hound",3)

# Question 3
# Create a Person class, with attributes name, age, and location.
# It should set all three attributes when you create a new Person.
# Name and location should be writeable, but age should be read-only.

class Person
  attr_reader :age
  attr_accessor :name, :location
  def initialize(name,age,location)
    @name = name
    @age = age
    @location = location
  end
end

# Question 4
# Create a new Person object using parameters "Dave", 32, and "Ohio".
# Then, set that Person's location to "Somerville"
dave = Person.new("Dave",32,"Ohio")
dave.location = "Somerville"

# Question 5
# Create another class called Developer that inherits from Person.
# Give it a new private method called 'write_code', which prints out "TYPE TYPE TYPE".
# Also give it a new public method called 'hire_for_job', which calls 'write_code'

class Developer < Person
  def hire_for_job
    write_code
  end

  private
  def write_code
    3.times {print "TYPE "}
  end
end

binding.pry
