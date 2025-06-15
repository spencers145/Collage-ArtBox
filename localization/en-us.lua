return {
    misc = {
        dictionary = {
            artb_bonk= "bonk!",
            artb_cought="cought!",
            artb_wow="WOW!",
            artb_miss="miss!",
            artb_arts_crafts_pack = "Arts & Crafts Pack",
            artb_plus_art = "+1 Art",
            artb_plus_tag = "+1 Tag",
        },
        labels = {
            artb_ouroboros_seal = "Ouroboros Seal",
            artb_brick_seal = "Brick Seal",
            artb_button_seal = "Button Seal",
        },
    },
    descriptions = {
        Joker = {
            j_artb_collage = {
                name = 'Collage',
                text = {
                    "When any playing card is {C:attention}destroyed{},",
                    "Gains {C:chips}+#1#{} Chips, {C:mult}+#3#{} Mult, or {X:mult,C:white}X#5#{} Mult",
                    "{C:inactive}(Currently {C:chips}#2#{} {C:inactive}Chips/{C:mult}#4#{} {C:inactive}Mult/{X:mult,C:white}X#6#{} {C:inactive}Mult)"
                }
            },

            j_artb_halftone = {
                name = 'Halftone',
                text = {
                    "Retrigger all played cards",
                    "if played hand",
			        "contains a {C:attention}Straight{}",
                }
            },

            j_artb_mitosis = {
                name = 'Mitosis',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "When {C:attention}blind{} is selected",
			        "creates a copy of this Joker",
                }
            },

            j_artb_bat = {
                name = 'Bat',
                text = {
                    "Each {C:attention}round{} first time",
                    "you play a {C:attention}hand{} that",
                    "has only one card,",
                    "destroy it",
                }
            },

            j_artb_rubberhose = {
                name = 'Rubber hose',
                text = {
                    "Played cards with",
                    "{C:clubs}Club{} suit give",
                    "{C:mult}+#2#{} Mult when scored,",
                    "cards with {C:spades}Spade{} suit",
                    "give {C:chips}+#1#{} chips",
                }
            },

            j_artb_clawmachine = {
                name = 'Claw machine',
                text = {
                    "When {C:attention}Blind{} is selected,",
                    "{C:green}#1# in #2#{} chance",
                    "to create a",
                    "{C:attention}Collectable Joker{}",
                }
            },

            j_artb_rorschach = {
                name = 'Rorschach',
                text = {
                    "{C:clubs}Clubs{} are",
                    "considered",
                    "{C:attention}Wild Cards{}",
                }
            },

            j_artb_sadcube = {
                name = 'Sad Cube',
                text = {
                    "{C:attention}Lucky Cards{} give",
                    "{C:money}$#1#{} when they do not",
                    "trigger their ability",
                }
            },
        },
        collectable = {
            c_artb_joker_collectable = {
                name = 'Joker',
                text = {
                    "{C:attention}+1 consumable slot{} when held",
                    "If you already have",
                    "a {C:attention}Collectable Joker{}",
                    "destroys this and gives",
                    "the other one {C:money}+#1#{} sell value"
                }
            },

            c_artb_limited_edition_collectable = {
                name = 'Limited Edition',
                text = {
                    "{C:attention}+#2# consumable slots{} when held",
                    "If you already have",
                    "a {C:attention}limited edition{}",
                    "destroys this and gives",
                    "the other one {C:money}+#1#{} sell value",
                    "and {C:attention}+1 consumable slot{}"
                }
            },
        },
        Tag = {
            tag_artb_creative = {
                name = "Creative Tag",
                text = {
                    "Gives a free",
                    "Mega Arts & Crafts Pack"
                }
            }
        },
        art = {
            c_artb_art_paper = {
                name = 'Paper',
                text = {
                    "Enchances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}Pinata Cards{}",
                }
            },
            c_artb_art_art_block = {
                name = 'Art Block',
                text = {
                    "Enchances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}Stained Cards{}",
                }
            },
            c_artb_art_glitter = {
                name = 'Glitter',
                text = {
                    'Add a {C:dark_edition}Foil{}, {C:dark_edition}Holographic{},',
                    'or {C:dark_edition}Polychrome{} effect to',
                    '{C:attention}1{} random card in hand'
                }
            },
            c_artb_art_blend = {
                name = 'Blend',
                text = {
                    'Select {C:attention}2{} cards,',
                    'they copy each others',
                    '{C:attention}enhancements{}, {C:attention}seals{} and {C:attention}editions{}',
                    '{C:inactive}ignores ones already on the card{}'
                }
            },

            c_artb_art_auction = {
                name = 'Auction',
                text = {
                    'Destroys {C:attention}1{} selected card,',
                    'gives {C:money}$#3#{} for its {C:attention}enhancement{},',
                    '{C:money}$#2#{} for its {C:attention}seal{},',
                    'and {C:money}$#1#{} for its {C:attention}edition{}'
                }
            },

            c_artb_art_appraisal = {
                name = 'Appraisal',
                text = {
                    'Gives the total sell',
                    'value of all held consumables',
                    '{C:inactive}(max of {C:money}$30{}){}',
                    'then gives you a {C:attention}Collectable Joker{}',
                    '{C:inactive}(currently {C:money}$#2#{}){}'
                }
            },

            c_artb_art_plastic = {
                name = 'Plastic',
                text = {
                    'Add a {C:mult}Brick Seal{}',
                    'to {C:attention}1{} selected',
                    'card in your hand'
                }
            },

             c_artb_art_thread = {
                name = 'Thread',
                text = {
                    'Add a Button Seal',
                    'to {C:attention}1{} selected',
                    'card in your hand'
                }
            },

             c_artb_art_swatch = {
                name = 'Swatch',
                text = {
                    'Creates a random',
                    '{C:dark_edition}Negative{} {C:attention}Consumable{}',
                }
            },
        },
         Spectral = {
            c_artb_infinity = {
                name = 'Infinity',
                text = {
                    'Add a {C:dark_edition}Ouroboros Seal{}',
                    'to {C:attention}1{} selected',
                    'card in your hand'
                }
            },
        },
        Enhanced = {
            m_artb_pinata = {
        name = 'Pinata Card',
        text = {
          'When this card is {C:attention}destroyed{},',
          'gain {C:money}$#1#{}',
          'and a random {C:attention}tag{}'
        }
      },
         m_artb_stained = {
        name = 'Stained Card',
        text = {
          "No rank or suit,",
          "when this card is {C:attention}discarded{},",
          "{C:green}#1# in #2#{} chance",
          "to create an {C:attention}Art card{},",
          "{C:green}#1# in #3#{} chance",
          "to create a {C:attention}Creative tag{}",
        }
      },
      },
        Other = {
            artb_ouroboros_seal = {
                name = 'Ouroboros Seal',
                text = {
                    'When this card is {C:attention}destroyed{},',
                    'an exact copy is added to the {C:attention}deck{}'
                }
            },

            artb_brick_seal = {
                name = 'Brick Seal',
                text = {
                    'This card gets',
                    '{C:mult}+1{} extra Mult',
                    'when scored'
                }
            },

            artb_button_seal = {
                name = 'Button Seal',
                text = {
                    'when scored, random card',
                    'in hand {C:attention}suit{} changes',
                    'to this cards {C:attention}suit{} '
                }
            },

            p_artb_arts_crafts_small_1 = {
            name = "Arts and Crafts Pack",
            text = {
              "Choose {C:attention}#1#{} of up to {C:attention}#2#",
              "{C:be5e6e)}Art{} cards to use",
            },
            },

            p_artb_arts_crafts_small_2 = {
            name = "Arts and Crafts Pack",
            text = {
              "Choose {C:attention}#1#{} of up to {C:attention}#2#",
              "{C:be5e6e)}Art{} cards to use",
            },
            },

            p_artb_arts_crafts_jumbo = {
            name = "Jumbo Arts and Crafts Pack",
            text = {
              "Choose {C:attention}#1#{} of up to {C:attention}#2#",
              "{C:be5e6e)}Art{} cards to use",
            },
            },

            p_artb_arts_crafts_mega = {
            name = "Mega Arts and Crafts Pack",
            text = {
              "Choose {C:attention}#1#{} of up to {C:attention}#2#",
              "{C:be5e6e)}Art{} cards to use",
            },
            },
        },
    }
}