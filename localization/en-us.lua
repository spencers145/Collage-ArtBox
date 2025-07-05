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
            artb_wood="wood!",
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
                    "Retrigger all scored cards",
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
                name = 'Baseball Bat',
                text = {
                    "Each {C:attention}round{} first time",
                    "you play a {C:attention}hand{} that",
                    "has only one card,",
                    "destroy it",
                }
            },

            j_artb_rubberhose = {
                name = 'Rubber Hose',
                text = {
                    "Played cards with",
                    "{C:clubs}Club{} suit give",
                    "{C:mult}+#2#{} Mult when scored,",
                    "cards with {C:spades}Spade{} suit",
                    "give {C:chips}+#1#{} chips",
                }
            },

            j_artb_clawmachine = {
                name = 'Claw Machine',
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

            j_artb_transparent_joker = {
                name = '"Transparent" Joker',
                text = {
                    "Scored cards give",
                    "{C:mult}+#1#{} Mult for every",
                    "{C:attention}unscored card{}",
                    "in played hand"
                }
            },

            j_artb_minimalism = {
                name = 'Minimalism',
                text = {
                    "Retrigger all scored cards",
                    "if played hand has 3",
			        "or less scored cards",
                }
            },

            j_artb_wooden_joker = {
                name = 'Wooden Joker',
                text = {
                    "Retrigger last card",
                    "held in hand {C:attention}#1#{} times",
                }
            },

            j_artb_random = {
                name = 'Random',
                text = {
                    "When {C:attention}Blind{} is selected,",
                    "transform all {C:attention}Jokers{}",
                    "to the right",
                    "into random ones",
                    "of the same rarity"
                }
            },

            j_artb_trixel = {
                name = 'Trixel',
                text = {
                    "This Joker gains {C:mult}+#1#{} Mult",
                    "if played hand is",
                    "{C:attention}Three of a Kind{}",
                    "{C:inactive}(Currently {C:mult}#2#{} {C:inactive}Mult)"
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
               c_artb_mod_collectable = {
                name = 'Modifier Collectable',
                text = {
                    "Applies {C:attention}#1#{} to",
                    "{C:attention}1{} selected card",
                }
            },

             c_artb_mod_collectable_empty = {
                name = 'Modifier Collectable',
                text = {
                    "Applies {C:attention}???{} to",
                    "{C:attention}1{} selected card",
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

             c_artb_art_carving = {
                name = 'Carving',
                text = {
                    "Enchances {C:attention}#1#{}",
                    "selected card to",
                    "{C:attention}Wood Card{}",
                }
            },

            c_artb_art_scissors = {
                name = 'Scissors',
                text = {
                    'Select a card,',
                    'destroy it and',
                    'get a collectable of its',
                    '{C:attention}enhancement{}, {C:attention}seal{} and {C:attention}edition{}',
                }
            },

            c_artb_art_imitation = {
                name = 'Imitation',
                text = {
                    'Select a card,',
                    'create an {C:attention}exact?{}',
                    'copy of it',
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
        m_artb_wood = {
           name = 'Wood Card',
           text = {
            "when this card",
            "is held in hand",
            "scored cards gain",
            "permanent {C:chips}+#1#{} chips"
            }
        },
      },
        Voucher = {
            v_artb_booster_stack = {
                name = 'Booster Stack',
                text = {
                    "{C:attention}+1 Booster Pack{}",
                    "slot in the shop"
                },
            },
            v_artb_booster_ritual = {
                name = 'Booster Ritual',
                text = {
                    "Whenever you reroll,",
                    "a random {C:attention}Booster Pack{}",
                    "is added in the shop"
                },
            }
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
                    'when scored, {C:attention}suit{}',
                    'of a random card in hand',
                    'changes to this cards {C:attention}suit{}'
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