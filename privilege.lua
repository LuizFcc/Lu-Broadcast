local S = core.get_translator("lu_broadcast")

core.register_privilege("broadcast", {
    give_to_singleplayer = false,
    description = S("Anyone with this privilege will be able to execute /broadcast!")
})
