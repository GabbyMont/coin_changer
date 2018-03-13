def coinchanger_app(cents)
	coins = {}
	if cents <= 4
		coins["penny"] = cents
	end
	coins
end