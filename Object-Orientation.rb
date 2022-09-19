#  .new helps to instantiate
class Dog
    def bark
      puts "Woof!"
    end
    def species
        puts "Dog species"
    end
  end
  
fido = Dog.new
fido.bark
fido.species

# Complete the following tasks to get the rests of the tests passing:

    # 1. Add an instance method #sit to your Dog class that will puts "The Dog is sitting".
    # 2. Define a Person class in lib/person.rb
    # 3. Add an instance method #talk to your Person class that will puts "Hello World!"
    # 4. Add an instance method #walk to your Person class that will puts "The Person is walking".

class Dog
    def sit
        puts "The Dog is sitting"
    end
end

class Person
    def talk
        puts "The Person is talking"
    end
    def walk
        puts "The Person is walking"
    end
end

# *****************************************************************************************
# Implementing Instance Variables

class Dog

    def name=(dogs_name)
      @@this_dogs_name = dogs_name
    end
  
    def name
      @@this_dogs_name
    end
  end
  
  lassie = Dog.new
  lassie.name = "Lassie"
  
  puts lassie.name
  

# ****************************************************************************************
# Defining Getter and Setter Methods

class Dog
    # setter method
    def name=(value)
      @name = value
    end
  
    # getter method
    def name
      # access the data from the @name instance variable and return it
      @name
    end
  end
  
  odie = Dog.new
  odie.name = "Odie"
  
  # call the Dog#name method
  puts odie.name
  
# ****************************************************************************************
# Attribute Readers and Writers
class Dag
  attr_reader :name
  attr_writer :name
end

chuhuahua = Dag.new
chuhuahua.name = "Jonny"
puts chuhuahua.name

# 

class Person
  attr_reader :first_name, :last_name

  def name=(full_name)
    first_name, last_name = full_name.split
    @first_name = first_name
    @last_name = last_name
  end

  def name
    "#{@first_name} #{@last_name}".strip
  end

end

jay_z = Person.new
jay_z.name = "Allan Ngoma"

puts jay_z.first_name


puts jay_z.last_name

puts jay_z.name


# ------------Test
# Define a class called Cat.
    # 1. Use the attr_accessor macro to create a setter and getter method for a cat's name.
    # 2. Write a method, #meow, that outputs "meow!" to the terminal using the puts method
    # when called on an instance of Cat.

# *************************************************************************************
# If we want each instance of our class to be created with certain data, we must define an #initialize method.
# The #initialize Method - is a method that is called automatically whenever .new is used.
# When .new is called, Ruby will automatically invoke the #initialize method and forward 
# the argument (or arguments) from .new to #initialize.
class Dog
  attr_reader :breed
  def initialize(breed)
    @breed = breed
  end
end

boni = Dog.new("Bonito")
puts boni.breed 

# ***************Test
# 1. Person#initialize with a Name
#     Define a Person class in. In the class,
#     define an #initialize method that accepts an argument for the person's name. 
#     That argument should be stored within a @name instance variable.

# 2. Dog#initialize with Name and Breed defaulting to "Mutt"
#     Define a Dog class in lib/dog.rb. In the class, define an #initialize
#     method that accepts an argument for the dog's name. That argument should
#     be stored within a @name instance variable.

#     Additionally, Dog#initialize should accept a second optional argument for 
#     the dog's breed stored in an instance variable @breed. When no breed is 
#     provided, it should default to "Mutt".

# 1.

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

persona = Person.new("Allan")
puts persona.name

# *****************************************************************************8
class Dog

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def bark
    "Woofs!"
  end

end

new_dog = Dog.new("Fido")
puts "The dogs name is #{new_dog.name} and it's #{new_dog.bark}"