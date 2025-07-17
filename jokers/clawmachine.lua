SMODS.Joker {
    key = "clawmachine",
    config = {
      mod_conv = "c_artb_joker_collectable",
      extra = {
        odds=2,
        secret_odds=20
      }
    },
    rarity = 1,
    pos = { x = 1, y = 1},
    atlas = 'joker_atlas',
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
      info_queue[#info_queue + 1] = G.P_CENTERS[self.config.mod_conv]
    return {
      vars = {
        G.GAME.probabilities.normal,
        card.ability.extra.odds,
        card.ability.extra.secret_odds,
      }
    }
    end,

    calculate = function(self, card, context)
        if context.setting_blind then
            if pseudorandom("clawmachine") < G.GAME.probabilities.normal / card.ability.extra.odds then 

                if pseudorandom("clawmachine") < G.GAME.probabilities.normal / card.ability.extra.secret_odds then
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