def coinchanger_app(cents)
	coins = {}
	if 	cents >= 5
		coins["nickel"] = cents/5
	else cents <= 4
		coins["penny"] = cents
	end
	coins
end