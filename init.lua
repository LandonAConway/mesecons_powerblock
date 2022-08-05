local rules = {
    { x = 1, y = 0, z = 0 },
    { x = -1, y = 0, z = 0 },
    { x = 0, y = 1, z = 0 },
    { x = 0, y = -1, z = 0 },
    { x = 0, y = 0, z = 1 },
    { x = 0, y = 0, z = -1 }
}

minetest.register_node("mesecons_powerblock:block", {
    description = "Mesecons Power Block",
    tiles = { "default_mese_block.png^[brighten" },
	groups = { cracky = 1, level = 2 },
    paramtype = "light",
    light_source = 5,
    mesecons = {
        receptor = {
            state = mesecon.state.on,
            rules = rules
        }
    }
})

minetest.register_alias("mesecons_powerblock:block", "mesecons_powerblock")

minetest.register_craft({
    type = "shapeless",
    output = "mesecons_powerblock:block",
    recipe = {
        "mesecons_extrawires:mese_powered", "mesecons_torch:mesecon_torch_on"
    }
})