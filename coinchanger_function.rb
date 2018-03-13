def coinchanger_app(cents)
	coins = {}
	# if cents >= 25
	# 	coins["Quarter"] = cents/25
	# elsif cents >= 10
	# 	coins["dime"] = cents/10
	if cents >= 5
		coins["nickel"] = cents/5
		cents = cents % 5
		p cents
	end
	if cents >= 1
		coins["penny"] = cents
	end
	coins
end