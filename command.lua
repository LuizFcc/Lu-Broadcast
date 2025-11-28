core.register_chatcommand("broadcast", {
    params = "<text>",
    description = S("Sends a global message for everyone in the server."),
    privs={broadcast=true},
    func = function(name, param)
      local red = core.get_color_escape_sequence("#f44336")
      local reset = core.get_color_escape_sequence("")
      core.chat_send_all(red .. S("[Broadcast from ") .. name .. "] " .. param)
    end
})
