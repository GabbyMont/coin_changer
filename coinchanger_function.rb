def coinchanger_app(cents)
	coins = {}
	if cents >= 25
		coins["quarter"] = cents/25
	  cents = cents % 25
	end
	if cents >= 10
		coins["dime"] = cents/10
	  cents = cents % 10
	end
	if cents >= 5
		coins["nickel"] = cents/5
		cents = cents % 5
	end
	if cents >= 1
		coins["penny"] = cents
	end
	coins
end

