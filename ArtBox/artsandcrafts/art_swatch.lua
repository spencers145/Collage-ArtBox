SMODS.Consumable ({
    object_type = "Consumable",
     atlas = 'arts_atlas',
	key = 'art_swatch',
	set = 'art',
	name = 'Swatch',
    config = {
    },
	pos = { x = 3, y = 0 },
	cost = 4,
	unlocked = true,
	discovered = true,
    can_use = function(self, card)
		return true
	end,
    loc_vars = function(self, info_queue, card)
    return {
      vars = {
        G.GAME.probabilities.normal,
      }
    }
    end,

    use = function(self, card, area)
     G.E_MANAGER:add_event(Event({
              trigger = 'before',
              func = function()
                SMODS.add_card {
                  set = PB_UTIL.poll_consumable_type('Swatch').key,
                  area = G.consumables,
                  edition = 'e_negative',
                  soulable = true,
                  key_append = 'Swatch',
                }

                return true
              end
            }))
    end

    
})