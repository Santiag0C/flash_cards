require 'pry'
class Deck
  attr_reader :cards, :count
  def initialize(cards)
    @cards = cards
    @count = cards.count
  end

  def cards_in_category(category)
    cards_in_category = []
    @cards.find_all do |card|
      card.category == category
      # if category == card.category
      #   cards_in_category << card
      # else
      #   cards_in_category
      # end
    end
    #cards_in_category
  end
end
