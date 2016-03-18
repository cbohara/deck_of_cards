# Objects are instances of a class
# Objects contain data and functions that do work on this data
class Card

  # attr_reader allows us to have access the value of @rank and @suit AKA getter function
  # attr_writer allows us to reassign the values of @rank and @suit AKA setter function
  # both the getter and the setter are combined in attr_accessor
  attr_accessor :rank, :suit

  # we add a special method inside the class- initialize AKA constructor
  # initializer will set up the different variables that will be referenced in different functions
  def initialize(rank, suit)
    # instance variables start with an @ sign 
    # allows us to store the values beyond when the initialize functions ends
    @rank = rank
    @suit = suit
  end

  # we can build functions within the class that do work on the data
  # can only call this function when we have an instance of it
  # REGULAR METHOD
  def output_card
    # allows us to display string that grabs the variables #{ } with this syntax
    # puts "#{@rank} of #{@suit}"
    # another alternative using self
    puts "#{self.rank} of #{self.suit}"
  end

  # CLASS LEVEL/SELF METHOD
  def self.random_card
    # allows us to draw random cards from 0-10 (we want 1-10) with the suit of spades
    Card.new(rand(10), :spades)
    # need to build out more logic to make this work fully
  end

end


class Deck
  def initialize
    # create empty array
    @cards = []
    # << pushes the given object to the end of the this array
    @cards << Card.new(10, :spades)
    @cards << Card.new(9, :diamonds)
  end

  def shuffle
    # .shuffle! is an array method
    @cards.shuffle!
  end

  def output
    @cards.each do |card|
      # trigger output_card method from the Card class
      card.output_card
    end
  end
end


# BUILDING A SPECIFIC OBJECT = INSTANTIATING AN OBJECT 
card = Card.new(10, :spades)
# uses setter function to reassign rank from 10 to 9
card.rank = 9
card = Card.random_card
# access object function
card.output_card



# BUILDING A SPECIFIC INSTANCE OF A DECK
# when I reach this line of code, it triggers the initializer method to create a deck of cards
# that currently only has 2 cards
deck = Deck.new
# call the shuffle method for the deck object
deck.shuffle
# call the output method for the deck object
deck.output


# ENCAPSULATION
# encapsulation allows us to keep our data and methods private from other programmers/users
#   assume other programmers are going to use your code in a way that don't want you too
#   assume other programmers will break your code

# keeping code contained in classes allows us to abstract away the functions

# by default, you can't change @variables outside the class
#   this allows us to keep our code private

# CLASS LEVEL METHODS
# want to be able to build a method, but don't want to tie it to a specific case

# within the context of a class, we do not have access to a particular card 
# so we cannot have card.rank within our class

# SELF
# instead of tying this function to a specific card, is accessible to all cards
# we need to use self as a placeholder for the object outside that is being built outside of the class
# self within a method in the class will have access a specific object

# HOW CAPITAL P IS LIKE A CAR FACTORY
# Some people use the analogy of the capital P/self way as "A car factory", 
# and the lowercase p is a "car".  

# The "Factory" is a more abstract concept that allows you to "build specific cars", 
# but a specific car can do car things: drive, beep, go in reverse.  
# The car factory cannot do any of those things, 
# but it can help you build a car, which can do those things.

# CLASSES CAN WORK TOGETHER!

# OOP ADVANTAGE
# How can I break up this functionality so each piece has a certain role?
# Add methods and data in objects to build out the whole program in a more organized manner


# Do we need to build an instance of the Card class within the Desk class in order to have access to the 
# Card classes' methods? 






