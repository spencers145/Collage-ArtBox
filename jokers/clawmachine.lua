SMODS.Joker {
    key = "clawmachine",
    config = {
      mod_conv = "c_artb_joker_collectable",
      extra = {
        n=1,
        d=3
      }
    },
    rarity = 1,
    pos = { x = 1, y = 1},
    atlas = 'joker_atlas',
    cost = 5,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
      info_queue[#info_queue + 1] = G.P_CENTERS[self.config.mod_conv]
        return {
      vars = {
        card.ability.extra.n*G.GAME.probabilities.normal,
        card.ability.extra.d,
        card.ability.extra.secret_odds,
      }
    }
    end,

    calculate = function(self, card, context)
        if context.setting_blind then
            if pseudorandom("clawmachine") < G.GAME.probabilities.normal / card.ability.extra.d then 

                if pseudorandom("clawmachine") < 0.04 then
                    SMODS.calculate_effect({message = localize('artb_wow'), colour = G.C.attention}, card)

                    local new_card = create_card("collectable", G.consumables, nil, nil, nil, nil, 'c_artb_limited_edition_collectable')
                  new_card:add_to_deck()
                  G.consumeables:emplace(new_card)
                else
                    SMODS.calculate_effect({message = localize('artb_caught'), colour = G.C.money}, card)

                    local new_card = create_card("collectable", G.consumables, nil, nil, nil, nil, 'c_artb_joker_collectable')
                  new_card:add_to_deck()
                  G.consumeables:emplace(new_card)
                end
            else
                SMODS.calculate_effect({message = localize('artb_miss'), colour = G.C.attention}, card)
            end
        end
    end
}