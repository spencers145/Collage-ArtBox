SMODS.Tag {
  key = 'creative',
  atlas = 'tags_atlas',
  pos = { x = 0, y = 0 },
  discovered = true,

  loc_vars = function(self, info_queue)
    info_queue[#info_queue + 1] = G.P_CENTERS.p_artb_arts_crafts_mega
  end,

  apply = function(self, tag, context)
    if context.type == 'new_blind_choice' then
      tag:yep('+', HEX("be5e6e"), function()
        PB_UTIL.open_booster_pack('p_artb_arts_crafts_mega')
        return true
      end)

      tag.triggered = true
      return true
    end
  end
}
