ArtBox = SMODS.current_mod

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

--#region Collectable Stuff

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

ArtBox.Collectables = {
    ['Red'] = {seal = 'Red', atlas = 'artb_collectable_atlas', pos = {x = 0, y = 0}, soul_pos = {x = 0, y = 1}},
    ['m_bonus'] = {enhancement = 'm_bonus', atlas = 'artb_collectable_atlas', pos = {x = 1, y = 0}, soul_pos = {x = 1, y = 1}},
    ['m_mult'] = {enhancement = 'm_mult', atlas = 'artb_collectable_atlas', pos = {x = 4, y = 0}, soul_pos = {x = 4, y = 1}},
    ['Blue'] = {seal = 'Blue', atlas = 'artb_collectable_atlas', pos = {x = 5, y = 0}, soul_pos = {x = 5, y = 1}},
    ['m_stone'] = {enhancement = 'm_stone', atlas = 'artb_collectable_atlas', pos = {x = 6, y = 0}, soul_pos = {x = 6, y = 1}},
    ['artb_brick'] = {seal = 'artb_brick', atlas = 'artb_collectable_atlas', pos = {x = 7, y = 0}, soul_pos = {x = 7, y = 1}},
    ['m_lucky'] = {enhancement = 'm_lucky', atlas = 'artb_collectable_atlas', pos = {x = 8, y = 0}, soul_pos = {x = 8, y = 1}},
    ['m_steel'] = {enhancement = 'm_steel', atlas = 'artb_collectable_atlas', pos = {x = 9, y = 0}, soul_pos = {x = 9, y = 1}},
    ['m_gold'] = {enhancement = 'm_gold', atlas = 'artb_collectable_atlas', pos = {x = 0, y = 2}, soul_pos = {x = 0, y = 3}},
    ['m_glass'] = {enhancement = 'm_glass', atlas = 'artb_collectable_atlas', pos = {x = 1, y = 2}, soul_pos = {x = 1, y = 3}},
    ['m_wild'] = {enhancement = 'm_wild', atlas = 'artb_collectable_atlas', pos = {x = 2, y = 2}, soul_pos = {x = 2, y = 3}},
    ['m_artb_pinata'] = {enhancement = 'm_artb_pinata', atlas = 'artb_collectable_atlas', pos = {x = 4, y = 2}, soul_pos = {x = 4, y = 3}},
    ['e_polychrome'] = {edition = 'e_polychrome', shader = 'polychrome', atlas = 'artb_collectable_atlas', pos = {x = 3, y = 2}, soul_pos = {x = 3, y = 3}},
}

function ArtBox.add_collectible(args)
    if args.seal then
        ArtBox.Collectables[args.seal] = args
    elseif args.enhancement then
        ArtBox.Collectables[args.enhancement] = args
    elseif args.edition then
        ArtBox.Collectables[args.edition] = args
    else
        printTraceMessage('A Collectable type could not properly be loaded', 'ArtBox')
    end
end

function ArtBox.create_enhancement_collectable(enhancement)
    local collectable = SMODS.add_card({key = 'c_artb_mod_collectable'})

    if ArtBox.Collectables[enhancement] then
        collectable.children.center.atlas = G.ASSET_ATLAS[ArtBox.Collectables[enhancement].atlas]
        collectable.children.center.floating_sprite = G.ASSET_ATLAS[ArtBox.Collectables[enhancement].atlas]

        collectable.children.center:set_sprite_pos(ArtBox.Collectables[enhancement].pos)
        collectable.children.floating_sprite:set_sprite_pos(ArtBox.Collectables[enhancement].soul_pos)

        collectable.ability.extra.enhancement = ArtBox.Collectables[enhancement].enhancement
        collectable.ability.extra.shader = ArtBox.Collectables[enhancement].shader
        
    else
        collectable.ability.extra.enhancement = enhancement
    end
end

function ArtBox.create_edition_collectable(edition)
    local collectable = SMODS.add_card({key = 'c_artb_mod_collectable'})

    if ArtBox.Collectables[edition] then
        collectable.children.center.atlas = G.ASSET_ATLAS[ArtBox.Collectables[edition].atlas]
        collectable.children.center.floating_sprite = G.ASSET_ATLAS[ArtBox.Collectables[edition].atlas]

        collectable.children.center:set_sprite_pos(ArtBox.Collectables[edition].pos)
        collectable.children.floating_sprite:set_sprite_pos(ArtBox.Collectables[edition].soul_pos)

        collectable.ability.extra.edition = ArtBox.Collectables[edition].edition
        collectable.ability.extra.shader = ArtBox.Collectables[edition].shader
        
    else
        collectable.ability.extra.edition = edition
    end
end

function ArtBox.create_seal_collectable(seal)
    local collectable = SMODS.add_card({key = 'c_artb_mod_collectable'})

    if ArtBox.Collectables[seal] then
        collectable.children.center.atlas = G.ASSET_ATLAS[ArtBox.Collectables[seal].atlas]
        collectable.children.center.floating_sprite = G.ASSET_ATLAS[ArtBox.Collectables[seal].atlas]

        collectable.children.center:set_sprite_pos(ArtBox.Collectables[seal].pos)
        collectable.children.floating_sprite:set_sprite_pos(ArtBox.Collectables[seal].soul_pos)

        collectable.ability.extra.seal = ArtBox.Collectables[seal].seal
        collectable.ability.extra.shader = ArtBox.Collectables[seal].shader
        
    else
        collectable.ability.extra.seal = seal
    end
end

--#endregion

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