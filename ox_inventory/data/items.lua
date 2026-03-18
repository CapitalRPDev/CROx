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
