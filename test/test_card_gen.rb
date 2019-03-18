require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'
require 'pry'

class CardgenTest < Minitest::Test
  filename = "cards.txt"
  File.read('./lib/card_generator')
end
