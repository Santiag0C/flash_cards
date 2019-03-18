require 'pry'
require './lib/turn'
class Round
  attr_reader :deck, :turns, :position, :number_correct, :card_num
  def initialize(deck)
    @deck = deck
    @turns = []
    @num_of_cards = @deck.cards.length
    @position = 0
    num = @position
    @number_correct = 0
    @correct_cards = []
    @card_num = num + 1
  end
  def add_num
    @card_num += 1
  end
  #???????????
  def current_card
    @deck.cards[@position]
  end
#??????
  def take_turn(guess)
    turn = Turn.new(guess, current_card)
    @turns << turn
    if turn.correct?
      @number_correct += 1
      @correct_cards << current_card.category
      @position += 1
      turn.feedback
    elsif turn.correct? == false
      @position += 1
      turn.feedback
    end
  end

  def number_correct_by_category(category)
    count = 0
    @correct_cards.each do |card|
      if category == card
        count += 1
      end
    end
    count
  end

  def percent_correct
    (@number_correct.to_f/@turns.count).round(4) * 100
  end

  def percent_correct_by_category(category)
    correct = 0
    incorrect = 0
    @turns.each do |card|
      if card.guess == card.card.answer && card.card.category == category
        correct += 1
      elsif card.guess != card.card.answer && card.card.category == category
        incorrect += 1
      end
    end
    num_de_cartas = correct + incorrect
    (correct.to_f/num_de_cartas).round(3) * 100
  end
end
