core.register_chatcommand("broadcast", {
    params = "<text>",
    description = S("Sends a global message for everyone in the server."),
    privs={broadcast=true},
    func = function(name, param)
      local red = core.get_color_escape_sequence("#f44336")
      local reset = core.get_color_escape_sequence("")
      
      -- If no player, then assume it as server
      if not name or name == nil
        core.chat_send_all(red .. S("[Server Broadcast] ") .. reset .. param)
      else
        -- If the player exists, show the player name
        core.chat_send_all(red .. S("[Broadcast from ") .. name .. "] " .. reset .. param)
    end
})
