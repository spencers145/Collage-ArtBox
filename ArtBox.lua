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
    key = "vouchers_atlas",
    path = "vouchers.png",
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
            text = { 'Find this card in an unseeded', 'run to find out what it does' }
        }
    },
    collection_rows = { 4, 4, 4 },
    shop_rate = 0,
    default = 'c_artb_joker_collectable'
})

ArtBox.Collectables = {
    --Seals
    ['Red'] = { atlas = 'artb_collectable_atlas', pos = { x = 0, y = 0 }, soul_pos = { x = 0, y = 1 } },
    ['Blue'] = { atlas = 'artb_collectable_atlas', pos = { x = 5, y = 0 }, soul_pos = { x = 5, y = 1 } },
    ['Gold'] = { atlas = 'artb_collectable_atlas', pos = { x = 2, y = 4 }, soul_pos = { x = 2, y = 5 }, shader = 'voucher' },
    ['Purple'] = { atlas = 'artb_collectable_atlas', pos = { x = 3, y = 4 }, soul_pos = { x = 3, y = 5 } },
    ['artb_brick'] = { atlas = 'artb_collectable_atlas', pos = { x = 7, y = 0 }, soul_pos = { x = 7, y = 1 } },
    ['artb_button'] = { atlas = 'artb_collectable_atlas', pos = { x = 0, y = 4 }, soul_pos = { x = 0, y = 5 } },
    ['artb_ouroboros'] = { atlas = 'artb_collectable_atlas', pos = { x = 1, y = 4 }, soul_pos = { x = 1, y = 5 } },

    --Enhancements
    ['m_bonus'] = { atlas = 'artb_collectable_atlas', pos = { x = 1, y = 0 }, soul_pos = { x = 1, y = 1 } },
    ['m_mult'] = { atlas = 'artb_collectable_atlas', pos = { x = 4, y = 0 }, soul_pos = { x = 4, y = 1 } },
    ['m_stone'] = { atlas = 'artb_collectable_atlas', pos = { x = 6, y = 0 }, soul_pos = { x = 6, y = 1 } },
    ['m_lucky'] = { atlas = 'artb_collectable_atlas', pos = { x = 8, y = 0 }, soul_pos = { x = 8, y = 1 } },
    ['m_steel'] = { atlas = 'artb_collectable_atlas', pos = { x = 9, y = 0 }, soul_pos = { x = 9, y = 1 } },
    ['m_gold'] = { atlas = 'artb_collectable_atlas', pos = { x = 0, y = 2 }, soul_pos = { x = 0, y = 3 } },
    ['m_glass'] = { atlas = 'artb_collectable_atlas', pos = { x = 1, y = 2 }, soul_pos = { x = 1, y = 3 } },
    ['m_wild'] = { atlas = 'artb_collectable_atlas', pos = { x = 2, y = 2 }, soul_pos = { x = 2, y = 3 } },
    ['m_artb_pinata'] = { atlas = 'artb_collectable_atlas', pos = { x = 4, y = 2 }, soul_pos = { x = 4, y = 3 } },
    ['m_artb_wood'] = { atlas = 'artb_collectable_atlas', pos = { x = 9, y = 2 }, soul_pos = { x = 9, y = 3 } },
    ['m_artb_stained'] = { atlas = 'artb_collectable_atlas', pos = { x = 8, y = 2 }, soul_pos = { x = 8, y = 3 } },

    ['m_paperback_bandaged'] = { atlas = 'artb_collectable_atlas', pos = { x = 5, y = 4 }, soul_pos = { x = 5, y = 5 } },

    --Editions
    ['e_polychrome'] = { atlas = 'artb_collectable_atlas', pos = { x = 3, y = 2 }, soul_pos = { x = 3, y = 3 }, shader = 'polychrome', },
    ['e_foil'] = { atlas = 'artb_collectable_atlas', pos = { x = 6, y = 2 }, soul_pos = { x = 3, y = 3 }, shader = 'foil', },
    ['e_holo'] = { atlas = 'artb_collectable_atlas', pos = { x = 7, y = 2 }, soul_pos = { x = 7, y = 3 }, shader = 'holo', },
    ['e_negative'] = { atlas = 'artb_collectable_atlas', pos = { x = 4, y = 4 }, soul_pos = { x = 7, y = 3 }, shader = 'negative', },
}

function ArtBox.add_collectible(key, args)
    if G.P_SEALS[key] or G.P_CENTERS[key] then
        ArtBox.Collectables[key] = args
        sendDebugMessage('A Collectable type ' .. key .. ' has been be loaded', 'ArtBox')
    else
        sendWarnMessage('A Collectable type ' .. key .. ' could not properly be loaded', 'ArtBox')
    end
end
    

function ArtBox.create_collectable(key)
    local collectable = SMODS.add_card({ key = 'c_artb_mod_collectable' })

    if G.P_SEALS[key] then
        collectable.ability.extra.seal = key
    end

    if G.P_CENTERS[key] then
        if key:sub(1, 2) == 'm_' then
            collectable.ability.extra.enhancement = key
        elseif key:sub(1, 2) == 'e_' then
            collectable.ability.extra.edition = key
        end
    end

    local ref_values = ArtBox.Collectables[key]
    if ref_values then
        collectable.children.center.atlas = G.ASSET_ATLAS[ref_values.atlas]
        collectable.children.center:set_sprite_pos(ref_values.pos)

        collectable.children.floating_sprite = Sprite(collectable.T.x, collectable.T.y, collectable.T.w, collectable.T.h, G.ASSET_ATLAS[ref_values.atlas], ref_values.soul_pos)
        collectable.children.floating_sprite.role.draw_major = collectable
        collectable.children.floating_sprite.states.hover.can = false
        collectable.children.floating_sprite.states.click.can = false

        collectable.ability.extra.shader = ref_values.shader
    end

    return collectable
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
            text = { 'Find this card in an unseeded', 'run to find out what it does' }
        }
    },
    collection_rows = { 4, 4, 4 },
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

local path = SMODS.current_mod.path .. 'challenges/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('challenges/' .. v))()
end

local path = SMODS.current_mod.path .. 'other/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('other/' .. v))()
end

