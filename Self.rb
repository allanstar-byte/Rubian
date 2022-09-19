# The keyword self is a special variable that points to the object that "owns" 
# the currently executing code.

# # self in Ruby is used in a similar way to this

class Dog
    attr_accessor :name, :owner
    def initialize(name)
        @name = name
        # @owner = owner
    end
end
fido = Dog.new("Boni")
puts fido.name
puts fido.owner = "Allan"
fido.owner


# Let's recator this code
class Dog
    attr_accessor :name, :owner
  
    def initialize(name)
      @name = name
    end
  
    def bark
      "Woof!"
    end
  
    def get_adopted(owner_name)
      self.owner = owner_name
    end
  
  end

fido = Dog.new("Fido")
fido.get_adopted("Petermin")
puts fido.owner