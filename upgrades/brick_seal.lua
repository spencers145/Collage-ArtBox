SMODS.Seal({
  key = "brick",
  badge_colour = HEX("cf3e36"),
  atlas = "seal_atlas",
  pos = { x = 0, y = 0 },
  discovered = true,
  config = {
    mult_mod = 1,
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
      card.ability.perma_mult = card.ability.perma_mult + card.ability.seal.mult_mod
      return {
        extra = { message = localize('k_upgrade_ex'), colour = G.C.MULT },
        card = card
      }
    end
  end,
  draw = function(self, card, layer)
    if (layer == 'card' or layer == 'both') and card.seal and card.seal == 'artb_brick' then
      local sprite_key = 'artb_brick'
      if card.ability.seal and card.ability.seal.mult_mod > 1 then
        sprite_key = 'artb_brick_' .. card.ability.seal.mult_mod
      end
      if not G.shared_seals[sprite_key] then
        G.shared_seals[sprite_key] = Sprite(0, 0, G.CARD_W, G.CARD_H, G.ASSET_ATLAS["artb_seal_atlas"],
          { x = card.ability.seal.mult_mod - 1, y = 0 })
      end
      G.shared_seals[sprite_key].role.draw_major = card
      G.shared_seals[sprite_key]:draw_shader('dissolve', nil, nil, nil, card.children.center)
    end
  end
})
