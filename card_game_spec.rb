require('Minitest/autorun')
require('Minitest/reporters')
require_relative('./card_game.rb')
require_relative('./card.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCardGame < MiniTest::Test

  def setup
    @card1 = Card.new("black", 2)
    @card2 = Card.new("red", 1)
    @card3 = Card.new("black", 1)
    @cards = [@card1, @card2]
  end

  def test_checkforAce__true()
    result = CardGame.checkforAce(@card3)
    assert_equal(true, result)
  end

  def test_checkforAce__false()
    result = CardGame.checkforAce(@card1)
    assert_equal(false, result)
  end

  def test_highest_card()
    result = CardGame.highest_card(@card1, @card2)
    assert_equal(@card1, result)
  end

  def test_cards_total
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of 3", result)
  end
end
