require 'pry'

class Deck 
    attr_accessor :cards

    @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @@suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

    def initialize
        @cards = []
        create_cards
    end

    def create_cards
        @@suit.each do |suit|
            @@rank.each do |rank|
                @cards << Card.new(suit, rank)
            end
        end
    end

    def choose_card
        @cards.pop
    end

end


class Card 
    attr_reader :suit, :rank

    def initialize(suit,rank)
        @suit = suit
        @rank = rank
    end
  
end

# binding.pry
