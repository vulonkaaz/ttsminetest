core.register_on_receiving_chat_message(function(message)
	core.log("action", "[CHATTTS] " .. core.strip_colors(message))
	return false
end)
