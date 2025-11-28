core.register_chatcommand("broadcast", {
    params = "<text>",
    description = S("Sends a global message for everyone in the server."),
    privs={broadcast=true},
    func = function(name, param)
      
})
