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

	def test_for_hash
		call_hash = plural_coins({})
		assert_equal(Hash, call_hash.class)
	end

	# def test_for_plural_hashes
	# 	plural_coins = {"quarter" => 2, "dime" => 0, "nickel" => 1, "penny" => 4}
	# 	assert_equal({"quarters" => 2, "dimes" => 0, "nickel" => 1, "pennies" => 4}, plural_coins)
	# end

	def test_one_plural
		hashtest = {"quarter" => 2}
		assert_equal({"quarters" => 2}, plural_coins(hashtest))
	end

	def test_plural_dimes
		hashtest = {"dime" => 2}
		assert_equal({"dimes" => 2}, plural_coins(hashtest))
	end

	def test_plural_nickels
		hashtest = {"nickel" => 4}
		assert_equal({"nickels" => 4}, plural_coins(hashtest))
	end

	def test_plural_pennies
		hashtest = {"penny" => 3}
		assert_equal({"pennies" => 3}, plural_coins(hashtest))
	end

	def test_all_plural
		hashtest = {"quarter" => 2, "dime" => 2, "nickel" => 2, "penny" => 2}
		assert_equal({"quarters" => 2, "dimes" => 2, "nickels" => 2, "pennies" => 2}, plural_coins(hashtest))
	end

		def test_all_plural
		hashtest = {"quarter" => 0, "dime" => 0, "nickel" => 0, "penny" => 0}
		assert_equal({"quarters" => 0, "dimes" => 0, "nickels" => 0, "pennies" => 0}, plural_coins(hashtest))
	end

	def test_59_cents
		hashtest = {"quarter" => 2, "dime" => 0, "nickel" => 1, "penny" => 4}
		assert_equal({"quarters" => 2, "dimes" => 0, "nickel" => 1, "pennies" => 4}, plural_coins(hashtest))
	end

	def test_59_cents
		hashtest = {"quarter" => 1, "dime" => 1, "nickel" => 1, "penny" => 1}
		assert_equal({"quarter" => 1, "dime" => 1, "nickel" => 1, "penny" => 1}, plural_coins(hashtest))
	end

	def test_both_hashes_49_cents
		cents = 49
		singular_plural = coinchanger_app(cents)
		assert_equal({"quarter" => 1, "dimes" => 2, "nickels" => 0, "pennies" => 4}, plural_coins(singular_plural))
	end

end