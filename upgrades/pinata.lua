SMODS.Enhancement({
    key = "pinata",
    atlas = "enhancers_atlas",
    pos = {x=0,y=0},
    discovered = true,
    config = {
        extra = {
        money=10,
      }
    },
    loc_vars = function(self, info_queue, card)
        return {
          vars = {
            card.ability.extra.money,
          }
        }
    end,
    calculate = function(self, card, context)
        if context.remove_playing_cards then
      for k, val in ipairs(context.removed) do
        if val==card then
           return {
            dollars=card.ability.extra.money,
            func = function()
            G.E_MANAGER:add_event(Event({
            trigger = 'before',
            delay = 0.0,
            func = (function()
              PB_UTIL.add_tag(PB_UTIL.poll_tag("jimbo_adventure"))
              return true
            end)
            }))
        end
        }
        end
      end

    end

    if context.cards_destroyed then
      for k, val in ipairs(context.glass_shattered) do
        if val==card then
               G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                    local _card = copy_card(val, nil, nil, G.playing_card)
                    _card:add_to_deck()
                    G.deck.config.card_limit = G.deck.config.card_limit + 1
                    G.deck:emplace(_card)
                    table.insert(G.playing_cards, _card)
                    playing_card_joker_effects({true})
                
                G.E_MANAGER:add_event(Event({
                func = function() 
                    _card:start_materialize()
                    
                    return true
                end}))
        end
      end

    end
    end
})