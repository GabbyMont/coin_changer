require "minitest/autorun"
require_relative "coinchanger_function.rb"

class Coin_changer_test < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end

	def test_for_hash
		call_hash = coinchanger_app(11)
		assert_equal(Hash, call_hash.class)
	end

	def test_onecent_for_onepenny
		call_hash = coinchanger_app(1)
		assert_equal({"penny" => 1}, call_hash)
	end

	def test_two_pennies
		call_hash = coinchanger_app(2)
		assert_equal({"penny" => 2}, call_hash)
	end

	def test_nickel_is_5
		call_hash = coinchanger_app(5)
		assert_equal({"nickel" => 1}, call_hash)
	end

	def test_for_2pennies_1nickel
		call_hash = coinchanger_app(7)
		assert_equal({"nickel" => 1, "penny" => 2}, call_hash)
	end

	def test_for_4pennies_1nickel
		call_hash = coinchanger_app(9)
		assert_equal({"nickel" => 1, "penny" => 4}, call_hash)
	end

	def test_for_one_dime
		call_hash = coinchanger_app(10)
		assert_equal({"dime" => 1}, call_hash)
	end

	def test_for_one_quarter
		call_hash = coinchanger_app(25)
		assert_equal({"quarter" => 1}, call_hash)
	end

	def test_for_1dime_1nickel_4pennies
		call_hash = coinchanger_app(18)
		assert_equal({"dime" => 1, "nickel" => 1, "penny" => 3}, call_hash)
	end

	def test_for_2quarters
		call_hash = coinchanger_app(50)
		assert_equal({"quarter" => 2}, call_hash)
	end

	def test_for_93_cents
		call_hash = coinchanger_app(93)
		assert_equal({"quarter" => 3, "dime" => 1, "nickel" => 1, "penny" => 3}, call_hash)
	end

end