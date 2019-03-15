require 'pry'
require './lib/turn'
class Round
  attr_reader :deck, :turns
  def initialize(deck)
    @deck = deck
    @turns = []
    @num_of_cards = @deck.cards.length
    @position = 0

    #binding.pry
  end
  #???????????
  def current_card
    @deck.cards[@position]
  end
#??????
  def take_turn(guess)
    turn = Turn.new(guess, current_card)
  end
end
