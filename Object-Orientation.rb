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


# The #initialize Method
