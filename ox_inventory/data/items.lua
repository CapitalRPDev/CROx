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
-- ADD THIS CODE IN OX_INVENTORY items.lua

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
