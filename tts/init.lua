core.register_on_receiving_chat_message(function(message)
	core.log("action", "[CHATTTS] " .. message)
	return false
end)
