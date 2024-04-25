# Creating a method
def my_name
    "Joe Smith"
  end
  
  puts my_name    #=> "Joe Smith"
  
  # Methods Names
  method_name      # valid
  _name_of_method  # valid
  # 1_method_name    # invalid
  method_27        # valid
  # method?_name     # invalid
  method_name!     # valid
  # begin            # invalid (Ruby reserved word)
  begin_count      # valid
  
  # Parameters and arguments
  def greet(name)
    "Hello, " + name + "!"
  end
  
  puts greet("John") #=> Hello, John!
  
  # Default parameters
  def greet(name = "stranger")
    "Hello, " + name + "!"
  end
  
  puts greet("Jane") #=> Hello, Jane!
  puts greet         #=> Hello, stranger!
  
  # Returns
  def even_odd(number)
    if number % 2 == 0
      "That is an even number."
    else
      "That is an odd number."
    end
  end
  
  puts even_odd(16) #=>  That is an even number.
  puts even_odd(17) #=>  That is an odd number.
  
  def my_name
    "Joe Smith"
    # "Jane Doe"
  end
  
  puts my_name #=> "Joe Smith"
  
  def even_odd(number)
    unless number.is_a? Numeric
      return "A number was not entered."
    end
  
    if number % 2 == 0
      "That is an even number."
    else
      "That is an odd number."
    end
  end
  
  puts even_odd(20) #=>  That is an even number.
  puts even_odd("Ruby") #=>  A number was not entered.
  
  # Chaining methods
  phrase = ["be", "to", "not", "or", "be", "to"]
  
  puts phrase.reverse.join(" ").capitalize
  #=> "To be or not to be"
  
  # Predicate methods
  puts 5.even?  #=> false
  puts 6.even?  #=> true
  puts 17.odd?  #=> true
  
  puts 12.between?(10, 15)  #=> true
  
  # Bang methods
  whisper = "HELLO EVERYBODY"
  
  puts whisper.downcase   #=> "hello everybody"
  puts whisper            #=> "HELLO EVERYBODY"
  puts whisper.downcase!  #=> "hello everybody"
  puts whisper            #=> "hello everybody"
  