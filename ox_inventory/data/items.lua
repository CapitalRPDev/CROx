return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},
	['gang_tablet'] = {
		name = 'gang_tablet',
		label = 'Gang Tablet',
		weight = 100,
		type = "item",
		image = "gang_tablet.png",
		useable = true,
	},
	['handcuffs'] = {
		name = 'handcuffs',
		label = 'Handcuffs',
		weight = 100,
		type = "item",
		image = "handcuffs.png",
		useable = true,
		client = {
			event = 'CPolice:Client:UseCuffItem'
		}
	},
	['handcuffs_key'] = {
		name = 'handcuffs_key',
		label = 'Handcuffs Key',
		weight = 100,
		type = "item",
		image = "handcuffs_key.png",
		useable = true,
		stack = false,
		client = {
			event = 'CPolice:Client:UseCuffKey'
		}
	},
  	["silver_coin"] = {
		label = 'Silver Coin',
		weight = 50,
	},

	["gold_coin"] = {
		label = 'Gold Coin',
		weight = 50,
	},

	["charlotte_ring"] = {
		label = 'Charlotte Ring',
		weight = 50,
	},

	["simbolos_chain"] = {
		label = 'Simbolos Chain',
		weight = 100,
	},

	["action_figure"] = {
		label = 'Action Figure',
		weight = 100,
	},
	-- fingerprint evidence
	['evidence_fingerprint'] = {
		label = 'Fingerprint Sample',
		weight = 10,
		stack = false,
		close = true,
		description = 'A fingerprint sample collected from a crime scene',
	},

	-- footprint evidence
	['evidence_footprint'] = {
		label = 'Footprint Sample',
		weight = 10,
		stack = false,
		close = true,
		description = 'A footprint sample collected from a crime scene',
	},

	-- blood evidence
	['evidence_blood'] = {
		label = 'Blood Sample',
		weight = 10,
		stack = false,
		close = true,
		description = 'A blood sample collected from a crime scene',
	},

	-- dna evidence
	['evidence_dna'] = {
		label = 'DNA Sample',
		weight = 10,
		stack = false,
		close = true,
		description = 'A DNA sample collected from a crime scene',
	},

	-- shell casing evidence
	['evidence_shell_casing'] = {
		label = 'Shell Casing',
		weight = 10,
		stack = false,
		close = true,
		description = 'A shell casing collected from a crime scene',
	},

	-- fiber evidence
	['evidence_fiber'] = {
		label = 'Fiber Sample',
		weight = 10,
		stack = false,
		close = true,
		description = 'A fiber sample collected from a crime scene',
	},
	["nominos_ring"] = {
		label = 'Nominos Ring',
		weight = 50,
	},

	["boss_chain"] = {
		label = 'BOSS Chain',
		weight = 200,
	},

	["branded_cigarette"] = {
		label = 'Branded Cigarette',
		weight = 10,
	},

	["branded_cigarette_box"] = {
		label = 'Branded Cigarette Box',
		weight = 200,
	},

	["ninja_figure"] = {
		label = 'Ninja Figure',
		weight = 50,
	},

	["painting"] = {
		label = 'Painting',
		weight = 100,
	},

	["statue"] = {
		label = 'Statue',
		weight = 200,
	},

	["ancient_egypt_artifact"] = {
		label = 'Ancient Egypt Artifact',
		weight = 200,
	},

	["ruby"] = {
		label = 'Ruby',
		weight = 100,
	},

	["kq_meth_low"] = {
		label = "Meth (Low grade)",
		weight = 100,
		stack = true,
		close = true,
	},

	["kq_meth_mid"] = {
		label = "Meth (Medium grade)",
		weight = 100,
		stack = true,
		close = true,
	},

	["kq_meth_high"] = {
		label = "Meth (High grade)",
		weight = 100,
		stack = true,
		close = true,
	},

	["kq_ethanol"] = {
		label = "Ethanol",
		weight = 200,
		stack = true,
		close = true,
	},

	["kq_meth_pills"] = {
		label = "Pseudoephedrine",
		weight = 300,
		stack = true,
		close = true,
	},

    ["kq_amphetamines_lab_kit"] = {
        label = "Amphetamines cooking kit",
        weight = 5000,
        stack = true,
        close = true,
    },

    ["kq_amphetamines_low"] = {
        label = "Amphetamines (Low purity)",
        weight = 100,
        stack = true,
        close = true,
    },

    ["kq_amphetamines_mid"] = {
        label = "Amphetamines (Medium purity)",
        weight = 100,
        stack = true,
        close = true,
    },

    ['kq_weed_pot'] = {
        label = "Weed pot",
        weight = 2000,
        stack = true,
        consume = 0,
        server = {
            export = 'kq_weed.UsePot',
        },
    },

    ['kq_weed_table'] = {
        label = "Weed Packing Table",
        weight = 8000,
        stack = true,
        consume = 0,
        server = {
            export = 'kq_weed.UseTable',
        },
    },

    ['kq_weed_press'] = {
        label = "Weed Press",
        weight = 10000,
        stack = true,
        consume = 0,
        server = {
            export = 'kq_weed.UsePress',
        },
    },

    ['kq_weed_tent'] = {
        label = "Grow tent",
        weight = 4000,
        stack = true,
        consume = 0,
    },

    ['kq_weed_watering_system'] = {
        label = "Plant watering system",
        weight = 3000,
        stack = true,
        consume = 0,
    },

    ['kq_weed_bag_empty'] = {
        label = "Plastic baggie",
        weight = 1,
        stack = true,
        consume = 0,
    },

    ['kq_weed_paper'] = {
        label = "Rolling paper",
        weight = 1,
        stack = true,
        consume = 0,
    },

    ['kq_weed_pesticide_spray'] = {
        label = "Pesticide Spray",
        weight = 500,
        stack = true,
        consume = 0,
    },

    ['kq_weed_fertilizer_speed'] = {
        label = "Fertilizer (Growth Speed)",
        weight = 500,
        stack = true,
        consume = 0,
    },

    ['kq_weed_fertilizer_yield'] = {
        label = "Fertilizer (Yield Amount)",
        weight = 500,
        stack = true,
        consume = 0,
    },

    ['kq_weed_fertilizer_resistance'] = {
        label = "Fertilizer (Resistance Booster)",
        weight = 500,
        stack = true,
        consume = 0,
    },

    ['kq_weed_fertilizer_blackmarket'] = {
        label = "Fertilizer (Blackmarket)",
        weight = 500,
        stack = true,
        consume = 0,
    },

    ['kq_weed_bud_og_kush'] = {
        label = "Weed bud (OG Kush)",
        weight = 5,
        stack = true,
        consume = 0,
    },

    ['kq_weed_seed_og_kush'] = {
        label = "Weed seed (OG Kush)",
        weight = 1,
        stack = true,
        consume = 0,
    },

    ['kq_weed_bag_og_kush'] = {
        label = "Weed baggie (OG Kush)",
        weight = 5,
        stack = true,
        consume = 0,
    },

    ['kq_weed_joint_og_kush'] = {
        label = "Joint (OG Kush)",
        weight = 3,
        stack = true,
        consume = 0,
    },

    ['kq_weed_brick_og_kush'] = {
        label = "Weed brick (OG Kush)",
        weight = 100,
        stack = true,
        consume = 0,
    },



    ['kq_weed_bud_purple_haze'] = {
        label = "Weed bud (Purple Haze)",
        weight = 5,
        stack = true,
        consume = 0,
    },

    ['kq_weed_seed_purple_haze'] = {
        label = "Weed seed (Purple Haze)",
        weight = 1,
        stack = true,
        consume = 0,
    },

    ['kq_weed_bag_purple_haze'] = {
        label = "Weed baggie (Purple Haze)",
        weight = 5,
        stack = true,
        consume = 0,
    },

    ['kq_weed_joint_purple_haze'] = {
        label = "Joint (Purple Haze)",
        weight = 3,
        stack = true,
        consume = 0,
    },

    ['kq_weed_brick_purple_haze'] = {
        label = "Weed brick (Purple Haze)",
        weight = 100,
        stack = true,
        consume = 0,
    },



    ['kq_weed_bud_white_widow'] = {
        label = "Weed bud (White widow)",
        weight = 5,
        stack = true,
        consume = 0,
    },

    ['kq_weed_seed_white_widow'] = {
        label = "Weed seed (White widow)",
        weight = 1,
        stack = true,
        consume = 0,
    },

    ['kq_weed_bag_white_widow'] = {
        label = "Weed baggie (White widow)",
        weight = 5,
        stack = true,
        consume = 0,
    },

    ['kq_weed_joint_white_widow'] = {
        label = "Joint (White widow)",
        weight = 3,
        stack = true,
        consume = 0,
    },

    ['kq_weed_brick_white_widow'] = {
        label = "Weed brick (White widow)",
        weight = 100,
        stack = true,
        consume = 0,
    },


    ['kq_weed_bud_blue_dream'] = {
        label = "Weed bud (Blue dream)",
        weight = 5,
        stack = true,
        consume = 0,
    },

    ['kq_weed_seed_blue_dream'] = {
        label = "Weed seed (Blue dream)",
        weight = 1,
        stack = true,
        consume = 0,
    },
    ["coke"] = {
        label = "Cocaine",
        weight = 500,
        stack = true,
        close = true,
    },

    ["cement"] = {
        label = "Cement",
        weight = 5000,
        stack = true,
        close = true,
        consume = 0,
        server = {
            export = 'kq_cocaine.UseCement',
        },
    },

    ["hydrochloric_acid"] = {
        label = "Hydrochloric acid",
        weight = 1000,
        stack = true,
        close = true,
    },

    ["coca_blend"] = {
        label = "Coca blend",
        weight = 200,
        stack = true,
        close = true,
    },

    ["coca_leaf"] = {
        label = "Coca leaf",
        weight = 100,
        stack = true,
        close = true,
        consume = 0,
        server = {
            export = 'kq_cocaine.UseLeaf',
        },
    },

    ["coca_paste"] = {
        label = "Coca paste",
        weight = 100,
        stack = true,
        close = true,
    },

    ["gasoline"] = {
        label = "Gasoline",
        weight = 3000,
        stack = true,
        close = true,
    },

    ['kq_weed_bag_blue_dream'] = {
        label = "Weed baggie (Blue dream)",
        weight = 5,
        stack = true,
        consume = 0,
    },

    ['kq_weed_joint_blue_dream'] = {
        label = "Joint (Blue dream)",
        weight = 3,
        stack = true,
        consume = 0,
    },

    ['kq_weed_brick_blue_dream'] = {
        label = "Weed brick (Blue dream)",
        weight = 100,
        stack = true,
        consume = 0,
    },

    ["kq_amphetamines_high"] = {
        label = "Amphetamines (High purity)",
        weight = 100,
        stack = true,
        close = true,
    },

    ["kq_sulfuric_acid"] = {
        label = "Sulfuric Acid",
        weight = 500,
        stack = true,
        close = true,
    },

    ["kq_sodium"] = {
        label = "Sodium Borohydride",
        weight = 500,
        stack = true,
        close = true,
    },

    ["kq_caffeine_powder"] = {
        label = "Caffeine powder",
        weight = 500,
        stack = true,
        close = true,
    },

	["kq_lithium"] = {
		label = "Lithium pack",
		weight = 300,
		stack = true,
		close = true,
	},

	["kq_acetone"] = {
		label = "Acetone",
		weight = 1000,
		stack = true,
		close = true,
	},

	["kq_ammonia"] = {
		label = "Ammonia",
		weight = 1000,
		stack = true,
		close = true,
	},

	["kq_meth_lab_kit"] = {
		label = "Meth cooking kit",
		weight = 3000,
		stack = true,
		close = true,
	},

	["diamond"] = {
		label = 'Diamond',
		weight = 100,
	},

	["danburite"] = {
		label = 'Danburite',
		weight = 100,
	},

	["television"] = {
		label = 'Television',
		weight = 5000,
		stack = false
	},

   ["coffee_machine"] = {
		label = 'Coffee Machine',
		weight = 1000,
		stack = false
	},

	["computer"] = {
		label = 'Computer',
		weight = 2500,
		stack = false
	},

	["microwave"] = {
		label = 'Microwave',
		weight = 3500,
		stack = false
	},

	["music_player"] = {
		label = 'Music Player',
		weight = 2000,
		stack = false
	},

	["lockpick"] = {
		label = 'Lockpick',
		weight = 10,
		stack = true
	},

	["cutter"] = {
		label = 'Cutter',
		weight = 1000,
		stack = true
	},

['bandage'] = {
    label = 'Bandage',
    weight = 0,
    description = 'Can be directly used in the inventory, stops bleeding from wounds and increases health',
	stack = true,
},
['ifak'] = {
    label = 'IFAK',
    weight = 200,
    description = 'Can be directly used in the inventory, contains first aid kit',
	stack = true,
	close = true,
},
['painkillers'] = {
    label = 'Painkillers',
    weight = 0,
    description = 'Can be directly used in the inventory to reduce pain and stress',
	stack = true,
	close = true,
},
['temporary_tourniquet'] = {
    label = 'Temporary Tourniquet',
    weight = 10,
    description = 'A temporary tourniquet that can directly be used in the inventory to stop bleeding',
	stack = true,
	close = true,
},
['pager'] = {
    label = 'Pager',
    weight = 10,
    description = 'Used to inform medical staff at the hospital of an incoming patient',
	stack = false,
	close = true,
},
['tourniquet'] = {
    label = 'Tourniquet',
    weight = 10,
	stack = true,
},
['field_dressing'] = {
    label = 'Field Dressing',
    weight = 10,
	stack = true,
},
['elastic_bandage'] = {
    label = 'Elastic Bandage',
    weight = 10,
	stack = true,
},
['quick_clot'] = {
    label = 'Quick Clot',
    weight = 10,
	stack = true,
},
['packing_bandage'] = {
    label = 'Packing Bandage',
    weight = 10,
	stack = true,
},
['sewing_kit'] = {
    label = 'Sewing Kit',
    weight = 10,
	stack = true,
},
['epinephrine'] = {
    label = 'Epinephrine',
    weight = 10,
    description = 'Epinephrine, also known as adrenaline, increases the body\'s pulse as well as suppress pain.',
	stack = true,
},
['morphine'] = {
    label = 'Morphine',
    weight = 10,
    description = 'Morphine decreases the body\'s pulse as well as suppress pain.',
	stack = true,
},
['propofol'] = {
    label = 'Propofol',
    weight = 10,
    description = 'Propofol, is a powerful sedation medication.',
	stack = true,
},
['blood250ml'] = {
    label = 'Blood Pack 250ml',
    weight = 10,
	stack = true,
},
['blood500ml'] = {
    label = 'Blood Pack 500ml',
    weight = 10,
	stack = true,
},
['saline250ml'] = {
    label = 'Saline 250ml',
    weight = 10,
	stack = true,
},
['saline500ml'] = {
    label = 'Saline 500ml',
    weight = 10,
	stack = true,
},
['revivekit'] = {
    label = 'Emergency Revive Kit',
    weight = 10,
	stack = true,
},
['stretcher'] = {
    label = 'Stretcher',
    weight = 1000,
    description = 'A medical stretcher to carry wounded patients',
	stack = true,
},
['wheelchair'] = {
    label = 'Wheelchair',
    weight = 1000,
	stack = true,
},
['crutch'] = {
    label = 'Crutch',
    weight = 1000,
	stack = true,
},
['bodybag'] = {
    label = 'Bodybag',
    weight = 1000,
    description = 'A bag to put dead bodies in',
	stack = true,
},
['ecg'] = {
    label = 'ECG',
    weight = 200,
	stack = false,
	close = true,
    description = 'Electrocardiography is an electrophysiological examination method of the heart where the heart\'s electrical activity is recorded by electrodes connected to an ECG device.',
},
['neckbrace'] = {
        label = 'Neck Brace',
        weight = 1000,
        description = '',
		stack = true,
},
   ['neckcast'] = {
        label = 'Neck Cast',
        weight = 1000,
        description = '',
		stack = true,
},
   ['legsplint'] = {
        label = 'Leg Splint',
        weight = 1000,
        description = '',
		stack = true,
},
   ['legcast'] = {
        label = 'Leg Cast',
        weight = 1000,
        description = '',
		stack = true,
},
   ['armsplint'] = {
        label = 'Arm Splint',
        weight = 1000,
        description = '',
		stack = true,
},
   ['armcast'] = {
        label = 'Arm Cast',
        weight = 1000,
        description = '',
		stack = true,
},
   ['propofol'] = {
        label = 'Propofol',
        weight = 1000,
        description = '',
		stack = true,
},
['castsaw'] = {
    label = 'Cast Saw',
    weight = 10,
    description = '',
    stack = true,
},
['kq_outfitbag'] = {
    name = 'kq_outfitbag',
    label = 'Outfit Bag',
    weight = 4000,
    type = 'item',
    image = 'kq_outfitbag.png',
    useable = true,
    stack = true,
    description = 'Holds different outfits',
},
	['evidence_bag'] = {
		name = 'evidence_bag',
		label = 'Evidence Bag',
		weight = 100,
		type = "item",
		image = "evidence_bag.png",
		useable = true,
		stack = false,
		client = {
			event = 'CPolice:Client:UseEvidenceBag'
		}
	},
['stolen_letter'] = {
    label = 'Stolen Letter',
    weight = 10,
    stack = false,
    close = true,
    description = 'A letter that probably should have been delivered weeks ago',
},

['birthday_card'] = {
    label = 'Birthday Card',
    weight = 5,
    stack = false,
    close = true,
    description = 'Happy Birthday... to someone. Probably has a fiver in it',
},

['final_demand'] = {
    label = 'Final Demand',
    weight = 10,
    stack = false,
    close = true,
    description = 'A very angry red letter. Someone is in trouble',
},

['mystery_parcel'] = {
    label = 'Mystery Parcel',
    weight = 200,
    stack = false,
    close = true,
    description = 'No idea what is in here. Could be anything',
},

['pizza_voucher'] = {
    label = 'Pizza Voucher',
    weight = 1,
    stack = false,
    close = true,
    description = '50% off at Cluckin Bell. Expired last month',
},

['love_letter'] = {
    label = 'Love Letter',
    weight = 5,
    stack = false,
    close = true,
    description = 'Someone poured their heart out in this. Bit cringe tbh',
},

['cheque'] = {
    label = 'Cheque',
    weight = 5,
    stack = false,
    close = true,
    description = 'Who even uses cheques anymore',
},

['jury_summons'] = {
    label = 'Jury Summons',
    weight = 10,
    stack = false,
    close = true,
    description = 'Not your problem anymore',
},
		['evidence_report'] = {
			label = 'Forensic Report',
			weight = 10,
			stack = false,
			close = true,
			description = 'A forensic analysis report generated by the forensics lab',
		},

		['evidence_pack'] = {
		name = 'evidence_pack',
		label = 'Evidence Pack',
		weight = 100,
		type = "item",
		image = "evidence_pack.png",
		useable = true,
		stack = false,
		client = {
			event = 'CPolice:Client:UseEvidencePack'
		}
	},
['copper_wire'] = {
    name = 'copper_wire',
    label = 'Copper Wire',
    weight = 500,
    type = 'item',
    image = 'copper_wire.png',
    useable = false,
},
['rock'] = {
    label = "Rock",
    weight = 20,
    stack = true,
    close = false,
},
['copper'] = {
    label = "Copper",
    weight = 20,
    stack = true,
    close = false,
},
['crystal'] = {
    label = "Crystal",
    weight = 20,
    stack = true,
    close = false,
},
['emerald'] = {
    label = "Emeral",
    weight = 20,
    stack = true,
    close = false,
},
['garnet'] = {
    label = "garnet",
    weight = 20,
    stack = true,
    close = false,
},
['gold'] = {
    label = "Gold",
    weight = 20,
    stack = true,
    close = false,
},
['lead'] = {
    label = "Lead",
    weight = 20,
    stack = true,
    close = false,
},
['nefrit'] = {
    label = "Nefrit",
    weight = 20,
    stack = true,
    close = false,
},
['quartz'] = {
    label = "Quartz",
    weight = 20,
    stack = true,
    close = false,
},

    ["cement"] = {
        label = "Cement",
        weight = 5000,
        stack = true,
        close = true,
        consume = 0,
    },

    ["expensive_sneakers"] = {
        label = "Designer sneakers",
        weight = 1000,
        stack = true,
        close = true,
    },

    ["expensive_bag"] = {
        label = "Designer bag",
        weight = 1000,
        stack = true,
        close = true,
    },
-- ============================================================================
-- ENVI-RESTAURANTS: OX_INVENTORY ITEMS
-- Copy these items into your ox_inventory/data/items.lua
-- ============================================================================
--
-- IMPORTANT: Do NOT add 'consume = 1' to any edible items!
-- The envi-restaurants script handles item consumption with custom animations,
-- props, and status effects. If you add 'consume = 1', ox_inventory will
-- handle the item internally and bypass our eating system entirely.
--
-- ============================================================================

-- ============================================================================
-- RAW INGREDIENTS (Base Items)
-- ============================================================================
['flour'] = {
    label = 'Flour',
    weight = 100,
    stack = true,
},
['yeast'] = {
    label = 'Yeast',
    weight = 50,
    stack = true,
},
['sugar'] = {
    label = 'Sugar',
    weight = 100,
    stack = true,
},
['corn_flour'] = {
    label = 'Corn Flour',
    weight = 100,
    stack = true,
},
['water'] = {
    label = 'Water',
    weight = 100,
    stack = true,
},
['salt'] = {
    label = 'Salt',
    weight = 50,
    stack = true,
},
['tomato'] = {
    label = 'Tomato',
    weight = 80,
    stack = true,
},
['garlic'] = {
    label = 'Garlic',
    weight = 30,
    stack = true,
},
['olive_oil'] = {
    label = 'Olive Oil',
    weight = 150,
    stack = true,
},
['basil'] = {
    label = 'Basil',
    weight = 20,
    stack = true,
},
['heavy_cream'] = {
    label = 'Heavy Cream',
    weight = 200,
    stack = true,
},
['butter'] = {
    label = 'Butter',
    weight = 100,
    stack = true,
},
['parmesan_cheese'] = {
    label = 'Parmesan Cheese',
    weight = 100,
    stack = true,
},
['orange_juice'] = {
    label = 'Orange Juice',
    weight = 200,
    stack = true,
},
['chicken_broth'] = {
    label = 'Chicken Broth',
    weight = 200,
    stack = true,
},

-- ============================================================================
-- BEVERAGE INGREDIENTS
-- ============================================================================
['coffee_beans'] = {
    label = 'Coffee Beans',
    weight = 50,
    stack = true,
},
['ice'] = {
    label = 'Ice',
    weight = 20,
    stack = true,
},
['cola_syrup'] = {
    label = 'Cola Syrup',
    weight = 100,
    stack = true,
},
['carbonated_water'] = {
    label = 'Carbonated Water',
    weight = 100,
    stack = true,
},
['orange'] = {
    label = 'Orange',
    weight = 80,
    stack = true,
},

-- ============================================================================
-- RAW PROTEINS - BEEF & PORK
-- ============================================================================
['raw_beef_patty'] = {
    label = 'Raw Beef Patty',
    weight = 150,
    stack = true,
},
['raw_bacon'] = {
    label = 'Raw Bacon',
    weight = 100,
    stack = true,
},
['raw_steak'] = {
    label = 'Raw Steak',
    weight = 200,
    stack = true,
},
['raw_ribeye'] = {
    label = 'Raw Ribeye',
    weight = 300,
    stack = true,
},
['raw_filet'] = {
    label = 'Raw Filet Mignon',
    weight = 250,
    stack = true,
},
['raw_tbone'] = {
    label = 'Raw T-Bone',
    weight = 350,
    stack = true,
},
['raw_pork'] = {
    label = 'Raw Pork',
    weight = 200,
    stack = true,
},
['raw_ground_beef'] = {
    label = 'Raw Ground Beef',
    weight = 150,
    stack = true,
},
['raw_beef_chunks'] = {
    label = 'Raw Beef Chunks',
    weight = 200,
    stack = true,
},
['raw_ribs'] = {
    label = 'Raw Pork Ribs',
    weight = 400,
    stack = true,
},
['raw_sausage'] = {
    label = 'Raw Sausage',
    weight = 120,
    stack = true,
},

-- ============================================================================
-- RAW PROTEINS - CHICKEN
-- ============================================================================
['raw_chicken'] = {
    label = 'Raw Chicken',
    weight = 200,
    stack = true,
},
['raw_chicken_breast'] = {
    label = 'Raw Chicken Breast',
    weight = 200,
    stack = true,
},
['raw_chicken_thigh'] = {
    label = 'Raw Chicken Thigh',
    weight = 180,
    stack = true,
},
['raw_chicken_leg'] = {
    label = 'Raw Chicken Leg',
    weight = 150,
    stack = true,
},
['raw_chicken_tenders'] = {
    label = 'Raw Chicken Tenders',
    weight = 150,
    stack = true,
},

-- ============================================================================
-- RAW PROTEINS - DELI MEATS
-- ============================================================================
['ham'] = {
    label = 'Ham',
    weight = 250,
    stack = true,
},
['turkey_breast'] = {
    label = 'Turkey Breast',
    weight = 250,
    stack = true,
},
['roast_beef'] = {
    label = 'Roast Beef',
    weight = 250,
    stack = true,
},

-- ============================================================================
-- RAW SEAFOOD
-- ============================================================================
['raw_salmon'] = {
    label = 'Raw Salmon Fillet',
    weight = 250,
    stack = true,
},
['raw_tuna'] = {
    label = 'Raw Tuna Steak',
    weight = 250,
    stack = true,
},
['raw_fish'] = {
    label = 'Raw White Fish',
    weight = 200,
    stack = true,
},
['raw_shrimp'] = {
    label = 'Raw Shrimp',
    weight = 150,
    stack = true,
},
['raw_lobster'] = {
    label = 'Raw Lobster Tail',
    weight = 300,
    stack = true,
},
['tuna'] = {
    label = 'Canned Tuna',
    weight = 150,
    stack = true,
},

-- ============================================================================
-- RAW PROTEINS - OTHER
-- ============================================================================
['tofu'] = {
    label = 'Tofu',
    weight = 150,
    stack = true,
},

-- ============================================================================
-- VEGETABLES & HERBS
-- ============================================================================
['lettuce'] = {
    label = 'Lettuce',
    weight = 100,
    stack = true,
},
['onion'] = {
    label = 'Onion',
    weight = 80,
    stack = true,
},
['potato'] = {
    label = 'Potato',
    weight = 150,
    stack = true,
},
['cucumber'] = {
    label = 'Cucumber',
    weight = 80,
    stack = true,
},
['bell_pepper'] = {
    label = 'Bell Pepper',
    weight = 80,
    stack = true,
},
['mushrooms'] = {
    label = 'Mushrooms',
    weight = 100,
    stack = true,
},
['zucchini'] = {
    label = 'Zucchini',
    weight = 120,
    stack = true,
},
['corn_on_cob'] = {
    label = 'Corn on the Cob',
    weight = 150,
    stack = true,
},
['artichokes'] = {
    label = 'Artichoke Hearts',
    weight = 100,
    stack = true,
},
['mint'] = {
    label = 'Fresh Mint',
    weight = 20,
    stack = true,
},
['oregano'] = {
    label = 'Oregano',
    weight = 20,
    stack = true,
},
['rosemary'] = {
    label = 'Rosemary',
    weight = 20,
    stack = true,
},

-- ============================================================================
-- FRUITS
-- ============================================================================
['lemon'] = {
    label = 'Lemon',
    weight = 60,
    stack = true,
},
['lime'] = {
    label = 'Lime',
    weight = 50,
    stack = true,
},
['banana'] = {
    label = 'Banana',
    weight = 100,
    stack = true,
},
['strawberry'] = {
    label = 'Strawberries',
    weight = 80,
    stack = true,
},
['pineapple'] = {
    label = 'Pineapple',
    weight = 200,
    stack = true,
},
['pineapple_slice'] = {
    label = 'Pineapple Slices',
    weight = 80,
    stack = true,
},
['avocado'] = {
    label = 'Avocado',
    weight = 100,
    stack = true,
},
['fruit_mix'] = {
    label = 'Mixed Fruit',
    weight = 150,
    stack = true,
},

-- ============================================================================
-- DAIRY & CHEESE
-- ============================================================================
['block_cheese'] = {
    label = 'Block Cheese',
    weight = 200,
    stack = true,
},
['mozzarella'] = {
    label = 'Mozzarella',
    weight = 150,
    stack = true,
},
['gorgonzola'] = {
    label = 'Gorgonzola',
    weight = 150,
    stack = true,
},
['ricotta'] = {
    label = 'Ricotta',
    weight = 200,
    stack = true,
},
['parmesan'] = {
    label = 'Parmesan (Grated)',
    weight = 100,
    stack = true,
},
['halloumi_cheese'] = {
    label = 'Halloumi',
    weight = 150,
    stack = true,
},
['cream_cheese'] = {
    label = 'Cream Cheese',
    weight = 150,
    stack = true,
},
['eggs'] = {
    label = 'Eggs',
    weight = 60,
    stack = true,
},
['milk'] = {
    label = 'Milk',
    weight = 200,
    stack = true,
},

-- ============================================================================
-- RAW PASTA & GRAINS
-- ============================================================================
['raw_elbow_macaroni'] = {
    label = 'Raw Elbow Macaroni',
    weight = 100,
    stack = true,
},
['spaghetti'] = {
    label = 'Spaghetti',
    weight = 100,
    stack = true,
},
['penne'] = {
    label = 'Penne',
    weight = 100,
    stack = true,
},
['naan_dough'] = {
    label = 'Naan Dough',
    weight = 80,
    stack = true,
},
['rice'] = {
    label = 'Rice',
    weight = 100,
    stack = true,
},

-- ============================================================================
-- PIZZA SUPPLIES
-- ============================================================================
['pizza_dough'] = {
    label = 'Pizza Dough',
    weight = 200,
    stack = true,
},
['tomato_sauce'] = {
    label = 'Tomato Sauce',
    weight = 150,
    stack = true,
},
['pepperoni'] = {
    label = 'Pepperoni',
    weight = 80,
    stack = true,
},
['prosciutto'] = {
    label = 'Prosciutto',
    weight = 100,
    stack = true,
},

-- ============================================================================
-- MEXICAN INGREDIENTS
-- ============================================================================
['tortilla'] = {
    label = 'Flour Tortilla',
    weight = 40,
    stack = true,
},
['enchilada_sauce'] = {
    label = 'Enchilada Sauce',
    weight = 150,
    stack = true,
},

-- ============================================================================
-- ASIAN INGREDIENTS
-- ============================================================================
['rice_noodles'] = {
    label = 'Rice Noodles',
    weight = 80,
    stack = true,
},
['ramen_noodles'] = {
    label = 'Ramen Noodles',
    weight = 100,
    stack = true,
},
['soy_sauce'] = {
    label = 'Soy Sauce',
    weight = 100,
    stack = true,
},
['miso_paste'] = {
    label = 'Miso Paste',
    weight = 100,
    stack = true,
},
['seaweed'] = {
    label = 'Nori Seaweed',
    weight = 30,
    stack = true,
},
['beef_broth'] = {
    label = 'Beef Broth',
    weight = 200,
    stack = true,
},
['pork_broth'] = {
    label = 'Pork Broth',
    weight = 200,
    stack = true,
},
['sliced_pork'] = {
    label = 'Chashu Pork',
    weight = 100,
    stack = true,
},

-- ============================================================================
-- SAUCES & CONDIMENTS
-- ============================================================================
['bbq_sauce'] = {
    label = 'BBQ Sauce',
    weight = 150,
    stack = true,
},
['honey'] = {
    label = 'Honey',
    weight = 150,
    stack = true,
},
['brown_sugar'] = {
    label = 'Brown Sugar',
    weight = 100,
    stack = true,
},
['marinara_sauce'] = {
    label = 'Marinara Sauce',
    weight = 150,
    stack = true,
},
['alfredo_sauce'] = {
    label = 'Alfredo Sauce',
    weight = 150,
    stack = true,
},

-- ============================================================================
-- BUBBLE TEA INGREDIENTS
-- ============================================================================
['black_tea'] = {
    label = 'Black Tea',
    weight = 50,
    stack = true,
},
['tapioca_pearls'] = {
    label = 'Tapioca Pearls',
    weight = 100,
    stack = true,
},
['taro_powder'] = {
    label = 'Taro Powder',
    weight = 80,
    stack = true,
},
['matcha_powder'] = {
    label = 'Matcha Powder',
    weight = 50,
    stack = true,
},

-- ============================================================================
-- PACKAGING & CUPS
-- ============================================================================
['paper_cup'] = {
    label = 'Paper Cup',
    weight = 10,
    stack = true,
},
['glass_cup'] = {
    label = 'Glass Cup',
    weight = 100,
    stack = true,
},
['bubble_tea_cup'] = {
    label = 'Bubble Tea Cup',
    weight = 20,
    stack = true,
},
['water_bottle'] = {
    label = 'Water Bottle',
    weight = 100,
    stack = true,
},
['frycarton'] = {
    label = 'Fry Carton',
    weight = 10,
    stack = true,
},
['sprunk_syrup'] = {
    label = 'Sprunk Syrup',
    weight = 100,
    stack = true,
},

-- ============================================================================
-- RAW FRIED ITEMS
-- ============================================================================
['raw_fries'] = {
    label = 'Raw Fries',
    weight = 150,
    stack = true,
},
['raw_mozzarella_sticks'] = {
    label = 'Raw Mozzarella Sticks',
    weight = 120,
    stack = true,
},

-- ============================================================================
-- REQUIRED UTENSILS
-- ============================================================================
['knife'] = {
    label = 'Knife',
    weight = 100,
    stack = true,
},

-- ============================================================================
-- BAKED ITEMS (Oven Outputs)
-- ============================================================================
['burger_bun'] = {
    label = 'Burger Bun',
    weight = 50,
    stack = true,
},
['taco_shell'] = {
    label = 'Taco Shell',
    weight = 30,
    stack = true,
},
['bread_loaf'] = {
    label = 'Bread Loaf',
    weight = 300,
    stack = true,
},

-- PIZZA OUTPUTS
['pizza_margherita'] = {
    label = 'Margherita Pizza',
    weight = 400,
    stack = true,
},
['pizza_pepperoni'] = {
    label = 'Pepperoni Pizza',
    weight = 450,
    stack = true,
},
['pizza_hawaii'] = {
    label = 'Hawaiian Pizza',
    weight = 450,
    stack = true,
},
['pizza_quattro_formaggi'] = {
    label = 'Quattro Formaggi Pizza',
    weight = 450,
    stack = true,
},
['pizza_marinara'] = {
    label = 'Marinara Pizza',
    weight = 380,
    stack = true,
},
['pizza_prosciutto'] = {
    label = 'Prosciutto Pizza',
    weight = 450,
    stack = true,
},
['pizza_capricciosa'] = {
    label = 'Capricciosa Pizza',
    weight = 480,
    stack = true,
},
['pizza_tonno'] = {
    label = 'Tuna Pizza',
    weight = 450,
    stack = true,
},

-- BAKERY OUTPUTS
['croissant'] = {
    label = 'Croissant',
    weight = 60,
    stack = true,
},
['bagel'] = {
    label = 'Bagel',
    weight = 80,
    stack = true,
},
['pretzel'] = {
    label = 'Pretzel',
    weight = 70,
    stack = true,
},
['muffin'] = {
    label = 'Muffin',
    weight = 80,
    stack = true,
},
['donut'] = {
    label = 'Donut',
    weight = 60,
    stack = true,
},
['banana_bread'] = {
    label = 'Banana Bread',
    weight = 200,
    stack = true,
},
['baguette'] = {
    label = 'Baguette',
    weight = 200,
    stack = true,
},
['lemon_cake'] = {
    label = 'Lemon Cake',
    weight = 300,
    stack = true,
},
['danish_pastry'] = {
    label = 'Danish Pastry',
    weight = 70,
    stack = true,
},
['biscuit'] = {
    label = 'Biscuit',
    weight = 40,
    stack = true,
},

-- ============================================================================
-- CUTTING BOARD OUTPUTS
-- ============================================================================
['bread_slice'] = {
    label = 'Bread Slice',
    weight = 40,
    stack = true,
},
['sliced_ham'] = {
    label = 'Sliced Ham',
    weight = 40,
    stack = true,
},
['sliced_turkey'] = {
    label = 'Sliced Turkey',
    weight = 40,
    stack = true,
},
['sliced_roast_beef'] = {
    label = 'Sliced Roast Beef',
    weight = 40,
    stack = true,
},
['shredded_cheese'] = {
    label = 'Shredded Cheese',
    weight = 20,
    stack = true,
},
['sliced_cheese'] = {
    label = 'Sliced Cheese',
    weight = 25,
    stack = true,
},
['sliced_tomato'] = {
    label = 'Sliced Tomato',
    weight = 20,
    stack = true,
},
['sliced_cucumber'] = {
    label = 'Sliced Cucumber',
    weight = 20,
    stack = true,
},
['sliced_lemon'] = {
    label = 'Sliced Lemon',
    weight = 15,
    stack = true,
},
['sliced_fish'] = {
    label = 'Sliced Fish',
    weight = 50,
    stack = true,
},
['chopped_salad'] = {
    label = 'Chopped Salad',
    weight = 80,
    stack = true,
},
['diced_potatoes'] = {
    label = 'Diced Potatoes',
    weight = 80,
    stack = true,
},
['sashimi_salmon'] = {
    label = 'Salmon Sashimi',
    weight = 60,
    stack = true,
},
['sashimi_tuna'] = {
    label = 'Tuna Sashimi',
    weight = 60,
    stack = true,
},
['prepared_shrimp'] = {
    label = 'Prepared Shrimp',
    weight = 25,
    stack = true,
},
['prepared_lobster'] = {
    label = 'Prepared Lobster',
    weight = 150,
    stack = true,
},
['sliced_fruit'] = {
    label = 'Sliced Fruit',
    weight = 40,
    stack = true,
},

-- ============================================================================
-- STOVE OUTPUTS
-- ============================================================================
['elbow_macaroni'] = {
    label = 'Elbow Macaroni',
    weight = 120,
    stack = true,
},
['shredded_chicken'] = {
    label = 'Shredded Chicken',
    weight = 150,
    stack = true,
},

-- ============================================================================
-- GRILL OUTPUTS - BEEF
-- ============================================================================
['beef_patty'] = {
    label = 'Beef Patty',
    weight = 150,
    stack = true,
},
['cooked_bacon'] = {
    label = 'Cooked Bacon',
    weight = 100,
    stack = true,
},
 ['pork_ribs'] = {
    label = 'Cooked Ribs',
    weight = 100,
    stack = true,
},   
['steak'] = {
    label = 'Steak',
    weight = 200,
    stack = true,
},
['carnitas'] = {
    label = 'Carnitas',
    weight = 180,
    stack = true,
},
['ground_beef'] = {
    label = 'Ground Beef',
    weight = 150,
    stack = true,
},
['ribeye_steak'] = {
    label = 'Ribeye Steak',
    weight = 280,
    stack = true,
},
['filet_mignon'] = {
    label = 'Filet Mignon',
    weight = 230,
    stack = true,
},
['t_bone_steak'] = {
    label = 'T-Bone Steak',
    weight = 330,
    stack = true,
},

-- GRILL OUTPUTS - CHICKEN
['grilled_chicken_breast'] = {
    label = 'Grilled Chicken Breast',
    weight = 180,
    stack = true,
},
['grilled_chicken_thigh'] = {
    label = 'Grilled Chicken Thigh',
    weight = 160,
    stack = true,
},
['bbq_chicken'] = {
    label = 'BBQ Chicken',
    weight = 200,
    stack = true,
},

-- GRILL OUTPUTS - RIBS & BBQ
['bbq_ribs'] = {
    label = 'BBQ Ribs',
    weight = 380,
    stack = true,
},
['honey_glazed_ribs'] = {
    label = 'Honey Glazed Ribs',
    weight = 380,
    stack = true,
},

-- GRILL OUTPUTS - SEAFOOD
['grilled_salmon'] = {
    label = 'Grilled Salmon',
    weight = 230,
    stack = true,
},
['grilled_fish'] = {
    label = 'Grilled Fish',
    weight = 180,
    stack = true,
},

-- GRILL OUTPUTS - MISC
['grilled_sausage'] = {
    label = 'Grilled Sausage',
    weight = 100,
    stack = true,
},
['grilled_corn'] = {
    label = 'Grilled Corn',
    weight = 140,
    stack = true,
},
['grilled_zucchini'] = {
    label = 'Grilled Zucchini',
    weight = 100,
    stack = true,
},
['grilled_mushrooms'] = {
    label = 'Grilled Mushrooms',
    weight = 80,
    stack = true,
},
['grilled_pineapple'] = {
    label = 'Grilled Pineapple',
    weight = 100,
    stack = true,
},
['beef_skewer'] = {
    label = 'Beef Skewer',
    weight = 200,
    stack = true,
},
['grilled_halloumi'] = {
    label = 'Grilled Halloumi',
    weight = 130,
    stack = true,
},
['grilled_tofu'] = {
    label = 'Grilled Tofu',
    weight = 130,
    stack = true,
},
['grilled_naan'] = {
    label = 'Grilled Naan',
    weight = 70,
    stack = true,
},

-- ============================================================================
-- FRYER OUTPUTS
-- ============================================================================
['cooked_fries'] = {
    label = 'Fries',
    weight = 150,
    stack = true,
},
['cooked_chicken_tenders'] = {
    label = 'Chicken Tenders',
    weight = 150,
    stack = true,
},
['cooked_mozzarella_sticks'] = {
    label = 'Mozzarella Sticks',
    weight = 120,
    stack = true,
},
['fries'] = {
    label = 'Fries',
    weight = 150,
    stack = true,
},
['chicken_tenders'] = {
    label = 'Chicken Tenders',
    weight = 150,
    stack = true,
},
['mozzarella_sticks'] = {
    label = 'Mozzarella Sticks',
    weight = 120,
    stack = true,
},

-- ============================================================================
-- FINISHING STATION OUTPUTS - BURGERS
-- ============================================================================
['cheeseburger'] = {
    label = 'Cheeseburger',
    weight = 250,
    stack = true,
},
['bacon_burger'] = {
    label = 'Bacon Burger',
    weight = 250,
    stack = true,
},
['double_burger'] = {
    label = 'Double Burger',
    weight = 350,
    stack = true,
},

-- FINISHING STATION OUTPUTS - MEXICAN
['carnitas_taco'] = {
    label = 'Carnitas Taco',
    weight = 150,
    stack = true,
},
['steak_taco'] = {
    label = 'Steak Taco',
    weight = 150,
    stack = true,
},
['chicken_taco'] = {
    label = 'Chicken Taco',
    weight = 140,
    stack = true,
},
['beef_taco'] = {
    label = 'Ground Beef Taco',
    weight = 140,
    stack = true,
},
['burrito'] = {
    label = 'Burrito',
    weight = 300,
    stack = true,
},
['quesadilla'] = {
    label = 'Quesadilla',
    weight = 200,
    stack = true,
},
['enchiladas'] = {
    label = 'Enchiladas',
    weight = 280,
    stack = true,
},
['guacamole'] = {
    label = 'Guacamole',
    weight = 150,
    stack = true,
},

-- FINISHING STATION OUTPUTS - PASTA
['macaroni_marinara'] = {
    label = 'Macaroni Marinara',
    weight = 200,
    stack = true,
},
['macaroni_alfredo'] = {
    label = 'Macaroni Alfredo',
    weight = 200,
    stack = true,
},
['pasta_carbonara'] = {
    label = 'Pasta Carbonara',
    weight = 250,
    stack = true,
},
['pasta_primavera'] = {
    label = 'Pasta Primavera',
    weight = 230,
    stack = true,
},

-- FINISHING STATION OUTPUTS - SANDWICHES
['ham_sandwich'] = {
    label = 'Ham Sandwich',
    weight = 180,
    stack = true,
},
['turkey_sandwich'] = {
    label = 'Turkey Sandwich',
    weight = 180,
    stack = true,
},
['roast_beef_sandwich'] = {
    label = 'Roast Beef Sandwich',
    weight = 190,
    stack = true,
},

-- FINISHING STATION OUTPUTS - SOUPS & BOWLS
['miso_soup'] = {
    label = 'Miso Soup',
    weight = 200,
    stack = true,
},
['pho'] = {
    label = 'Pho',
    weight = 350,
    stack = true,
},
['ramen'] = {
    label = 'Ramen',
    weight = 400,
    stack = true,
},

-- ============================================================================
-- BEVERAGE OUTPUTS
-- ============================================================================
['coffee'] = {
    label = 'Coffee',
    weight = 100,
    stack = true,
},
['iced_coffee'] = {
    label = 'Iced Coffee',
    weight = 100,
    stack = true,
},
['cola'] = {
    label = 'Cola',
    weight = 100,
    stack = true,
},
['orange_soda'] = {
    label = 'Orange Soda',
    weight = 100,
    stack = true,
},
['sprunk'] = {
    label = 'Sprunk',
    weight = 100,
    stack = true,
},
['lemonade'] = {
    label = 'Lemonade',
    weight = 150,
    stack = true,
},

-- BUBBLE TEA OUTPUTS
['classic_milk_tea'] = {
    label = 'Classic Milk Tea',
    weight = 200,
    stack = true,
},
['taro_milk_tea'] = {
    label = 'Taro Milk Tea',
    weight = 200,
    stack = true,
},
['matcha_milk_tea'] = {
    label = 'Matcha Milk Tea',
    weight = 200,
    stack = true,
},
['strawberry_milk_tea'] = {
    label = 'Strawberry Milk Tea',
    weight = 200,
    stack = true,
},
['brown_sugar_milk_tea'] = {
    label = 'Brown Sugar Milk Tea',
    weight = 200,
    stack = true,
},
['thai_milk_tea'] = {
    label = 'Thai Milk Tea',
    weight = 200,
    stack = true,
},
['thai_tea'] = {
    label = 'Thai Tea Leaves',
    weight = 50,
    stack = true,
},
['condensed_milk'] = {
    label = 'Condensed Milk',
    weight = 100,
    stack = true,
},

-- MOCKTAILS & SMOOTHIES
['virgin_mojito'] = {
    label = 'Virgin Mojito',
    weight = 180,
    stack = true,
},
['smoothie'] = {
    label = 'Smoothie',
    weight = 200,
    stack = true,
},

-- ============================================================================
-- MICROWAVE ITEMS
-- ============================================================================

-- MICROWAVE INPUTS (Cold/Frozen items to reheat)
['pizza_slice_cold'] = {
    label = 'Cold Pizza Slice',
    weight = 100,
    stack = true,
},
['cold_burger'] = {
    label = 'Cold Burger',
    weight = 200,
    stack = true,
},
['cold_croissant'] = {
    label = 'Cold Croissant',
    weight = 50,
    stack = true,
},
['cold_muffin'] = {
    label = 'Cold Muffin',
    weight = 70,
    stack = true,
},
['popcorn_kernels'] = {
    label = 'Popcorn Kernels',
    weight = 50,
    stack = true,
},
['frozen_meal_box'] = {
    label = 'Frozen Meal',
    weight = 300,
    stack = true,
},
['tortilla_chips'] = {
    label = 'Tortilla Chips',
    weight = 100,
    stack = true,
},
['canned_soup'] = {
    label = 'Canned Soup',
    weight = 200,
    stack = true,
},
['hotdog_bun'] = {
    label = 'Hot Dog Bun',
    weight = 40,
    stack = true,
},
['sausage'] = {
    label = 'Sausage',
    weight = 100,
    stack = true,
},

-- MICROWAVE OUTPUTS
['pizza_slice'] = {
    label = 'Pizza Slice',
    weight = 100,
    stack = true,
},
['burger'] = {
    label = 'Burger',
    weight = 200,
    stack = true,
},
['popcorn'] = {
    label = 'Popcorn',
    weight = 80,
    stack = true,
},
['hot_milk'] = {
    label = 'Hot Milk',
    weight = 200,
    stack = true,
},
['tv_dinner'] = {
    label = 'TV Dinner',
    weight = 280,
    stack = true,
},
['nachos'] = {
    label = 'Nachos',
    weight = 200,
    stack = true,
},
['soup'] = {
    label = 'Soup',
    weight = 250,
    stack = true,
},
['hotdog'] = {
    label = 'Hot Dog',
    weight = 150,
    stack = true,
},

-- ============================================================================
-- POT SYSTEM ITEMS
-- ============================================================================

-- BOWL (Required for taking servings)
['bowl'] = {
    label = 'Bowl',
    weight = 100,
    stack = true,
},

-- UNKNOWN STEW (Fallback for unrecognized ingredient combinations)
['unknown_stew'] = {
    label = 'Mystery Stew',
    weight = 250,
    stack = false,
},

-- POT RECIPE INGREDIENTS (Additional)
['onion'] = {
    label = 'Onion',
    weight = 80,
    stack = true,
},
['carrot'] = {
    label = 'Carrot',
    weight = 60,
    stack = true,
},
['celery'] = {
    label = 'Celery',
    weight = 50,
    stack = true,
},
['potato'] = {
    label = 'Potato',
    weight = 100,
    stack = true,
},
['clam'] = {
    label = 'Clam',
    weight = 80,
    stack = true,
},
['raw_beef'] = {
    label = 'Raw Beef',
    weight = 200,
    stack = true,
},
['beef_broth'] = {
    label = 'Beef Broth',
    weight = 200,
    stack = true,
},
['raw_lamb'] = {
    label = 'Raw Lamb',
    weight = 200,
    stack = true,
},
['ground_beef'] = {
    label = 'Ground Beef',
    weight = 180,
    stack = true,
},
['beans'] = {
    label = 'Beans',
    weight = 150,
    stack = true,
},
['chili_pepper'] = {
    label = 'Chili Pepper',
    weight = 30,
    stack = true,
},
['corn'] = {
    label = 'Corn',
    weight = 80,
    stack = true,
},
['coconut_milk'] = {
    label = 'Coconut Milk',
    weight = 200,
    stack = true,
},
['curry_powder'] = {
    label = 'Curry Powder',
    weight = 50,
    stack = true,
},
['ginger'] = {
    label = 'Ginger',
    weight = 40,
    stack = true,
},
['miso_paste'] = {
    label = 'Miso Paste',
    weight = 150,
    stack = true,
},
['tofu'] = {
    label = 'Tofu',
    weight = 200,
    stack = true,
},
['seaweed'] = {
    label = 'Seaweed',
    weight = 30,
    stack = true,
},
['green_onion'] = {
    label = 'Green Onion',
    weight = 30,
    stack = true,
},
['beef_bones'] = {
    label = 'Beef Bones',
    weight = 300,
    stack = true,
},
['star_anise'] = {
    label = 'Star Anise',
    weight = 10,
    stack = true,
},
['cinnamon'] = {
    label = 'Cinnamon',
    weight = 20,
    stack = true,
},
['pork_bones'] = {
    label = 'Pork Bones',
    weight = 300,
    stack = true,
},
['soy_sauce'] = {
    label = 'Soy Sauce',
    weight = 150,
    stack = true,
},

-- POT RECIPE SERVING OUTPUTS
-- NOTE: Do NOT add 'consume = 1' - envi-restaurants handles consumption
['tomato_soup_serving'] = {
    label = 'Tomato Soup',
    weight = 300,
    stack = false,
},
['chicken_soup_serving'] = {
    label = 'Chicken Soup',
    weight = 300,
    stack = false,
},
['vegetable_soup_serving'] = {
    label = 'Vegetable Soup',
    weight = 300,
    stack = false,
},
['clam_chowder_serving'] = {
    label = 'Clam Chowder',
    weight = 320,
    stack = false,
},
['beef_stew_serving'] = {
    label = 'Beef Stew',
    weight = 350,
    stack = false,
},
['lamb_stew_serving'] = {
    label = 'Lamb Stew',
    weight = 350,
    stack = false,
},
['beef_chili_serving'] = {
    label = 'Beef Chili',
    weight = 320,
    stack = false,
},
['vegetarian_chili_serving'] = {
    label = 'Vegetarian Chili',
    weight = 300,
    stack = false,
},
['chicken_curry_serving'] = {
    label = 'Chicken Curry',
    weight = 320,
    stack = false,
},
['vegetable_curry_serving'] = {
    label = 'Vegetable Curry',
    weight = 300,
    stack = false,
},
['bolognese_sauce_serving'] = {
    label = 'Bolognese Sauce',
    weight = 280,
    stack = false,
},
['miso_soup_serving'] = {
    label = 'Miso Soup',
    weight = 280,
    stack = false,
},
['pho_broth_serving'] = {
    label = 'Pho Broth',
    weight = 350,
    stack = false,
},
['ramen_broth_serving'] = {
    label = 'Ramen Broth',
    weight = 350,
    stack = false,
},

-- ============================================================================
-- POT SYSTEM INGREDIENTS (Supplier Items)
-- ============================================================================

['carrot'] = {
    label = 'Carrot',
    weight = 80,
    stack = true,
},
['celery'] = {
    label = 'Celery',
    weight = 60,
    stack = true,
},
['green_onion'] = {
    label = 'Green Onion',
    weight = 30,
    stack = true,
},
['ginger'] = {
    label = 'Fresh Ginger',
    weight = 50,
    stack = true,
},
['corn'] = {
    label = 'Corn Kernels',
    weight = 100,
    stack = true,
},
['beans'] = {
    label = 'Kidney Beans',
    weight = 150,
    stack = true,
},
['chili_pepper'] = {
    label = 'Chili Pepper',
    weight = 20,
    stack = true,
},
['raw_beef'] = {
    label = 'Beef Chunks',
    weight = 200,
    stack = true,
},
['raw_lamb'] = {
    label = 'Lamb Chunks',
    weight = 200,
    stack = true,
},
['ground_beef'] = {
    label = 'Ground Beef',
    weight = 180,
    stack = true,
},
['beef_bones'] = {
    label = 'Beef Bones',
    weight = 300,
    stack = true,
},
['pork_bones'] = {
    label = 'Pork Bones',
    weight = 300,
    stack = true,
},
['clam'] = {
    label = 'Fresh Clams',
    weight = 150,
    stack = true,
},
['coconut_milk'] = {
    label = 'Coconut Milk',
    weight = 200,
    stack = true,
},
['curry_powder'] = {
    label = 'Curry Powder',
    weight = 50,
    stack = true,
},
['star_anise'] = {
    label = 'Star Anise',
    weight = 20,
    stack = true,
},
['cinnamon'] = {
    label = 'Cinnamon Stick',
    weight = 20,
    stack = true,
},

-- ============================================================================
-- VEGAN & PLANT-BASED ITEMS
-- ============================================================================

-- Vegan Meat Alternatives
['vegan_beef_patty'] = {
    label = 'Vegan Beef Patty',
    weight = 150,
    stack = true,
},
['vegan_ground_beef'] = {
    label = 'Vegan Ground Beef',
    weight = 180,
    stack = true,
},
['vegan_chicken'] = {
    label = 'Vegan Chicken',
    weight = 150,
    stack = true,
},
['vegan_chicken_tenders'] = {
    label = 'Vegan Chicken Tenders',
    weight = 120,
    stack = true,
},
['vegan_bacon'] = {
    label = 'Vegan Bacon',
    weight = 80,
    stack = true,
},
['vegan_sausage'] = {
    label = 'Vegan Sausage',
    weight = 100,
    stack = true,
},
['vegan_steak'] = {
    label = 'Vegan Steak',
    weight = 200,
    stack = true,
},
['vegan_meatballs'] = {
    label = 'Vegan Meatballs',
    weight = 150,
    stack = true,
},
['seitan'] = {
    label = 'Seitan',
    weight = 200,
    stack = true,
},
['tempeh'] = {
    label = 'Tempeh',
    weight = 200,
    stack = true,
},
['jackfruit'] = {
    label = 'Jackfruit',
    weight = 200,
    stack = true,
},

-- Vegan Dairy Alternatives
['vegan_cheese'] = {
    label = 'Vegan Cheese',
    weight = 150,
    stack = true,
},
['vegan_cheese_shreds'] = {
    label = 'Vegan Cheese Shreds',
    weight = 100,
    stack = true,
},
['vegan_cream_cheese'] = {
    label = 'Vegan Cream Cheese',
    weight = 150,
    stack = true,
},
['oat_milk'] = {
    label = 'Oat Milk',
    weight = 200,
    stack = true,
},
['almond_milk'] = {
    label = 'Almond Milk',
    weight = 200,
    stack = true,
},
['coconut_cream'] = {
    label = 'Coconut Cream',
    weight = 200,
    stack = true,
},
['vegan_butter'] = {
    label = 'Vegan Butter',
    weight = 100,
    stack = true,
},
['vegan_mayo'] = {
    label = 'Vegan Mayo',
    weight = 150,
    stack = true,
},

-- Other Vegan Essentials
['nutritional_yeast'] = {
    label = 'Nutritional Yeast',
    weight = 50,
    stack = true,
},
['aquafaba'] = {
    label = 'Aquafaba',
    weight = 100,
    stack = true,
},
['flax_meal'] = {
    label = 'Flax Meal',
    weight = 100,
    stack = true,
},
['chia_seeds'] = {
    label = 'Chia Seeds',
    weight = 80,
    stack = true,
},
['hemp_hearts'] = {
    label = 'Hemp Hearts',
    weight = 80,
    stack = true,
},
['tahini'] = {
    label = 'Tahini',
    weight = 150,
    stack = true,
},
['hummus'] = {
    label = 'Hummus',
    weight = 200,
    stack = true,
},
['falafel_mix'] = {
    label = 'Falafel Mix',
    weight = 150,
    stack = true,
},
['veggie_broth'] = {
    label = 'Vegetable Broth',
    weight = 200,
    stack = true,
},

-- Vegan Cooked Outputs
-- NOTE: Do NOT add 'consume = 1' - envi-restaurants handles consumption
['vegan_burger'] = {
    label = 'Vegan Burger',
    weight = 250,
    stack = false,
},
['vegan_bacon_strips'] = {
    label = 'Vegan Bacon Strips',
    weight = 80,
    stack = true,
},
['vegan_chicken_sandwich'] = {
    label = 'Vegan Chicken Sandwich',
    weight = 250,
    stack = false,
},
['falafel'] = {
    label = 'Falafel',
    weight = 100,
    stack = true,
},
['vegan_stew_serving'] = {
    label = 'Vegan Stew',
    weight = 300,
    stack = false,
},
['vegan_chili_serving'] = {
    label = 'Vegan Chili',
    weight = 300,
    stack = false,
},
['lentil_soup_serving'] = {
    label = 'Lentil Soup',
    weight = 280,
    stack = false,
},
['minestrone_serving'] = {
    label = 'Minestrone Soup',
    weight = 300,
    stack = false,
},
['thai_coconut_soup_serving'] = {
    label = 'Thai Coconut Soup',
    weight = 280,
    stack = false,
},
['jackfruit_curry_serving'] = {
    label = 'Jackfruit Curry',
    weight = 300,
    stack = false,
},

-- Vegan Grill Outputs
['vegan_patty'] = {
    label = 'Vegan Patty',
    weight = 120,
    stack = true,
},
['grilled_vegan_sausage'] = {
    label = 'Grilled Vegan Sausage',
    weight = 100,
    stack = true,
},
['grilled_vegan_steak'] = {
    label = 'Grilled Vegan Steak',
    weight = 180,
    stack = false,
},
['grilled_seitan'] = {
    label = 'Grilled Seitan',
    weight = 150,
    stack = false,
},
['grilled_tempeh'] = {
    label = 'Grilled Tempeh',
    weight = 150,
    stack = false,
},
['bbq_jackfruit'] = {
    label = 'BBQ Jackfruit',
    weight = 180,
    stack = false,
},

-- ============================================================================
-- SUSHI & JAPANESE
-- NOTE: Do NOT add 'consume = 1' to these items - envi-restaurants handles consumption
-- ============================================================================
['california_roll'] = {
    label = 'California Roll',
    weight = 200,
    stack = false,
},
['salmon_roll'] = {
    label = 'Salmon Roll',
    weight = 200,
    stack = false,
},
['tuna_roll'] = {
    label = 'Tuna Roll',
    weight = 200,
    stack = false,
},
['dragon_roll'] = {
    label = 'Dragon Roll',
    weight = 250,
    stack = false,
},
['spicy_tuna_roll'] = {
    label = 'Spicy Tuna Roll',
    weight = 200,
    stack = false,
},
['salmon_nigiri'] = {
    label = 'Salmon Nigiri',
    weight = 100,
    stack = false,
},
['edamame'] = {
    label = 'Edamame',
    weight = 150,
    stack = false,
},

-- ============================================================================
-- PIZZA SLICES
-- NOTE: Do NOT add 'consume = 1' - envi-restaurants handles consumption
-- ============================================================================
['pizza_slice_margherita'] = {
    label = 'Margherita Pizza Slice',
    weight = 120,
    stack = false,
},
['pizza_slice_pepperoni'] = {
    label = 'Pepperoni Pizza Slice',
    weight = 130,
    stack = false,
},
['pizza_slice_hawaii'] = {
    label = 'Hawaiian Pizza Slice',
    weight = 130,
    stack = false,
},
['pizza_slice_quattro_formaggi'] = {
    label = 'Four Cheese Pizza Slice',
    weight = 130,
    stack = false,
},
['pizza_slice_marinara'] = {
    label = 'Marinara Pizza Slice',
    weight = 110,
    stack = false,
},
['pizza_slice_prosciutto'] = {
    label = 'Prosciutto Pizza Slice',
    weight = 130,
    stack = false,
},
['pizza_slice_capricciosa'] = {
    label = 'Capricciosa Pizza Slice',
    weight = 135,
    stack = false,
},
['pizza_slice_tonno'] = {
    label = 'Tuna Pizza Slice',
    weight = 130,
    stack = false,
},

-- ============================================================================
-- DESSERTS
-- NOTE: Do NOT add 'consume = 1' - envi-restaurants handles consumption
-- ============================================================================
['chocolate_mochi'] = {
    label = 'Chocolate Mochi',
    weight = 80,
    stack = false,
},
['flan'] = {
    label = 'Flan',
    weight = 150,
    stack = false,
},

-- ============================================================================
-- SEAFOOD DISHES
-- NOTE: Do NOT add 'consume = 1' - envi-restaurants handles consumption
-- ============================================================================
['shrimp_tempura'] = {
    label = 'Shrimp Tempura',
    weight = 180,
    stack = false,
},
['coconut_shrimp'] = {
    label = 'Coconut Shrimp',
    weight = 200,
    stack = false,
},
['lobster_tail'] = {
    label = 'Lobster Tail',
    weight = 250,
    stack = false,
},
['plated_ribeye'] = {
    label = 'Plated Ribeye',
    weight = 350,
    stack = false,
},

-- ============================================================================
-- CHICKEN DISHES
-- ============================================================================
['fried_chicken'] = {
    label = 'Fried Chicken',
    weight = 200,
    stack = false,
},
['grilled_chicken_plate'] = {
    label = 'Grilled Chicken Plate',
    weight = 350,
    stack = false,
},
['chicken_wings'] = {
    label = 'Chicken Wings',
    weight = 180,
    stack = false,
},
['grilled_chicken'] = {
    label = 'Grilled Chicken',
    weight = 180,
    stack = true,
},
['raw_wings'] = {
    label = 'Raw Chicken Wings',
    weight = 150,
    stack = true,
},

-- ============================================================================
-- BBQ DISHES
-- ============================================================================
['pulled_pork_plate'] = {
    label = 'Pulled Pork Plate',
    weight = 350,
    stack = false,
},
['brisket_plate'] = {
    label = 'Brisket Plate',
    weight = 400,
    stack = false,
},
['pork_ribs'] = {
    label = 'Pork Ribs',
    weight = 400,
    stack = true,
},
['pulled_pork'] = {
    label = 'Pulled Pork',
    weight = 200,
    stack = true,
},
['smoked_brisket'] = {
    label = 'Smoked Brisket',
    weight = 300,
    stack = true,
},
['coleslaw'] = {
    label = 'Coleslaw',
    weight = 100,
    stack = true,
},
['pickles'] = {
    label = 'Pickles',
    weight = 50,
    stack = true,
},

-- ============================================================================
-- BAKERY INGREDIENTS & DISHES
-- ============================================================================
['cinnamon_roll'] = {
    label = 'Cinnamon Roll',
    weight = 100,
    stack = false,
},
['pastry_dough'] = {
    label = 'Pastry Dough',
    weight = 150,
    stack = true,
},
['blueberries'] = {
    label = 'Blueberries',
    weight = 80,
    stack = true,
},

-- ============================================================================
-- BREAD DISHES
-- ============================================================================
['garlic_bread'] = {
    label = 'Garlic Bread',
    weight = 120,
    stack = false,
},
['toast'] = {
    label = 'Toast',
    weight = 60,
    stack = false,
},
['breadsticks'] = {
    label = 'Breadsticks',
    weight = 100,
    stack = false,
},
['bread_dough'] = {
    label = 'Bread Dough',
    weight = 200,
    stack = true,
},

-- ============================================================================
-- VEGETABLE DISHES
-- ============================================================================
['garden_salad'] = {
    label = 'Garden Salad',
    weight = 200,
    stack = false,
},
['caesar_salad'] = {
    label = 'Caesar Salad',
    weight = 220,
    stack = false,
},
['grilled_vegetables'] = {
    label = 'Grilled Vegetables',
    weight = 180,
    stack = false,
},
['romaine_lettuce'] = {
    label = 'Romaine Lettuce',
    weight = 100,
    stack = true,
},
['croutons'] = {
    label = 'Croutons',
    weight = 50,
    stack = true,
},
['caesar_dressing'] = {
    label = 'Caesar Dressing',
    weight = 100,
    stack = true,
},

-- ============================================================================
-- VEGAN DISHES (Additional)
-- ============================================================================
['tofu_stir_fry'] = {
    label = 'Tofu Stir Fry',
    weight = 280,
    stack = false,
},
['veggie_wrap'] = {
    label = 'Veggie Wrap',
    weight = 200,
    stack = false,
},
['plant_patty'] = {
    label = 'Plant-Based Patty',
    weight = 120,
    stack = true,
},

-- ============================================================================
-- BAKED DESSERTS
-- ============================================================================
['glazed_donut'] = {
    label = 'Glazed Donut',
    weight = 70,
    stack = false,
},
['chocolate_donut'] = {
    label = 'Chocolate Donut',
    weight = 75,
    stack = false,
},
['chocolate_cake_slice'] = {
    label = 'Chocolate Cake Slice',
    weight = 120,
    stack = false,
},
['cheesecake_slice'] = {
    label = 'Cheesecake Slice',
    weight = 130,
    stack = false,
},
['apple_pie_slice'] = {
    label = 'Apple Pie Slice',
    weight = 110,
    stack = false,
},
['brownie'] = {
    label = 'Brownie',
    weight = 100,
    stack = false,
},
['eclair'] = {
    label = 'Eclair',
    weight = 80,
    stack = false,
},
['fruit_tart'] = {
    label = 'Fruit Tart',
    weight = 100,
    stack = false,
},

-- Baked Dessert Ingredients
['sugar_glaze'] = {
    label = 'Sugar Glaze',
    weight = 50,
    stack = true,
},
['chocolate'] = {
    label = 'Chocolate',
    weight = 80,
    stack = true,
},
['chocolate_cake'] = {
    label = 'Chocolate Cake (Whole)',
    weight = 600,
    stack = true,
},
['cheesecake'] = {
    label = 'Cheesecake (Whole)',
    weight = 700,
    stack = true,
},
['apple_pie'] = {
    label = 'Apple Pie (Whole)',
    weight = 500,
    stack = true,
},
['mochi_dough'] = {
    label = 'Mochi Dough',
    weight = 100,
    stack = true,
},
['vanilla'] = {
    label = 'Vanilla Extract',
    weight = 50,
    stack = true,
},

-- ============================================================================
-- SUSHI INGREDIENTS
-- ============================================================================
['sushi_rice'] = {
    label = 'Sushi Rice',
    weight = 100,
    stack = true,
},
['nori'] = {
    label = 'Nori Sheets',
    weight = 20,
    stack = true,
},
['crab_meat'] = {
    label = 'Crab Meat',
    weight = 100,
    stack = true,
},
['eel_sauce'] = {
    label = 'Eel Sauce',
    weight = 80,
    stack = true,
},
['spicy_mayo'] = {
    label = 'Spicy Mayo',
    weight = 80,
    stack = true,
},
['tempura_batter'] = {
    label = 'Tempura Batter',
    weight = 100,
    stack = true,
},
['coconut_flakes'] = {
    label = 'Coconut Flakes',
    weight = 60,
    stack = true,
},
['edamame_beans'] = {
    label = 'Edamame Beans',
    weight = 100,
    stack = true,
},

-- ============================================================================
-- ADDITIONAL INGREDIENTS
-- ============================================================================
['seasoning'] = {
    label = 'Seasoning Mix',
    weight = 30,
    stack = true,
},
['hot_sauce'] = {
    label = 'Hot Sauce',
    weight = 100,
    stack = true,
},

-- ============================================================================
-- HYGIENE & PEST CONTROL
-- ============================================================================
['bug_spray'] = {
    label = 'Bug Spray',
    weight = 200,
    stack = true,
},
['rat_poison'] = {
    label = 'Rat Poison',
    weight = 150,
    stack = true,
},

-- ============================================================================
-- MISSING INGREDIENTS
-- ============================================================================
['onion_rings'] = {
    label = 'Onion Rings',
    weight = 200,
    stack = true,
},
['raw_onion_rings'] = {
    label = 'Raw Onion Rings',
    weight = 150,
    stack = true,
},
['pickle'] = {
    label = 'Pickle',
    weight = 80,
    stack = true,
},
['jalapeno'] = {
    label = 'Jalapeno',
    weight = 50,
    stack = true,
},
['ketchup'] = {
    label = 'Ketchup',
    weight = 100,
    stack = true,
},
['mayo'] = {
    label = 'Mayo',
    weight = 100,
    stack = true,
},
['ranch'] = {
    label = 'Ranch',
    weight = 100,
    stack = true,
},
['mustard'] = {
    label = 'Mustard',
    weight = 100,
    stack = true,
},
['salsa'] = {
    label = 'Salsa',
    weight = 120,
    stack = true,
},
['sour_cream'] = {
    label = 'Sour Cream',
    weight = 100,
    stack = true,
},
	["vh_gold_necklace"] = {
		label = "Gold Necklace",
		weight = 200,
		stack = true,
		close = false,
		description = "A valuable gold necklace stolen from a jewelry display.",
		client = {
			image = "vh_gold_necklace.png",
		}
	},

	["vh_diamond_necklace"] = {
		label = "Diamond Necklace",
		weight = 170,
		stack = true,
		close = false,
		description = "An expensive diamond necklace. Extremely valuable.",
		client = {
			image = "vh_diamond_necklace.png",
		}
	},

	["vh_silver_ring"] = {
		label = "Silver Ring",
		weight = 90,
		stack = true,
		close = false,
		description = "A polished silver ring taken during the robbery.",
		client = {
			image = "vh_silver_ring.png",
		}
	},

	["vh_gold_ring"] = {
		label = "Gold Ring",
		weight = 100,
		stack = true,
		close = false,
		description = "A shiny gold ring stolen from a glass case.",
		client = {
			image = "vh_gold_ring.png",
		}
	},

	["vh_diamond_watch"] = {
		label = "Diamond Watch",
		weight = 280,
		stack = true,
		close = false,
		description = "An iced-out diamond watch. Extremely valuable.",
		client = {
			image = "vh_diamond_watch.png",
		}
	},

	["vh_platinum_bracelet"] = {
		label = "Platinum Bracelet",
		weight = 220,
		stack = true,
		close = false,
		description = "A rare platinum bracelet stolen during the heist.",
		client = {
			image = "vh_platinum_bracelet.png",
		}
	},

	["vh_gold_watch"] = {
		label = "Gold Watch",
		weight = 300,
		stack = true,
		close = false,
		description = "A heavy gold watch taken from the showroom.",
		client = {
			image = "vh_gold_watch.png",
		}
	},

	["vh_luxury_watch"] = {
		label = "Luxury Watch",
		weight = 250,
		stack = true,
		close = false,
		description = "A premium luxury watch worth a lot on the black market.",
		client = {
			image = "vh_luxury_watch.png",
		}
	},

	["vh_diamond_ring"] = {
		label = "Diamond Ring",
		weight = 85,
		stack = true,
		close = false,
		description = "A high-value diamond engagement ring.",
		client = {
			image = "vh_diamond_ring.png",
		}
	},

	["vh_silver_necklace"] = {
		label = "Silver Necklace",
		weight = 180,
		stack = true,
		close = false,
		description = "A fine silver necklace taken from the store.",
		client = {
			image = "vh_silver_necklace.png",
		}
	},

	["fuse_box"] = {
		label = "Fuse Pack",
		weight = 220,
		stack = true,
		close = false,
		description = "Pack of 4 Fuses",
		client = {
			image = "fuse_box.png",
		}
	},

    ["bikerack"] = {
        label = "Bike rack",
        weight = 5000,
        stack = true,
        close = true,
        consume = 0,
        server = {
            export = 'kq_roofboxes.UseRoofbox',
        },
    },

    ["roofbox_color"] = {
        label = "Roofbox - Colormatched",
        weight = 5000,
        stack = true,
        close = true,
        consume = 0,
        server = {
            export = 'kq_roofboxes.UseRoofbox',
        },
    },

    ["roofbox_carbon"] = {
        label = "Roofbox - Carbon",
        weight = 5000,
        stack = true,
        close = true,
        consume = 0,
        server = {
            export = 'kq_roofboxes.UseRoofbox',
        },
    },

['hydraulic_part'] = {
    label = 'Hydraulic Part',
    weight = 500,
    stack = true,
    close = true,
    description = 'A hydraulic part salvaged from a vehicle',
    image = 'hydraulic_part.png',
},
['duct_tape'] = {
    label = 'Duct Tape',
    weight = 200,
    stack = true,
    close = true,
    description = 'A roll of duct tape',
    image = 'duct_tape.png',
},
['craftingtable'] = {
    label = 'Crafting Table',
    weight = 100,
    stack = false,
    close = true,
    description = 'Crafting Table',
    image = 'craftingtable.png',
},

['blueprint'] = {
    label = 'Blueprint',
    weight = 100,
    stack = false,
    close = true,
    description = 'Blueprint',
    image = 'blueprint.png',
},
	-- add this if you don't have it
	
	
	["screwdriverset"] = {
		label = "Toolkit",
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws...",
		client = {
			image = "screwdriverset.png",
		}
	},
['cilantro'] = {
    label = 'Cilantro',
    weight = 30,
    stack = true,
},
['queso'] = {
    label = 'Queso',
    weight = 120,
    stack = true,
},
['whipped_cream'] = {
    label = 'Whipped Cream',
    weight = 80,
    stack = true,
},
['sprinkles'] = {
    label = 'Sprinkles',
    weight = 30,
    stack = true,
},
['caramel'] = {
    label = 'Caramel',
    weight = 80,
    stack = true,
},

-- ============================================================================
-- CUSTOM FOOD ITEMS
-- Created via the Custom Food Creation System
-- ============================================================================
['custom_meal'] = {
    label = 'Custom Meal',
    weight = 250,
    stack = false,
},
['custom_side'] = {
    label = 'Custom Side',
    weight = 150,
    stack = false,
},
['custom_drink'] = {
    label = 'Custom Drink',
    weight = 200,
    stack = false,
},

    ["laptop"] = {
        label = "Laptop",
        weight = 1000,
        stack = true,
        close = true,
    },

    ["copper"] = {
        label = "Copper ingot",
        weight = 1000,
        stack = true,
        close = true,
    },

    ["stolen_weapon_case"] = {
        label = "Stolen weapon case",
        weight = 2000,
        stack = true,
        close = true,
        consume = 0,
        server = {
            export = 'kq_smash_n_grab2.LootItem',
        },
    },

    ["stolen_bag"] = {
        label = "Stolen bag",
        weight = 2000,
        stack = true,
        close = true,
        consume = 0,
        server = {
            export = 'kq_smash_n_grab2.LootItem',
        },
    },
['ruby'] = {
    label = "Ruby",
    weight = 20,
    stack = true,
    close = false,
},
['sapphire'] = {
    label = "Sapphire",
    weight = 20,
    stack = true,
    close = false,
},
['silver'] = {
    label = "Silver",
    weight = 20,
    stack = true,
    close = false,
},
['sulphur'] = {
    label = "Sulphur",
    weight = 20,
    stack = true,
    close = false,
},
["aluminum"] = {
    label = "Aluminum",
    weight = 20,
    stack = true,
    close = true,
},
["iron"] = {
    label = "Iron",
    weight = 20,
    stack = true,
    close = true,
},
['scrap_metal'] = {
    name = 'scrap_metal',
    label = 'Scrap Metal',
    weight = 1000,
    type = 'item',
    image = 'scrap_metal.png',
    useable = false,
},
['aluminium'] = {
    name = 'aluminium',
    label = 'Aluminium',
    weight = 800,
    type = 'item',
    image = 'aluminium.png',
    useable = false,
},
['electronic_parts'] = {
    name = 'electronic_parts',
    label = 'Electronic Parts',
    weight = 300,
    type = 'item',
    image = 'electronic_parts.png',
    useable = false,
},
['copper_pipe'] = {
    name = 'copper_pipe',
    label = 'Copper Pipe',
    weight = 1200,
    type = 'item',
    image = 'copper_pipe.png',
    useable = false,
},
['electrical_wire'] = {
    name = 'electrical_wire',
    label = 'Electrical Wire',
    weight = 400,
    type = 'item',
    image = 'electrical_wire.png',
    useable = false,
},
	['weed_seed'] = {
		name = 'weed_seed',
		label = 'Weed Seed',
		weight = 50,
		type = "item",
		image = "weed_seed.png",
		useable = true,
	},
	['weed_plant'] = {
		name = 'weed_plant',
		label = 'Weed Plant',
		weight = 500,
		type = "item",
		image = "weed_plant.png",
	},
	['weed_dry'] = {
		name = 'weed_dry',
		label = 'Weed Dry',
		weight = 200,
		type = "item",
		image = "weed_dry.png",
	},
	['weed_bag'] = {
		name = 'weed_bag',
		label = 'Weed Bag',
		weight = 50,
		type = "item",
		image = "weed_bag.png",
	},
	['fertilizer'] = {
		name = 'fertilizer',
		label = 'Fertilizer',
		weight = 150,
		type = "item",
		image = "fertilizer.png",
	},
	['ziptie'] = {
		name = 'ziptie',
		label = 'Ziptie',
		weight = 50,
		type = "item",
		image = "ziptie.png",
	},
	['headbag'] = {
		name = 'headbag',
		label = 'Headbag',
		weight = 200,
		type = "item",
		image = "headbag.png",
	},
	['spraycan'] = {
		name = 'spraycan',
		label = 'Spray Can',
		weight = 200,
		type = "item",
		image = "headbag.png",
	},
	['wipe'] = {
		name = 'wipe',
		label = 'Wipe',
		weight = 200,
		type = "item",
		image = "wipe.png",
	},
	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},
}
