class Deck
    attr_reader :cards

    def initialize
        @cards = []
        create_deck
    end

    def create_deck
        Card.suits.each{|x| 
            Card.ranks.each{|y| 
                 @cards << Card.new(x,y)
            }
        }
    end

    def choose_card
        c = @cards.sample
        @cards.delete(c)
        c
    end

end

class Card
    attr_reader :rank, :suit
    @@suits = ["Hearts", "Clubs", "Spades", "Diamonds"]
    @@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    def initialize(suit,rank)
        @rank = rank
        @suit = suit
    end

    def self.suits
        @@suits
    end

    def self.ranks
        @@ranks
    end
end
