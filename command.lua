local S = core.get_translator("lu_broadcast")

core.register_chatcommand("broadcast", {
    params = "<text>",
    description = S("Sends a global message for everyone in the server."),
    privs={broadcast=true},
    func = function(name, param)
      local red = core.get_color_escape_sequence("#f44336")
      local reset = core.get_color_escape_sequence("#ffffff")
      
      -- If no text is typed, then throw a error
      if not param or param == nil then
        core.chat_send_player(name, red .. S("[ERROR] ") .. reset .. S("Please provide a text!"))
      end
      
      -- If no player, then assume it as server
      if not name or name == nil then
        core.chat_send_all(red .. S("[Server Broadcast] ") .. reset .. param)
      else
        -- If the player exists, show the player name
        core.chat_send_all(red .. S("[Broadcast from ") .. name .. "] " .. reset .. param)
    end
  end
})
