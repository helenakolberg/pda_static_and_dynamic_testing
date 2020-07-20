require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game')
require_relative('../card')

class TestCardGame < Minitest::Test

    def setup
        @card1 = Card.new('hearts', 2)
        @card2 = Card.new('spades', 5)
        @cards = [@card1, @card2]
        @card_game = CardGame.new(@cards)
    end

    def test_is_ace
        assert_equal(false, @card_game.check_for_ace(@card1))
    end

    def test_highest_card
        assert_equal(@card2, @card_game.highest_card(@card1, @card2))
    end

end