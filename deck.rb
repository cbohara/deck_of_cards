#Specification of the Deck
#The specification of a deck of cards is as follows:

#When a new deck is initialized (Deck.new), it will automatically store each card in an array in the class.
#There will be a shuffle method that will randomly order the array of cards in the deck.
#There will be deal method, which will return the top card from the deck, and remove it from the array.

class Card

  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

end


class Deck
  #build up every single card in the deck of cards and store it in an instance(@)variable array
  def initialize
    #create empty array to store each card
    @deckOfCards = []

    # EVENTUALLY I WANT TO TRANSFORM THIS INTO CONSTANTS
    #create array that represents all rank possibilities 
    @ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]
    #create array that represents all suit possibilities
    @suits = ["spades", "hearts", "diamonds", "clubs"]
    #loop through suits
    @suits.each do |suit|
      #loop through ranks
      @ranks.each do |rank|
        #instantiate each card object with a specific suit and rank
        #push each card object into the deckOfCards array
        @deckOfCards << Card.new(rank, suit)
      end
    end
  end

  #trigger the shuffle method in the instance(@)variable array that keeps track of the cards in the deck
  def shuffle
    @deckOfCards.shuffle!
  end

  #take the top card and pull it off the deck
  def deal
    @deckOfCards.shift
  end

end

deck = Deck.new

# invoke the shuffle method
deck.shuffle

# invoke the deal method
deck.deal




