require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

# I didn't mean to a setup method on this class and change the original outine of the file...but realize it before it was too late.

class CardTest < Minitest::Test
  def setup
    @card = card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  end

  def test_it_exists
    assert_instance_of Card, @card
  end

  def test_it_has_a_question
    assert_equal "What is the capital of Alaska?", @card.question
  end

  def test_it_has_an_answer
    assert_equal "Juneau", @card.answer
  end

  def test_it_has_a_category
    assert_equal :Geography, @card.category
  end
end
