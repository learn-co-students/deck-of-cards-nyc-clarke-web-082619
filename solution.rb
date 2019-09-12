class Deck
    attr_reader :cards
  
    def initialize
    @cards = []
      ["Hearts", "Clubs", "Diamonds", "Spades"].each do |suit|
        ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"].each  do |rank|
          @cards << Card.new(suit, rank)
        end
      end
  end

  def choose_card
    @cards.delete(@cards.sample)
  end

end

class Card
  attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end
