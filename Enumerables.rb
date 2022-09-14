# Iterating through an array
upcased = ["this", "is", "Ruby"].map do |str, index|
    str.upcase
    puts index
  end
  
  pp upcased
  
  for i,index in ["this", "is", "Ruby"] do
    a = []
    p a.append(i.upcase)
    puts index
  end
  
  
  # Iterating through an hash
  book = { title: "The Hobbit", author: "J. R. R. Tolkien", published: 1937 }
  book.each do |key, value|
    puts "Key: #{key}"
    puts "Value: #{value}"
  end
  
  for i, s in book do
    a = []
    p a.append("#{i} -  #{s}")
  end
  
  # Enumerables: Common Methods
  
  # #each
  ["this", "is", "Ruby"].each do |i|
    p i
  end
  #map / #collect
  ["this", "is", "Ruby"].map do |i|
    puts i
  end
  books = book.to_a
  books.collect do |a|
    a
  end
  
  #filter / #select / #find_all
  words = ["give", "it", nil, "your", nil, "best", "shot"]
  p words.filter do |word|
    if word != nil
      word.capitalize
    end
  end
  
  # ************************************************
  # Tasks
  # ************************************************
  
  # 1. Define a method #get_names, takes an array of spicy_foods and returns an array of strings with the names of each spicy food.
  
  def spicy_foods
    [
      { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
      { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
      { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },{ name: 'Kachubari', cuisine: 'swahili', heat_level: 10 }
    ]
  end
  # p spicy_foods
  def get_names (arr)
    arr.map do |i|
      puts i[:name]
    end  
  end
  get_names(spicy_foods)
  
  # 2. Define a method #spiciest_foods that an array of spicy_foods and returns an array of hashes where the heat level of the food is greater than 5.
  def spiciest_foods arr
    arr.map do |i|
      if i[:heat_level] >= 5
        puts i
      end
    end
  end
  spiciest_foods(spicy_foods)
  
  # 3. Define a method #print_spicy_foods that takes an array of spicy_foods and output to the terminal each spicy food in the following format using #puts: Buffalo Wings (American) | Heat Level: 🌶🌶🌶.
  
  def spiciest_foods arr
    arr.map do |i|
      h_level = "🌶" * i[:heat_level]
      if i[:heat_level] >= 5
        puts ("#{i[:name]} (#{i[:cuisine]}) | Heat Level: #{h_level} ")
      end
    end
  end
  spiciest_foods(spicy_foods)
  
  # **********************************************
  
  # Enumerables: Iterating Over Nested Hashes
  
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
  
  contacts.each do |person, data|
    puts "#{person}: #{data}"
  end
  
  
  
  
  
  
  
  
  
  