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
		assert_equal({"Penny" => 1}, call_hash)
	end

end