SMODS.Joker {
    key = "seven_nine",
    config = {
      extra = {
        mult=0,
        mult_mod=8
      }
    },
    rarity = 3,
    pos = { x = 6, y = 1},
    atlas = 'joker_atlas',
    cost = 7,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,

    loc_vars = function(self, info_queue, card)
        return {
          vars = {
            card.ability.extra.mult,
            card.ability.extra.mult_mod,
          }
        }
    end,

    calculate = function(self, card, context)
      if context.cardarea == G.play then
        local sevens=0
        local nines=0
        
        for k, v in ipairs(context.scoring_hand) do
          if v:get_id() == 7 then
            sevens=sevens+1
          elseif v:get_id() == 9 then
            nines=nines+1
          end
        end

        if context.destroy_card and context.destroy_card:get_id() == 9 and sevens>0 and nines>0 and not context.blueprint then
          card.ability.extra.mult=card.ability.extra.mult+card.ability.extra.mult_mod

           card_eval_status_text(card, 'extra', nil, nil, nil,{ message = localize { type = 'variable', key = 'a_mult', vars = { card.ability.extra.mult_mod * nines} } })

          return {remove = true}
        end

        if context.individual and context.other_card:get_id() == 7 and card.ability.extra.mult>0 then
          return{
                    mult=card.ability.extra.mult
                }
        end
      end

    end
    }