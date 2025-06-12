SMODS.Joker {
    key = "sadcube",
    config = {
      extra = {
        money=1,
      }
    },
    rarity = 1,
    pos = { x = 3, y = 2},
    atlas = 'joker_atlas',
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_lucky
        return {
          vars = {
            card.ability.extra.money,
          }
        }
    end,

    calculate = function(self, card, context)
      if context.cardarea == G.play and context.individual then
        if SMODS.has_enhancement(context.other_card, 'm_lucky') and not context.other_card.lucky_trigger then
          return {
          dollars = card.ability.extra.money,
          juice_card = context.blueprint_card or card
          }
        end
      end
    end
    }