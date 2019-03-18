
require './lib/round'
require './lib/deck'
require './lib/card'
require './lib/turn'
require 'pry'


card_1 = Card.new("What is 5 + 5?", "10", :Math)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Waht is 5x5?","25", :Math)
card_4 = Card.new("What is the resistance that an object encounters when moving over another?", "Friction", :STEM)
deck = Deck.new([card_1, card_2, card_3, card_4])
round = Round.new(deck)
puts ""
puts "Welcome! You're playing with #{deck.count} cards."
while round.card_num != deck.count + 1
  puts "-------------------------------------------------"
  puts "This is card number #{round.card_num} out of #{deck.count}."
  puts round.current_card.question
  gess = gets.chomp
  puts ""
  puts round.take_turn(gess)
  round.add_num
end
puts "***************--------Game-Over--------****************"
puts ""
arr = []
deck.cards.each do |card|
  arr << card.category
end
arr.uniq!
puts "You got #{round.number_correct} correct guesses out of #{deck.count} for a total score of #{round.percent_correct}%."
arr.each do |car|
  puts "#{car} - #{round.percent_correct_by_category(car)} Correct!"
end
puts ""
#round.percent_correct_by_category(category)
