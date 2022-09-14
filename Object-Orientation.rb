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
    