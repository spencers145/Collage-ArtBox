SMODS.Atlas {
    key = 'modicon',
    px = 34,
    py = 34,
    path = 'modicon.png'
}

SMODS.Atlas {
	key = "joker_atlas",
	path = "jokers.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "collectable_atlas",
	path = "collectable.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "spectral_atlas",
	path = "spectrals.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "seal_atlas",
	path = "seals.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "enhancers_atlas",
	path = "enhancers.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "boosters_atlas",
	path = "boosters.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "arts_atlas",
	path = "artsandcrafts.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "tags_atlas",
	path = "tags.png",
	px = 34,
	py = 34
}


SMODS.current_mod.optional_features = function()
    return {
        quantum_enhancements = true
    }
end

SMODS.ConsumableType({
    key = "collectable",
    primary_colour = HEX("60b2be"),
    secondary_colour = HEX("60b2be"),
    loc_txt = {
        name = "Collectable",
        collection = "Collectables",
        undiscovered = {
            name = 'Unknown Collectable',
            text = {'Find this card in an unseeded', 'run to find out what it does'}
        }
    },
    collection_rows = {4, 4, 4},
    shop_rate = 0,
    default = 'c_artb_joker_collectable'
})

SMODS.ConsumableType({
    key = "art",
    primary_colour = HEX("be5e6e"),
    secondary_colour = HEX("be5e6e"),
    loc_txt = {
        name = "Art Card",
        collection = "Art Cards",
        undiscovered = {
            name = 'Unknown Art Card',
            text = {'Find this card in an unseeded', 'run to find out what it does'}
        }
    },
    collection_rows = {4, 4, 4},
    shop_rate = 0,
    default = 'c_artb_art_paper'
})

local path = SMODS.current_mod.path .. 'jokers/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('jokers/' .. v))()
end

local path = SMODS.current_mod.path .. 'collectable/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('collectable/' .. v))()
end

local path = SMODS.current_mod.path .. 'upgrades/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('upgrades/' .. v))()
end

local path = SMODS.current_mod.path .. 'artsandcrafts/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('artsandcrafts/' .. v))()
end