local modstorage = core.get_mod_storage()

core.register_on_receiving_chat_message(function(message)
	if modstorage:get_int('tts_enabled') == 1 then
		core.log("action", "[CHATTTS] " .. core.strip_colors(message))
	end
	return false
end)

core.register_chatcommand('tts', {
	params = '',
	description = 'toggles text to speech',
	func = function()
		if modstorage:get_int('tts_enabled') == 1 then
			modstorage:set_int('tts_enabled', 0)
			core.display_chat_message('TTS disabled')
		else
			modstorage:set_int('tts_enabled', 1)
			core.display_chat_message('TTS enabled')
		end
	end,
})
