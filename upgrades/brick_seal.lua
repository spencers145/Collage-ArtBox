SMODS.Seal ({
    key = "brick",
    badge_colour = HEX("cf3e36"),
    atlas = "seal_atlas",
    pos = {x= 0, y= 0},
    discovered = true,
     config = {
        mult_mod=1,
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.seal.mult_mod,
            }
        }
    end,

    calculate = function(self, card, context)
      if context.cardarea == G.play and context.main_scoring then
        card.ability.perma_mult=card.ability.perma_mult+card.ability.seal.mult_mod
        return {
          extra = { message = localize('k_upgrade_ex'), colour = G.C.MULT },
          card = card
        }
      end
    end,
})