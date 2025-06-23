SMODS.Enhancement({
    key = "stained",
    atlas = "enhancers_atlas",
    pos = {x = 1, y = 0},
    discovered = true,
    no_rank = true,
    no_suit = true,
    replace_base_card = true,
    config = {
    extra = {
      odds = 3,
      super_odds = 10
    }
  },

  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue + 1] = G.P_TAGS.tag_artb_creative
    return {
      vars = {
        G.GAME.probabilities.normal,
        card.ability.extra.odds,
        card.ability.extra.super_odds
      }
    }
  end,

  calculate = function(self, card, context)

    if context.discard then
      if context.other_card == card then
        if pseudorandom("stained") < G.GAME.probabilities.normal / card.ability.extra.odds and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
          return {
                func = function()
                    G.E_MANAGER:add_event(Event({
                        func = (function()
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    SMODS.add_card {
                                        set = 'art',
                                        key_append = 'stained'
                                    }
                                    G.GAME.consumeable_buffer = 0
                                    return true
                                end
                            }))
                            SMODS.calculate_effect({ message = localize('artb_plus_art'), colour = G.C.SET.DIVINE },
                                context.blueprint_card or card)
                            return true
                        end)
                    }))
                end
            }
        end
        if pseudorandom("stained") < G.GAME.probabilities.normal / card.ability.extra.super_odds then
                local tag = Tag("tag_artb_creative")
                add_tag(tag)
                return {
                    message = localize('artb_plus_tag')
                }
        end
      end
    end
  end,
})