require './lib/card'
require './lib/deck'
require './lib/turn'
require './lib/round'
require 'pry'


card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

deck = Deck.new([card_1, card_2, card_3])

round = Round.new(deck)

# Er, what am I doing here?
def start
  puts
end

puts "Welcome! You're playing with 4 cards."
puts "-" * 50

puts "This is card number 1 out of 4."
puts "Question: #{card_1.question}"
puts ">"
gets.chomp = guess 
