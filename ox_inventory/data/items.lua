return {
        ['simcard'] = {
        label = 'Sim Card',
        weight = 150,
        client = {
            image = 'simcard.png',
        },
        server = {
            export = '17mov_Phone.simcard'
        },
        consume = 0,
        stack = false
    },
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
				label = 'Throw',
				action = function(slot)
					print('You have thrown the burger')
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

	-- Police / Evidence
	['spikestrip'] = {
		label = 'Spike Strip',
		weight = 1500,
		stack = true,
		close = true,
		description = 'Deployable spikestrip to puncture vehicle tires.'
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

    ['boostingtablet'] = {
        label = 'Boosting tablet',
        weight = 0,
        description = "Seems like something's installed on this.",
        client = {
        export = 'rahe-boosting.boostingtablet',
        }
    },
        
     ['scba'] = {
        label = 'SCBA System',
        weight = 10000,
        description = "Only for firefighters, allows you to breathe in smoke and near fire.",
        client = {
        export = 'r_scba.ToggleSCBA',
        }
    },

    ['hackingdevice'] = {
        label = 'Hacking device',
        weight = 0,
        description = 'Will allow you to bypass vehicle security systems.',
        client = {
            export = 'rahe-boosting.hackingdevice',
        }
    },

    ['gpshackingdevice'] = {
        label = 'GPS hacking device',
        weight = 0,
        description = 'If you wish to disable vehicle GPS systems.',
        client = {
            export = 'rahe-boosting.gpshackingdevice',
        }
    },

    ['app_tablet'] = {
        label = 'Encro Laptop',
        weight = 0,
        description = 'You can install different applications onto this.',
        stack = false,
        client = {
            image = "newlaptop.png",
            export = 'rahe-tablet.tablet'
        }
    },
            ["tablet"] = {
            label = "Tablet",
            weight = 840,
            stack = false,
            consume = 0,
            client = {
                event = "tablet:toggleOpen"
            }
        },

	-- Lunar-Network laptop resource items
	['usb'] = {
		label = 'USB Drive',
		weight = 10,
		description = 'A USB drive.',
		stack = true,
		client = {
			image = 'usb_drive.png',
		}
	},

	['phonedongle'] = {
		label = 'Phone Dongle',
		weight = 50,
		description = 'Grants access to hidden apps.',
		stack = false,
		client = {
			image = 'daybreak_dongle.png',
		}
	},

	['boostdevice'] = {
		label = 'Boost Device',
		weight = 250,
		description = 'Seems like something\'s installed on this.',
		stack = false,
		client = {
			image = 'boostingtablet.png',
		}
	},

	['paletodevice'] = {
		label = 'Paleto Device',
		weight = 250,
		description = 'A hacking device.',
		stack = false,
		client = {
			image = 'hackingdevice.png',
		}
	},

	['fleecadevice'] = {
		label = 'Fleeca Device',
		weight = 250,
		description = 'A hacking device.',
		stack = false,
		client = {
			image = 'hackingdevice.png',
		}
	},

	['greencard'] = {
		label = 'Green Card',
		weight = 10,
		description = 'An access card.',
		stack = false,
		client = {
			image = 'id_card.png',
		}
	},

    ['usb_racing'] = {
        label = 'Racing VPN',
        weight = 50,
        description = 'An USB stick with a racing program installed onto it.',
        stack = false,
        client = {
            image = "usb_app.png",
           export = 'rahe-tablet.usb_install'
        }
    },

    ['usb_boosting'] = {
        label = 'Boosting VPN',
        weight = 50,
        description = 'An USB stick with a boosting program installed onto it.',
        stack = false,
        client = {
            image = "usb_app.png",
           export = 'rahe-tablet.usb_install'
        }
    },

    ['usb_gangs'] = {
        label = 'VPN',
        weight = 50,
        description = 'An USB stick with Encrypted Code',
        stack = false,
        client = {
            image = "usb_app.png",
           export = 'rahe-tablet.usb_install'
        }
    },

    ['usb_rep'] = {
        label = 'Rep Checker',
        weight = 50,
        description = 'An USB stick with Encrypted Code',
        stack = false,
        client = {
            image = "usb_app.png",
           export = 'rahe-tablet.usb_install'
        }
    },

    ["motherboard"] = {
        label = "Motherboard",
        weight = 50,
        stack = true,
        close = true,
        description = "A high-quality motherboard for building or upgrading computers.",
        client = {
            image = "motherboard.png",  -- Image name (you'll need to place this image in your resources folder)
        }
    },

    ["cpu"] = {
        label = "CPU",
        weight = 20,
        stack = true,
        close = true,
        description = "A powerful processor for high-performance computing tasks.",
        client = {
            image = "cpu.png",  -- Image name (make sure the image is in your resource folder)
        }
    },

    ["multimeter"] = {
        label = "Multimeter",
        weight = 45,
        stack = true,
        close = true,
        description = "A device used to test voltage",
        client = {
            image = "multimeter.png",  -- Image name (make sure the image is in your resource folder)
        }
    },

    ['kq_outfitbag'] = {
        label = 'Outfit bag',
        weight = 400,
        stack = true,
        close = true,
        description = 'Holds different outfits'
    },

    ["gold_bar"] = {
        label = "10 Ounce Gold",
        weight = 1000,
        stack = true,
        close = true,
        description = "High Quality Gold",
        client = {
            image = "gold_10.png",  -- Image name (ensure you have this image file in the resource folder)
        }
    },

    ["butter"] = {
        label = "Butter",
        rarity = "epic",
        weight = 100,
        stack = true,
        close = true,
        description = "Butter",
        client = {
            image = "butter.webp",  -- Image name (ensure you have this image file in the resource folder)
        }
    },

    ["gold_shaving"] = {
        label = "Gold Flakes",
        weight = 1000,
        stack = true,
        close = true,
        description = "High Quality Gold Flakes",
        client = {
            image = "gold_shaving.png",  -- Image name (ensure you have this image file in the resource folder)
        }
    },

    ["thermopaste"] = {
        label = "Thermo Paste",
        weight = 50,
        stack = true,
        close = true,
        description = "Thermo Paste",
        client = {
            image = "thermopaste.png",  -- Image name (ensure you have this image file in the resource folder)
        }
    },

    ["file"] = {
        label = "Flat File",
        weight = 50,
        stack = true,
        close = true,
        description = "Shaving File",
        client = {
            image = "file.png",  -- Image name (ensure you have this image file in the resource folder)
        }
    },

    ["gpu"] = {
        label = "GPU",
        weight = 50,
        stack = true,
        close = true,
        description = "A high-end graphics card for gaming and professional use.",
        client = {
            image = "gpu.png",  -- Image name (ensure you have this image file in the resource folder)
        }
    },

    ["snr_chiktortilla"] = {
		label = "Tortilla Chicken",
		weight = 100,
		stack = true,
		close = true,
		description = "Tortilla Chicken",
		client = {
			image = "snr_chiktortilla.png",
		}
	},

	["snr_thontortilla"] = {
		label = "Tortilla Thon",
		weight = 100,
		stack = true,
		close = true,
		description = "Tortilla Thon",
		client = {
			image = "snr_thontortilla.png",
		}
	},

	["snr_fish"] = {
		label = "Fish",
		weight = 100,
		stack = true,
		close = true,
		description = "Fish",
		client = {
			image = "snr_fish.png",
		}
	},

	["snr_ecola"] = {
		label = "E-Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "E-Cola",
		client = {
			image = "snr_ecola.png",
		}
	},

	["snr_cheburger"] = {
		label = "Cheese Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "Cheese Burger",
		client = {
			image = "snr_cheburger.png",
		}
	},

	["snr_nuts"] = {
		label = "Nuts",
		weight = 100,
		stack = true,
		close = true,
		description = "Nuts",
		client = {
			image = "snr_nuts.png",
		}
	},

	["snr_bacon"] = {
		label = "Bacon",
		weight = 100,
		stack = true,
		close = true,
		description = "Bacon",
		client = {
			image = "snr_bacon.png",
		}
	},

	["snr_mayo"] = {
		label = "Mayonaise",
		weight = 100,
		stack = true,
		close = true,
		description = "Mayonaise",
		client = {
			image = "snr_mayo.png",
		}
	},

	["snr_bavicecream"] = {
		label = "Chocolate Ice Cream",
		weight = 100,
		stack = true,
		close = true,
		description = "Bavarian Chocolate Ice Cream",
		client = {
			image = "snr_bavicecream.png",
		}
	},

	["snr_tonno"] = {
		label = "Tonno",
		weight = 100,
		stack = true,
		close = true,
		description = "Tonno",
		client = {
			image = "snr_tonno.png",
		}
	},

	["snr_thonsandwich"] = {
		label = "Sandwich Thon",
		weight = 100,
		stack = true,
		close = true,
		description = "Sandwich Thon",
		client = {
			image = "snr_thonsandwich.png",
		}
	},

	["snr_strsmoothie"] = {
		label = "Strawberry Smoothie",
		weight = 100,
		stack = true,
		close = true,
		description = "Strawberry Smoothie",
		client = {
			image = "snr_strsmoothie.png",
		}
	},

	["snr_americanocoffee"] = {
		label = "Americano",
		weight = 100,
		stack = true,
		close = true,
		description = "Americano",
		client = {
			image = "snr_americanocoffee.png",
		}
	},

	["snr_bacosandwich"] = {
		label = "Sandwich Bacon",
		weight = 100,
		stack = true,
		close = true,
		description = "Sandwich Bacon",
		client = {
			image = "snr_bacosandwich.png",
		}
	},

	["snr_bacontacos"] = {
		label = "Bacon Tacos",
		weight = 100,
		stack = true,
		close = true,
		description = "Bacon Tacos",
		client = {
			image = "snr_bacontacos.png",
		}
	},

	["snr_box"] = {
		label = "Food Box",
		weight = 100,
		stack = true,
		close = true,
		description = "Food Box",
		client = {
			image = "snr_box.png",
		}
	},

	["snr_kiwicecream"] = {
		label = "Kiwi  Ice Cream",
		weight = 100,
		stack = true,
		close = true,
		description = "Kiwi Ice Cream",
		client = {
			image = "snr_kiwicecream.png",
		}
	},

	["snr_riz"] = {
		label = "Riz",
		weight = 100,
		stack = true,
		close = true,
		description = "Riz",
		client = {
			image = "snr_riz.png",
		}
	},

	["snr_starwberry"] = {
		label = "Strawberry",
		weight = 100,
		stack = true,
		close = true,
		description = "Strawberry",
		client = {
			image = "snr_starwberry.png",
		}
	},

	["snr_banana"] = {
		label = "Banana",
		weight = 100,
		stack = true,
		close = true,
		description = "Banana",
		client = {
			image = "snr_banana.png",
		}
	},

	["snr_beeftacos"] = {
		label = "Beef Tacos",
		weight = 100,
		stack = true,
		close = true,
		description = "Beef Tacos",
		client = {
			image = "snr_beeftacos.png",
		}
	},

	["snr_chictacos"] = {
		label = "Chicken Tacos",
		weight = 100,
		stack = true,
		close = true,
		description = "Chicken Tacos",
		client = {
			image = "snr_chictacos.png",
		}
	},

	["snr_hotdogchicken"] = {
		label = "Smoked Chicken Hotdog",
		weight = 100,
		stack = true,
		close = true,
		description = "Smoked Chicken Hotdog",
		client = {
			image = "snr_hotdogchicken.png",
		}
	},

	["snr_bacotortilla"] = {
		label = "Tortilla Bacon",
		weight = 100,
		stack = true,
		close = true,
		description = "Tortilla Bacon",
		client = {
			image = "snr_bacotortilla.png",
		}
	},

	["snr_hotdocheese"] = {
		label = "Cheese Dog",
		weight = 100,
		stack = true,
		close = true,
		description = "Cheese Dog",
		client = {
			image = "snr_hotdocheese.png",
		}
	},

	["snr_lettuce"] = {
		label = "Lettuce",
		weight = 100,
		stack = true,
		close = true,
		description = "Lettuce",
		client = {
			image = "snr_lettuce.png",
		}
	},

	["snr_thon"] = {
		label = "Thon",
		weight = 100,
		stack = true,
		close = true,
		description = "Thon",
		client = {
			image = "snr_thon.png",
		}
	},

	["snr_cherryccake"] = {
		label = "Cherry cup cake",
		weight = 100,
		stack = true,
		close = true,
		description = "Cherry cup cake",
		client = {
			image = "snr_cherryccake.png",
		}
	},

	["snr_temarisushi"] = {
		label = "Temari Sushi",
		weight = 100,
		stack = true,
		close = true,
		description = "Sushi Temari",
		client = {
			image = "snr_temarisushi.png",
		}
	},

	["snr_avocado"] = {
		label = "Avocado",
		weight = 100,
		stack = true,
		close = true,
		description = "Avocado",
		client = {
			image = "snr_avocado.png",
		}
	},

	["snr_ice"] = {
		label = "Ice",
		weight = 100,
		stack = true,
		close = true,
		description = "Ice",
		client = {
			image = "snr_ice.png",
		}
	},

	["snr_blueberry"] = {
		label = "Blueberry",
		weight = 100,
		stack = true,
		close = true,
		description = "Blueberry",
		client = {
			image = "snr_blueberry.png",
		}
	},

	["snr_mthainoodle"] = {
		label = "Meat Noodle",
		weight = 100,
		stack = true,
		close = true,
		description = "Meat Noodle",
		client = {
			image = "snr_mthainoodle.png",
		}
	},

	["snr_shrimps"] = {
		label = "Shrimps",
		weight = 100,
		stack = true,
		close = true,
		description = "Shrimps",
		client = {
			image = "snr_shrimps.png",
		}
	},

	["snr_freshfruits"] = {
		label = "Fresh Fruits",
		weight = 100,
		stack = true,
		close = true,
		description = "Fresh Fruits",
		client = {
			image = "snr_freshfruits.png",
		}
	},

	["snr_rassmoothie"] = {
		label = "Raspberry Smoothie",
		weight = 100,
		stack = true,
		close = true,
		description = "Raspberry Smoothie",
		client = {
			image = "snr_rassmoothie.png",
		}
	},

	["snr_pickles"] = {
		label = "Pickles",
		weight = 100,
		stack = true,
		close = true,
		description = "Pickles",
		client = {
			image = "snr_pickles.png",
		}
	},

	["snr_chiksandwich"] = {
		label = "Sandwich Chicken",
		weight = 100,
		stack = true,
		close = true,
		description = "Sandwich Chicken",
		client = {
			image = "snr_chiksandwich.png",
		}
	},

	["snr_bacopizza"] = {
		label = "Bacon Pizza",
		weight = 100,
		stack = true,
		close = true,
		description = "Bacon Pizza",
		client = {
			image = "snr_bacopizza.png",
		}
	},

	["snr_beefpizza"] = {
		label = "Beef Pizza",
		weight = 100,
		stack = true,
		close = true,
		description = "Beef Pizza",
		client = {
			image = "snr_beefpizza.png",
		}
	},

	["snr_vthainoodle"] = {
		label = "Vegan Noodle",
		weight = 100,
		stack = true,
		close = true,
		description = "Vegan Noodle",
		client = {
			image = "snr_vthainoodle.png",
		}
	},

	["snr_sandwichbuns"] = {
		label = "Sandwich Buns",
		weight = 100,
		stack = true,
		close = true,
		description = "Buns",
		client = {
			image = "snr_sandwichbuns.png",
		}
	},

	["snr_onions"] = {
		label = "Onions",
		weight = 100,
		stack = true,
		close = true,
		description = "Onions",
		client = {
			image = "snr_onions.png",
		}
	},

	["snr_sprunklight"] = {
		label = "Sprunk Light",
		weight = 100,
		stack = true,
		close = true,
		description = "Sprunk Light",
		client = {
			image = "snr_sprunklight.png",
		}
	},

	["snr_bbrsmoothie"] = {
		label = "Blueberry Smoothie",
		weight = 100,
		stack = true,
		close = true,
		description = "Blueberry Smoothie",
		client = {
			image = "snr_bbrsmoothie.png",
		}
	},

	["snr_buns"] = {
		label = "Burger Buns",
		weight = 100,
		stack = true,
		close = true,
		description = "Buns",
		client = {
			image = "snr_buns.png",
		}
	},

	["snr_espressocoffee"] = {
		label = "Espresso",
		weight = 100,
		stack = true,
		close = true,
		description = "Espresso",
		client = {
			image = "snr_espressocoffee.png",
		}
	},

	["snr_rasberry"] = {
		label = "Raspberry",
		weight = 100,
		stack = true,
		close = true,
		description = "Raspberry",
		client = {
			image = "snr_rasberry.png",
		}
	},

	["snr_vanille"] = {
		label = "Vanille",
		weight = 100,
		stack = true,
		close = true,
		description = "Vanille",
		client = {
			image = "snr_vanille.png",
		}
	},

	["snr_kiwsmoothie"] = {
		label = "Kiwi Smoothie",
		weight = 100,
		stack = true,
		close = true,
		description = "Kiwi Smoothie",
		client = {
			image = "snr_kiwsmoothie.png",
		}
	},

	["snr_hotdochilicheese"] = {
		label = "Chili Cheese Dog",
		weight = 100,
		stack = true,
		close = true,
		description = "Chili Cheese Dog",
		client = {
			image = "snr_hotdochilicheese.png",
		}
	},

	["snr_macchiatocoffee"] = {
		label = "Macchiato",
		weight = 100,
		stack = true,
		close = true,
		description = "Macchiato",
		client = {
			image = "snr_macchiatocoffee.png",
		}
	},

	["snr_shrimpstacos"] = {
		label = "Shrimps Tacos",
		weight = 100,
		stack = true,
		close = true,
		description = "Shrimps Tacos",
		client = {
			image = "snr_shrimpstacos.png",
		}
	},

	["snr_noodle"] = {
		label = "Noodle",
		weight = 100,
		stack = true,
		close = true,
		description = "Noodle",
		client = {
			image = "snr_noodle.png",
		}
	},

	["snr_pistache"] = {
		label = "Pistache",
		weight = 100,
		stack = true,
		close = true,
		description = "Pistache",
		client = {
			image = "snr_pistache.png",
		}
	},

	["snr_hotdogmeat"] = {
		label = "Meat Hotdog",
		weight = 100,
		stack = true,
		close = true,
		description = "Meat Hotdog",
		client = {
			image = "snr_hotdogmeat.png",
		}
	},

	["snr_yogurt"] = {
		label = "Yogurt",
		weight = 100,
		stack = true,
		close = true,
		description = "Yogurt",
		client = {
			image = "snr_yogurt.png",
		}
	},

	["snr_bbqburger"] = {
		label = "BBQ Bacon Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "BBQ Bacon Burger",
		client = {
			image = "snr_bbqburger.png",
		}
	},

	["snr_nigirisushi"] = {
		label = "Nigiri Sushi",
		weight = 100,
		stack = true,
		close = true,
		description = "Sushi Nigiri",
		client = {
			image = "snr_nigirisushi.png",
		}
	},

	["snr_pizzasbuns"] = {
		label = "Pizza Buns",
		weight = 100,
		stack = true,
		close = true,
		description = "Buns",
		client = {
			image = "snr_pizzasbuns.png",
		}
	},

	["snr_mango"] = {
		label = "Mango",
		weight = 100,
		stack = true,
		close = true,
		description = "Mango",
		client = {
			image = "snr_mango.png",
		}
	},

	["snr_meat"] = {
		label = "Meat",
		weight = 100,
		stack = true,
		close = true,
		description = "Meat",
		client = {
			image = "snr_meat.png",
		}
	},

	["snr_eclight"] = {
		label = "E-Cola Light",
		weight = 100,
		stack = true,
		close = true,
		description = "E-Cola Light",
		client = {
			image = "snr_eclight.png",
		}
	},

	["snr_rasicecream"] = {
		label = "Rasberry Ice Cream",
		weight = 100,
		stack = true,
		close = true,
		description = "Rasberry Ice Cream",
		client = {
			image = "snr_rasicecream.png",
		}
	},

	["snr_chocchips"] = {
		label = "Chocolate chips",
		weight = 100,
		stack = true,
		close = true,
		description = "Chocolate chips",
		client = {
			image = "snr_chocchips.png",
		}
	},

	["snr_fnafccake"] = {
		label = "Fnaf cup cake",
		weight = 100,
		stack = true,
		close = true,
		description = "Fnaf cup cake",
		client = {
			image = "snr_fnafccake.png",
		}
	},

	["snr_milk"] = {
		label = "Milk",
		weight = 100,
		stack = true,
		close = true,
		description = "Milk",
		client = {
			image = "snr_milk.png",
		}
	},

	["snr_hotdogbuns"] = {
		label = "Hotdog buns",
		weight = 100,
		stack = true,
		close = true,
		description = "Hotdog buns",
		client = {
			image = "snr_hotdogbuns.png",
		}
	},

	["snr_eggs"] = {
		label = "Eggs",
		weight = 100,
		stack = true,
		close = true,
		description = "Eggs",
		client = {
			image = "snr_eggs.png",
		}
	},

	["snr_tomato"] = {
		label = "Tomato",
		weight = 100,
		stack = true,
		close = true,
		description = "Tomato",
		client = {
			image = "snr_tomato.png",
		}
	},

	["snr_potatos"] = {
		label = "Potatos",
		weight = 100,
		stack = true,
		close = true,
		description = "Potatos",
		client = {
			image = "snr_potatos.png",
		}
	},

	["snr_cappucinocoffee"] = {
		label = "Cappucino",
		weight = 100,
		stack = true,
		close = true,
		description = "Cappucino",
		client = {
			image = "snr_cappucinocoffee.png",
		}
	},

	["snr_suggar"] = {
		label = "Sugar",
		weight = 100,
		stack = true,
		close = true,
		description = "Suggar",
		client = {
			image = "snr_suggar.png",
		}
	},

	["snr_dchburger"] = {
		label = "Double Cheese Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "Double Cheese Burger",
		client = {
			image = "snr_dchburger.png",
		}
	},

	["snr_stricecream"] = {
		label = "Strawberry  Ice Cream",
		weight = 100,
		stack = true,
		close = true,
		description = "Strawberry Ice Cream",
		client = {
			image = "snr_stricecream.png",
		}
	},

	["snr_chicken"] = {
		label = "Chicken",
		weight = 100,
		stack = true,
		close = true,
		description = "Chicken",
		client = {
			image = "snr_chicken.png",
		}
	},

	["snr_makisushi"] = {
		label = "Maki Sushi",
		weight = 100,
		stack = true,
		close = true,
		description = "Sushi Maki",
		client = {
			image = "snr_makisushi.png",
		}
	},

	["snr_fries"] = {
		label = "Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "Fries",
		client = {
			image = "snr_fries.png",
		}
	},

	["snr_bluicecream"] = {
		label = "Blueberry Ice Cream",
		weight = 100,
		stack = true,
		close = true,
		description = "Blueberry Ice Cream",
		client = {
			image = "snr_bluicecream.png",
		}
	},

	["snr_lattecoffee"] = {
		label = "Latte",
		weight = 100,
		stack = true,
		close = true,
		description = "Latte",
		client = {
			image = "snr_lattecoffee.png",
		}
	},

	["snr_chicpizza"] = {
		label = "Chicken Pizza",
		weight = 100,
		stack = true,
		close = true,
		description = "Chicken Pizza",
		client = {
			image = "snr_chicpizza.png",
		}
	},

	["snr_cthainoodle"] = {
		label = "Chicken Noodle",
		weight = 100,
		stack = true,
		close = true,
		description = "Chicken Noodle",
		client = {
			image = "snr_cthainoodle.png",
		}
	},

	["snr_candy"] = {
		label = "Candy",
		weight = 100,
		stack = true,
		close = true,
		description = "Candy",
		client = {
			image = "snr_candy.png",
		}
	},

	["snr_chilies"] = {
		label = "Chilies",
		weight = 100,
		stack = true,
		close = true,
		description = "Chilies",
		client = {
			image = "snr_chilies.png",
		}
	},

	["snr_smileyccake"] = {
		label = "Smiley cup cake",
		weight = 100,
		stack = true,
		close = true,
		description = "Smiley cup cake",
		client = {
			image = "snr_smileyccake.png",
		}
	},

	["snr_tortillabuns"] = {
		label = "Tortilla Buns",
		weight = 100,
		stack = true,
		close = true,
		description = "Buns",
		client = {
			image = "snr_tortillabuns.png",
		}
	},

	["snr_coffee"] = {
		label = "Coffee",
		weight = 100,
		stack = true,
		close = true,
		description = "Coffee",
		client = {
			image = "snr_coffee.png",
		}
	},

	["snr_kiwi"] = {
		label = "Kiwi",
		weight = 100,
		stack = true,
		close = true,
		description = "Kiwi",
		client = {
			image = "snr_kiwi.png",
		}
	},

	["snr_cheese"] = {
		label = "Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "Cheese",
		client = {
			image = "snr_cheese.png",
		}
	},

	["snr_chiburger"] = {
		label = "Chicken Cheese Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "Chicken Cheese Burger",
		client = {
			image = "snr_chiburger.png",
		}
	},

	["snr_thonpizza"] = {
		label = "Thon pizza",
		weight = 100,
		stack = true,
		close = true,
		description = "Thon pizza",
		client = {
			image = "snr_thonpizza.png",
		}
	},

	["snr_uramakisushi"] = {
		label = "Uramaki Sushi",
		weight = 100,
		stack = true,
		close = true,
		description = "Sushi Uramaki",
		client = {
			image = "snr_uramakisushi.png",
		}
	},

	["snr_thaisoup"] = {
		label = "Thai Soup",
		weight = 100,
		stack = true,
		close = true,
		description = "Thai Soup",
		client = {
			image = "snr_thaisoup.png",
		}
	},

	["snr_shripizza"] = {
		label = "Shrimps Pizza",
		weight = 100,
		stack = true,
		close = true,
		description = "Shrimps Pizza",
		client = {
			image = "snr_shripizza.png",
		}
	},

	["snr_chocolate"] = {
		label = "Chocolate",
		weight = 100,
		stack = true,
		close = true,
		description = "Chocolate",
		client = {
			image = "snr_chocolate.png",
		}
	},

	["snr_loveccake"] = {
		label = "Love cup cake",
		weight = 100,
		stack = true,
		close = true,
		description = "Love cup cake",
		client = {
			image = "snr_loveccake.png",
		}
	},

	["snr_ketchup"] = {
		label = "Ketchup",
		weight = 100,
		stack = true,
		close = true,
		description = "Ketchup",
		client = {
			image = "snr_ketchup.png",
		}
	},

	["snr_bansmoothie"] = {
		label = "Banana Smoothie",
		weight = 100,
		stack = true,
		close = true,
		description = "Banana Smoothie",
		client = {
			image = "snr_bansmoothie.png",
		}
	},

	["snr_rollccake"] = {
		label = "Roll cup cake",
		weight = 100,
		stack = true,
		close = true,
		description = "Roll cup cake",
		client = {
			image = "snr_rollccake.png",
		}
	},

	["snr_cookies"] = {
		label = "Cookies",
		weight = 100,
		stack = true,
		close = true,
		description = "Cookies",
		client = {
			image = "snr_cookies.png",
		}
	},

	["snr_mushrooms"] = {
		label = "Mushrooms",
		weight = 100,
		stack = true,
		close = true,
		description = "Mushrooms",
		client = {
			image = "snr_mushrooms.png",
		}
	},

	["snr_tacosbuns"] = {
		label = "Tacos Buns",
		weight = 100,
		stack = true,
		close = true,
		description = "Buns",
		client = {
			image = "snr_tacosbuns.png",
		}
	},

	["snr_sprunk"] = {
		label = "Sprunk",
		weight = 100,
		stack = true,
		close = true,
		description = "Sprunk",
		client = {
			image = "snr_sprunk.png",
		}
	},

	["snr_hamburger"] = {
		label = "Hamburger",
		weight = 100,
		stack = true,
		close = true,
		description = "Hamburger",
		client = {
			image = "snr_hamburger.png",
		}
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

    ["policebadge"] = {
        label = "Police Badge",
        weight = 25,
        stack = true,
        close = true,
        description = "A ID badge for Fresh Police",
        client = {
            image = "policebadge.png",
        }
    },

    ["nhsbadge"] = {
        label = "FHS Badge",
        weight = 25,
        stack = true,
        close = true,
        description = "A ID badge for CHS",
        client = {
            image = "nhsbadge.png",
        }
    },

    ["drivinglicense"] = {
        label = "Drivers License",
        weight = 25,
        stack = true,
        close = true,
        description = "A Drivers License",
        client = {
            image = "drivinglicense.png",
        }
    },

    ["hunting"] = {
        label = "Hunting License",
        weight = 25,
        stack = true,
        close = true,
        description = "A ID",
        client = {
            image = "hunting.png",
        }
    },

    ["personalid"] = {
        label = "Personal ID",
        weight = 25,
        stack = true,
        close = true,
        description = "A ID",
        client = {
            image = "personalid.png",
        }
    },

    ['lawyerid'] = {
        label = 'Bar License ID Card.',
        weight = 1,
        consume = 0,
        stack = false,
        close = true,
        description = nil
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
        rarity = "uncommon",
		weight = 160,
		client = {
			event = 'lockpicks:UseLockpick',
			isAdvanced = false
		}
	},

    ['can_injector'] = {
		label = 'CAN Injector',
        descriptiom = "Really handy for removing tracking devices...",
        rarity = "epic",
		weight = 160,
	},

    ['giftbox'] = {
		label = 'Fresh Gift',
        rarity = "legendary",
        description = "Welcome to Lunar Network here is a gift enjoy :)",
		weight = 500,
	},

    ['case_recoil'] = {
		label = 'case recoil',
		weight = 160,
	},

    ['lockpick_door'] = {
		label = 'Door Lockpick',
        rarity = "rare",
		weight = 260,
	},

    ['fishing_rod_tier_1'] = {
        label = 'Fishing Rod Tier 1',
        weight = 1000,
        shouldClose = true,
        stack = false,
    },

    ['plantshears'] = {
        label = 'Plant Shears',
        rarity = "common",
        weight = 500,
        shouldClose = true,
        stack = false,
    },

    ['rope'] = {
        label = 'Zipties',
        rarity = "common",
        weight = 500,
        shouldClose = true,
        stack = false,
        client = {
            image = "ziptie.png",
        }
    },

    ['fishing_rod_tier_2'] = {
        label = 'Fishing Rod Tier 2',
        weight = 1000,
        shouldClose = true,
        stack = false,
    },

    ['fishing_rod_tier_3'] = {
        label = 'Fishing Rod Tier 3',
        weight = 1000,
        shouldClose = true,
        stack = false,
    },

    ['fishing_bait_articbloom'] = {
        label = 'Artic Bloom Lure',
        weight = 0,
        shouldClose = false,
        stack = true,
    },

    ['fishing_bait_classicshimmer'] = {
        label = 'Classic Shimmer Lure',
        weight = 0,
        shouldClose = false,
        stack = true,
    },

    ['fishing_bait_coralstreak'] = {
        label = 'Coral Streak Lure',
        weight = 0,
        shouldClose = false,
        stack = true,
    },

    ['fishing_bait_crimsonriptide'] = {
        label = 'Crimson Riptide Lure',
        weight = 0,
        shouldClose = false,
        stack = true,
    },

    ['fishing_bait_earthworm'] = {
        label = 'Earthworm Bait',
        weight = 0,
        shouldClose = false,
        stack = true,
    },

    ['fishing_bait_greenbackglide'] = {
        label = 'Greenback Glide Lure',
        weight = 0,
        shouldClose = false,
        stack = true,
    },

    ['fishing_bait_limestrike'] = {
        label = 'Lime Strike Lure',
        weight = 0,
        shouldClose = false,
        stack = true,
    },

    ['fishing_bait_midnightswimmer'] = {
        label = 'Midnight Swimmer Lure',
        weight = 0,
        shouldClose = false,
        stack = true,
    },

    ['fishing_bait_mistyminnow'] = {
        label = 'Misty Minnow Lure',
        weight = 0,
        shouldClose = false,
        stack = true,
    },

    ['fishing_bait_sunsetskimmer'] = {
        label = 'Sunset Skimmer Lure',
        weight = 0,
        shouldClose = false,
        stack = true,
    },

    ['fishing_bait_sunshineflasher'] = {
        label = 'Sunshine Flasher Lure',
        weight = 0,
        shouldClose = false,
        stack = true,
    },

    ['fishing_bait_tropicalshimmer'] = {
        label = 'Tropical Shimmer Lure',
        weight = 0,
        shouldClose = false,
        stack = true,
    },

    ['fishing_bluegill'] = {
        label = 'Bluegill',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['fishing_coralkeltfish'] = {
        label = 'Coral Keltfish',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['fishing_largemouthbass'] = {
        label = 'Largemouth Bass',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['fishing_mancoveterra'] = {
        label = 'Mancove Terra',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['fishing_pearlgrouper'] = {
        label = 'Pearl Grouper',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['fishing_silvertrout'] = {
        label = 'Silver Trout',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['fishing_teratgrouper'] = {
        label = 'Terat Grouper',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['fishing_yellowperch'] = {
        label = 'Yellow Perch',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['fishing_bream'] = {
        label = 'Bream',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['fishing_catfish'] = {
        label = 'Catfish',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['fishing_eel'] = {
        label = 'Eel',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['fishing_salmon'] = {
        label = 'Salmon',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['fishing_trout'] = {
        label = 'Trout',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['fishing_tigershark'] = {
        label = 'Tiger Shark',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['fishing_squid'] = {
        label = 'Squid',
        weight = 100,
        shouldClose = false,
        stack = true,
    },

    ['taser_cartridge'] = {
        label = 'Taser Cartridge',
        weight = 100,
        shouldClose = false,
        stack = true,
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
        degrade = 720, -- 12 hours
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
        allowArmed = true,
        consume = 0,
        usable = true,
        client = {
            event = 'radio:client:openUi'
        }
    },

	['armour'] = {
		label = 'Armour',
		weight = 800,
		stack = true,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 9500
		}
	},

    ['partarmour'] = {
		label = 'Armour Plate',
		weight = 200,
		stack = true,
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

    ["driver_license"] = {
        label = "Drivers License",
        weight = 0,
        stack = false,
        close = false,
        description = "Permit to show you can drive a vehicle",
        client = {
            image = "driver_license.png",
        }
    },

    ["hunting_license"] = {
        label = "Hunting License",
        weight = 0,
        stack = false,
        close = false,
        description = "Permit to show you can drive a vehicle",
        client = {
            image = "hunting_license.png",
        }
    },

    ["solicitor_card"] = {
        label = "Solicitor Card",
        weight = 0,
        stack = false,
        close = false,
        description = "Permit",
        client = {
            image = "hunting_license.png",
        }
    },

    ["dendrogyra_coral"] = {
        label = "Dendrogyra",
        weight = 100,
        stack = true,
        close = true,
        description = "Its also known as pillar coral",
        client = {
            image = "dendrogyra_coral.png",
        }
    },

    ["cupcake_holder"] = {
        label = "Cupcake Holder",
        weight = 100,
        stack = true,
        close = false,
        description = "Cupcake",
        client = {
            image = "cupcake_holder.png",
        }
    },

    ["cherry_cupcake"] = {
        label = "Cherry Cupcake",
        weight = 100,
        stack = true,
        close = false,
        description = "Cupcake",
        client = {
            image = "cherry_cupcake.png",
        }
    },

    ["sprinkles_cupcake"] = {
        label = "Sprinkles Cupcake",
        weight = 100,
        stack = true,
        close = false,
        description = "Cupcake",
        client = {
            image = "sprinkles_cupcake.png",
        }
    },

    ["orange_cupcake"] = {
        label = "Orange Cupcake",
        weight = 100,
        stack = true,
        close = false,
        description = "Cupcake",
        client = {
            image = "orange_cupcake.png",
        }
    },

    ["chocolate_cake"] = {
        label = "Chocolate Cake",
        weight = 100,
        stack = true,
        close = false,
        description = "Cake",
        client = {
            image = "chocolate_cake.png",
        }
    },

    ["strawberry_milkshake"] = {
        label = "Strawberry Milkshake",
        weight = 100,
        stack = true,
        close = false,
        description = "Milkshake",
        client = {
            image = "strawberry_milkshake.png",
        }
    },

    ["strawberry_mix"] = {
        label = "Strawberry Milk",
        weight = 100,
        stack = true,
        close = false,
        description = "Moo",
        client = {
            image = "1l_strawb_milk.png",
        }
    },

    ["cake_mix"] = {
        label = "Cake Mix",
        weight = 100,
        stack = true,
        close = false,
        description = "Mixin",
        client = {
            image = "cake_mix.png",
        }
    },

    ["milk"] = {
        label = "Milk Carton",
        weight = 100,
        stack = true,
        close = false,
        description = "Moo",
        client = {
            image = "milk.png",
        }
    },

    ["redbull"] = {
        label = "Redbull",
        weight = 100,
        stack = true,
        close = false,
        description = "Power",
        client = {
            image = "redbull.png",
        }
    },

    -- ["drill"] = {
    --     label = "Drill",
    --     weight = 20000,
    --     stack = true,
    --     close = false,
    --     description = "The real deal...",
    --     client = {
    --         image = "drill.png",
    --     }
    -- },

    ["aluminum"] = {
        label = "Aluminium",
        weight = 100,
        stack = true,
        close = false,
        description = "Nice piece of metal that you can probably use for something",
        client = {
            image = "aluminum.png",
        }
    },

    ["crack_baggy"] = {
        label = "Bag of Crack",
        weight = 0,
        stack = true,
        close = true,
        description = "To get happy faster",
        client = {
            image = "crack_baggy.png",
        }
    },

    ["casinochips"] = {
        label = "Casino Chips",
        weight = 0,
        stack = true,
        close = false,
        description = "Chips For Casino Gambling",
        client = {
            image = "casinochips.png",
        }
    },

    ["empty_weed_bag"] = {
        label = "Empty Baggie",
        weight = 0,
        description = "A small empty bag",
        client = {
            image = "weed_baggy_empty.png",
        }
    },

    ["twerks_candy"] = {
        label = "Twerks",
        weight = 100,
        stack = true,
        close = true,
        description = "Some delicious candy :O",
        client = {
            image = "twerks_candy.png",
        }
    },

    ["firework1"] = {
        label = "2Brothers",
        weight = 1000,
        stack = true,
        close = true,
        description = "Fireworks",
        client = {
            image = "firework1.png",
        }
    },

    ["security_card_01"] = {
        label = "Security Card A",
        weight = 0,
        stack = true,
        close = true,
        description = "A security card... I wonder what it goes to",
        client = {
            image = "security_card_01.png",
        }
    },

    ["ifaks"] = {
        label = "ifaks",
        weight = 200,
        stack = true,
        close = true,
        description = "ifaks for healing and a complete stress remover.",
        client = {
            image = "ifaks.png",
        }
    },

    ["weed_purple-haze_seed"] = {
        label = "Purple Haze Seed",
        weight = 0,
        stack = true,
        close = true,
        description = "A weed seed of Purple Haze",
        client = {
            image = "weed_seed.png",
        }
    },

    ["xtcbaggy"] = {
        label = "Bag of XTC",
        weight = 0,
        stack = true,
        close = true,
        description = "Pop those pills baby",
        client = {
            image = "xtcbaggy.png",
        }
    },

    ["certificate"] = {
        label = "Certificate",
        weight = 0,
        stack = true,
        close = true,
        description = "Certificate that proves you own certain stuff",
        client = {
            image = "certificate.png",
        }
    },

    ["metalscrap"] = {
        label = "Metal Scrap",
        weight = 100,
        stack = 50,
        close = false,
        description = "You can probably make something nice out of this",
        client = {
            image = "metalscrap.png",
        }
    },

    ["goldchain"] = {
        label = "Golden Chain",
        weight = 1500,
        stack = true,
        close = true,
        description = "A golden chain seems like the jackpot to me!",
        client = {
            image = "goldchain.png",
        }
    },

    ["small_tv"] = {
        label = "Small TV",
        weight = 30000,
        stack = false,
        close = true,
        description = "TV",
        client = {
            image = "small_tv.png",
        }
    },

    ["antipatharia_coral"] = {
        label = "Antipatharia",
        weight = 100,
        stack = true,
        close = true,
        description = "Its also known as black corals or thorn corals",
        client = {
            image = "antipatharia_coral.png",
        }
    },

    ["grapejuice"] = {
        label = "Grape Juice",
        weight = 200,
        stack = true,
        close = false,
        description = "Grape juice is said to be healthy",
        client = {
            image = "grapejuice.png",
        }
    },

    ["vodka"] = {
        label = "Vodka",
        weight = 500,
        stack = true,
        close = true,
        description = "For all the thirsty out there",
        client = {
            image = "vodka.png",
        }
    },

    ["police_stormram"] = {
        label = "Stormram",
        weight = 18000,
        stack = true,
        close = true,
        description = "A nice tool to break into doors",
        client = {
            image = "police_stormram.png",
        }
    },

    ["iron"] = {
        label = "Iron",
        weight = 100,
        stack = true,
        close = false,
        description = "Handy piece of metal that you can probably use for something",
        client = {
            image = "iron.png",
        }
    },

    ["weed_white-widow"] = {
        label = "White Widow 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "A weed bag with 2g White Widow",
        client = {
            image = "weed_baggy.png",
        }
    },

    ["tosti"] = {
        label = "Grilled Cheese Sandwich",
        weight = 200,
        degrade = 720, -- 12 hours
        stack = true,
        close = true,
        description = "Nice to eat",
        client = {
            image = "tosti.png",
        }
    },

    ["weed_skunk"] = {
        label = "Skunk 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "A weed bag with 2g Skunk",
        client = {
            image = "weed_baggy.png",
        }
    },

    ["diving_fill"] = {
        label = "Diving Tube",
        weight = 3000,
        stack = false,
        close = true,
        description = "An oxygen tube and a rebreather",
        client = {
            image = "diving_fill.png",
        }
    },

    ["snikkel_candy"] = {
        label = "Snikkel",
        weight = 100,
        stack = true,
        close = true,
        description = "Some delicious candy :O",
        client = {
            image = "snikkel_candy.png",
        }
    },

    ["beer"] = {
        label = "Beer",
        weight = 500,
        degrade = 720, -- 12 hours
        stack = true,
        close = true,
        description = "Nothing like a good cold beer!",
        client = {
            image = "beer.png",
        }
    },

    ["copper"] = {
        label = "Copper",
        weight = 100,
        stack = true,
        close = false,
        description = "Nice piece of metal that you can probably use for something",
        client = {
            image = "copper.png",
        }
    },

    ["rubber"] = {
        label = "Rubber",
        weight = 100,
        stack = true,
        close = false,
        description = "Rubber, I believe you can make your own rubber ducky with it :D",
        client = {
            image = "rubber.png",
        }
    },

    ["whiskey"] = {
        label = "Whiskey",
        weight = 500,
        stack = true,
        close = true,
        description = "For all the thirsty out there",
        client = {
            image = "whiskey.png",
        }
    },

    ["sandwich"] = {
        label = "Sandwich",
        weight = 200,
        degrade = 720, -- 12 hours
        stack = true,
        close = true,
        description = "Nice bread for your stomach",
        client = {
            image = "sandwich.png",
        }
    },

    ["prison_treestump"] = {
        label = "Tree Stump",
        weight = 500,
        stack = true,
        close = true,
        description = "Prison work material",
    },

    ["prison_stool"] = {
        label = "Wooden Stool",
        weight = 750,
        stack = true,
        close = true,
        description = "Prison work product",
    },

    ["weed_amnesia"] = {
        label = "Amnesia 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "A weed bag with 2g Amnesia",
        client = {
            image = "weed_baggy.png",
        }
    },

    ["lighter"] = {
        label = "Lighter",
        rarity = "common",
        weight = 0,
        stack = true,
        close = true,
        description = "On new years eve a nice fire to stand next to",
        client = {
            image = "lighter.png",
        }
    },

    ["lighter_fluid"] = {
        label = "Lighter Fluid",
        weight = 25,
        stack = true,
        close = true,
        description = "Very Flamable Fluid",
        client = {
            image = "lighter_fluid.png",
        }
    },

    ["goldbar"] = {
        label = "Gold Bar",
        weight = 100,
        stack = true,
        close = true,
        description = "Looks pretty expensive to me",
        client = {
            image = "goldbar.png",
        }
    },

    ["policetablet"] = {
        label = "Roadside Fingerprint",
        weight = 5000,
        stack = false,
        close = true,
        description = "A mobile fingerprint tablet.",
        client = {
            image = "policetablet.png",
        }
    },

    ["weaponlicense"] = {
        label = "Weapon License",
        weight = 0,
        stack = false,
        close = true,
        description = "Weapon License",
        client = {
            image = "weaponlicense.png",
        }
    },

    ["firework4"] = {
        label = "Weeping Willow",
        weight = 1000,
        stack = true,
        close = true,
        description = "Fireworks",
        client = {
            image = "firework4.png",
        }
    },

    ["lawyerpass"] = {
        label = "Lawyer Pass",
        weight = 0,
        stack = false,
        close = false,
        description = "Pass exclusive to lawyers to show they can represent a suspect",
        client = {
            image = "lawyerpass.png",
        }
    },

    ["armor"] = {
        label = "Armor",
        weight = 5000,
        stack = true,
        close = true,
        description = "Some protection won't hurt... right?",
        client = {
            image = "armor.png",
        }
    },

    ["glass"] = {
        label = "Glass",
        weight = 100,
        stack = true,
        close = false,
        description = "It is very fragile, watch out",
        client = {
            image = "glass.png",
        }
    },

    ["harness"] = {
        label = "Race Harness",
        weight = 1000,
        stack = false,
        close = true,
        description = "Racing Harness so no matter what you stay in the car",
        client = {
            image = "harness.png",
        }
    },

    ["steel"] = {
        label = "Steel",
        weight = 100,
        stack = true,
        close = false,
        description = "Nice piece of metal that you can probably use for something",
        client = {
            image = "steel.png",
        }
    },

    ["advancedrepairkit"] = {
        label = "Advanced Repairkit",
        weight = 4000,
        stack = true,
        close = true,
        description = "A nice toolbox with stuff to repair your vehicle",
        client = {
            image = "advancedkit.png",
        }
    },

    ["laptop"] = {
        label = "Laptop",
        weight = 4000,
        stack = true,
        close = true,
        description = "Expensive laptop",
        client = {
            image = "laptop.png",
        }
    },

    ["joint"] = {
        label = "Joint",
        weight = 5,
        stack = true,
        close = true,
        description = "Sidney would be very proud at you",
        client = {
            image = "joint.png",
        }
    },

    ["cigarettes"] = {
        label = "Cigarettes",
        weight = 10,
        stack = true,
        close = true,
        description = "Smoking kills"
    },

    ["weed_ak47_seed"] = {
        label = "AK47 Seed",
        weight = 0,
        stack = true,
        close = true,
        description = "A weed seed of AK47",
        client = {
            image = "weed_seed.png",
        }
    },


    ['seed_weed_northern'] = {
        label = 'Northern Lights Seed',
        description = "A Northern Lights Indica cannabis seed. Can be planted in a pot and grown into a plant.",
        weight = 5,
        type = 'Seed',
        stack = true,
        rarity = 'rare',
        client = {
            image = "weed_seed.png",
        }
    },

    ['seed_weed_weaver'] = {
        label = 'Golden Dream Seed',
        description = "A Golden Dream Weaver cannabis seed. Can be planted in a pot and grown into a plant.",
        weight = 5,
        type = 'Seed',
        rarity = 'epic',
        stack = true,
        client = {
            image = "weed_seed2.png",
        }
    },

    ['weedbag_northern'] = {
        label = 'Northern Lights Indica (Bagged)',
        description = "Do you know what this is? That is Northern Lights Cannabis Indica. Ughh no.. it's marijuana.",
        weight = 1,
        type = 'Bagged Drug',
        rarity = 'rare',
        stack = true,
        usable = true
    },
    ['weedbag_weaver'] = {
        label = 'Golden Dream Weaver (Bagged)',
        description = "A citrusy orange hybrid with a relaxing vibe. Great for creativity, easy to grow, and perfect for a chill evening.",
        weight = 1,
        type = 'Bagged Drug',
        rarity = 'epic',
        stack = 30,
        usable = true
    },

    ['weed_northern'] = {
        label = 'Northern Lights Indica',
        description = "Do you know what this is? That is Northern Lights Cannabis Indica. Ughh no.. it's marijuana.",
        weight = 3,
        type = 'Cannabis',
        rarity = 'rare',
        stack = true
    },
    ['weed_weaver'] = {
        label = 'Golden Dream Weaver',
        description = "A citrusy orange hybrid with a relaxing vibe. Great for creativity, easy to grow, and perfect for a chill evening.",
        weight = 3,
        type = 'Cannabis',
        rarity = 'epic',
        stack = true
    },

    ["weed_ak47_bag"] = {
        label = "AK47 Bagged",
        weight = 0,
        stack = true,
        close = true,
        description = "Bagged Up AK47 Weed",
        client = {
            image = "weed-baggie.png",
        }
    },

    ["weed_fertilizer"] = {
        label = "Fertilizer",
        weight = 0,
        stack = true,
        close = true,
        description = "Why does this smell so bad...",
        client = {
            image = "weed_fertilizer.png",
        }
    },

    ["weed_water"] = {
        label = "Watering Can",
        weight = 100,
        stack = true,
        close = true,
        description = "A watering can used for watering things",
        client = {
            image = "weed_water.png",
        }
    },

    ['card_2070'] = {
        label = 'LSX 2070',
        weight = 750,
        stack = true
    },

    ['card_2080'] = {
        label = 'LSX 2080',
        weight = 750,
        stack = true
    },

    ['card_3080'] = {
        label = 'LSX 3080',
        weight = 1000,
        stack = true
    },

    ['card_3090'] = {
        label = 'LSX 3090',
        weight = 1000,
        stack = true
    },

    ['card_4080'] = {
        label = 'LSX 4080',
        weight = 1500,
        stack = true
    },

    ['card_4090'] = {
        label = 'LSX 4090',
        weight = 1500,
        stack = true
    },

    ['warehouse_locator'] = {
        label = 'Warehouse locator',
        weight = 200,
        stack = true
    },

    ['usb_drive'] = {
        label = 'USB drive',
        weight = 100,
        stack = true
    },

    ["gatecrack"] = {
        label = "Gatecrack",
        weight = 0,
        stack = true,
        close = true,
        description = "Handy software to tear down some fences",
        client = {
            image = "usb_device.png",
        }
    },

    ["thermite"] = {
        label = "Thermite",
        weight = 1000,
        stack = true,
        close = true,
        description = "Sometimes you'd wish for everything to burn",
        client = {
            image = "thermite.png",
        }
    },

    ["meth"] = {
        label = "Meth",
        weight = 100,
        stack = true,
        close = true,
        description = "A baggie of Meth",
        client = {
            image = "meth.png",
        }
    },

    ["grape"] = {
        label = "Grape",
        weight = 100,
        stack = true,
        close = false,
        description = "Mmmmh yummie, grapes",
        client = {
            image = "grape.png",
        }
    },

    ["wine"] = {
        label = "Wine",
        weight = 300,
        stack = true,
        close = false,
        description = "Some good wine to drink on a fine evening",
        client = {
            image = "wine.png",
        }
    },

    ["cokebaggy"] = {
        label = "Bag of Coke",
        weight = 0,
        stack = true,
        close = true,
        description = "To get happy real quick",
        client = {
            image = "cokebaggy.png",
        }
    },

    ["visa"] = {
        label = "Visa Card",
        weight = 0,
        stack = false,
        close = false,
        description = "Visa can be used via ATM",
        client = {
            image = "visa.png",
        }
    },

    ["plastic"] = {
        label = "Plastic",
        weight = 50,
        stack = true,
        close = false,
        description = "RECYCLE! - Greta Thunberg 2019",
        client = {
            image = "plastic.png",
        }
    },

    ["drug_package"] = {
        label = "Drug Package",
        weight = 10,
        stack = true,
        close = true,
        description = "1KG Weed Brick to sell to large customers.",
        client = {
            image = "weed_brick.png",
        }
    },

    ["weed_lab"] = {
        label = "AK47 Brick",
        weight = 10,
        stack = true,
        close = true,
        description = "Weed Brick",
        client = {
            image = "weed_brick.png",
        }
    },

    ["digital_scale"] = {
        label = "Digital Scale",
        weight = 10,
        stack = true,
        close = true,
        description = "Scales",
        client = {
            image = "digital_scale.png",
        }
    },

    ["trojan_usb"] = {
        label = "Trojan USB",
        weight = 0,
        stack = true,
        close = true,
        description = "Handy software to shut down some systems",
        client = {
            image = "usb_device.png",
        }
    },
    ["crypto_usb"] = {
        label = "Encrypted USB",
        weight = 0,
        stack = true,
        close = true,
        description = "Handy software to shut down some systems",
        client = {
            image = "usb_device.png",
        }
    },

    ["electronickit"] = {
        label = "Electronic Kit",
        weight = 100,
        stack = true,
        close = true,
        description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?",
        client = {
            image = "electronickit.png",
        }
    },

    ["rolling_paper"] = {
        label = "Rolling Paper",
        weight = 0,
        stack = true,
        close = true,
        description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
        client = {
            image = "rolling_paper.png",
        }
    },

    ["stickynote"] = {
        label = "Sticky note",
        weight = 0,
        stack = false,
        close = false,
        description = "Sometimes handy to remember something :)",
        client = {
            image = "stickynote.png",
        }
    },

    ["markedbills"] = {
        label = "Marked Money",
        weight = 1000,
        stack = false,
        close = true,
        description = "Money?",
        client = {
            image = "markedbills.png",
        }
    },

    ["heavyarmor"] = {
        label = "Heavy Armor",
        weight = 5000,
        stack = true,
        close = true,
        description = "Some protection won't hurt... right?",
        client = {
            image = "armor.png",
        }
    },

    ["weed_ak47"] = {
        label = "AK47 Bud",
        weight = 50,
        description = "Smelly Bud of AK47",
        client = {
            image = "weed_ak47bud.png",
        }
    },

    ["weed_skunk_seed"] = {
        label = "Skunk Seed",
        weight = 0,
        stack = true,
        close = true,
        description = "A weed seed of Skunk",
        client = {
            image = "weed_seed.png",
        }
    },

    ["aluminumoxide"] = {
        label = "Aluminium Powder",
        weight = 100,
        stack = true,
        close = false,
        description = "Some powder to mix with",
        client = {
            image = "aluminumoxide.png",
        }
    },

    ["printerdocument"] = {
        label = "Document",
        weight = 500,
        stack = false,
        close = true,
        description = "A nice document",
        client = {
            image = "printerdocument.png",
        }
    },

    ["tablet"] = {
        label = "Tablet",
        weight = 2000,
        stack = true,
        close = true,
        description = "Expensive tablet",
        client = {
            image = "tablet.png",
        }
    },

    ["advancedlockpick"] = {
        label = "ADVANCED LOCKPICK",
        rarity = "rare",
        weight = 500,
        stack = true,
        close = true,
        description = "If you lose your keys a lot this is very useful... Also useful to open your beers",
        client = {
            image = "advancedlockpick.png",
            event = 'lockpicks:UseLockpick',
            isAdvanced = true
        }
    },

    ["microwave"] = {
        label = "Microwave",
        weight = 3000,
        stack = false,
        close = true,
        description = "Microwave",
        client = {
            image = "microwave.png",
        }
    },

    ["ironoxide"] = {
        label = "Iron Powder",
        weight = 100,
        stack = true,
        close = false,
        description = "Some powder to mix with.",
        client = {
            image = "ironoxide.png",
        }
    },

    ["firstaid"] = {
        label = "First Aid",
        weight = 100,
        stack = true,
        close = true,
        description = "You can use this First Aid kit to get people back on their feet",
        client = {
            image = "firstaid.png",
        }
    },

    ["radioscanner"] = {
        label = "Radio Scanner",
        weight = 1000,
        stack = true,
        close = true,
        description = "With this you can get some police alerts. Not 100% effective however",
        client = {
            image = "radioscanner.png",
        }
    },

    ["coffee"] = {
        label = "Coffee",
        weight = 200,
        stack = true,
        close = true,
        description = "Pump 4 Caffeine",
        client = {
            image = "coffee.png",
        }
    },

    ["walkstick"] = {
        label = "Walking Stick",
        weight = 1000,
        stack = true,
        close = true,
        description = "Walking stick for ya'll grannies out there.. HAHA",
        client = {
            image = "walkstick.png",
        }
    },

    ["screwdriverset"] = {
        label = "Toolkit",
        rarity = "common",
        weight = 1000,
        stack = true,
        close = false,
        description = "Very useful to screw... screws...",
        client = {
            image = "screwdriverset.png",
        }
    },

    ["pol_mdt"] = {
		label = "POLICE MDT",
        rarity = "common",
		weight = 200,
		stack = true,
		close = true,
        client = {
        export = 'drx_mdt.OpenMDT'
    }
	},

	["ems_mdt"] = {
		label = "CHS MDT",
		weight = 200,
		stack = true,
		close = true,
	},

	["citizen_mdt"] = {
		label = "Citizen MDT",
		weight = 200,
		stack = true,
		close = true,
	},

    ['pure_tablet'] = {
        label = 'Organisation Laptop',
        weight = 160,
        client = {
            image = "pure_laptop.png",
        }
    },

    ['sn_tablet'] = {
        label = 'Core Laptop',
        weight = 160,
        client = {
            image = "pure_laptop.png",
        }
    },

    ['newlaptop'] = {
        label = 'Organisation Laptop',
        weight = 160,
        client = {
            image = "pure_laptop.png",
        }
    },

    ['welder'] = {
        label = 'Welder',
        weight = 500,
    },

    ['washmachine'] = {
        label = 'Money Wash Machine',
        weight = 2000,
    },

    ['boogieboard'] = {
        label = 'Boogie Board',
        weight = 160,
    },
    ['brandybottle'] = {
        label = 'Brandy Bottle',
        weight = 160,
    },
    ['wateringcan'] = {
        label = 'Watering Can',
        weight = 160,
    },
    ['golfclub'] = {
        label = 'Golf Club',
        weight = 160,
    },
    ['dufflebag'] = {
        label = 'Duffle Bag',
        weight = 160,
    },

    ['paintstriper'] = {
        label = 'Paint Stripper',
        weight = 160,
        client = {
            image = "pure_paintscraper.png",
        }
    },

 ['mechanicrepairkit'] = {
        label = 'Mechanic Repair Kit',
        weight = 5000,
        stack = true,
        close = true,
        description = 'A professional repair kit to fully fix a vehicle',
    },

    ['spraycan'] = {
        label = 'Spray Can',
        weight = 500,
        stack = true,
        close = true,
        description = 'Use this to spray paint a vehicle',
    },

    ['tirerepairkit'] = {
        label = 'Tire Repair Kit',
        weight = 2000,
        stack = true,
        close = true,
        description = 'Repair vehicle tires',
    },

    ['veh_engine'] = {
        label = 'Vehicle Engine',
        weight = 5000,
        stack = false,
        close = true,
        description = 'A vehicle engine part',
    },

    ['veh_engine1'] = {
        label = 'Stock Engine',
        weight = 5000,
        stack = true,
        close = true,
        description = 'Stock Vehicle Engine',
    },

    ['veh_engine2'] = {
        label = 'Level 1 Engine',
        weight = 5000,
        stack = true,
        close = true,
        description = 'Vehicle Engine Upgrade Level 1',
    },

    ['veh_engine3'] = {
        label = 'Level 2 Engine',
        weight = 5000,
        stack = true,
        close = true,
        description = 'Vehicle Engine Upgrade Level 2',
    },

    ['veh_engine4'] = {
        label = 'Level 3 Engine',
        weight = 5000,
        stack = true,
        close = true,
        description = 'Vehicle Engine Upgrade Level 3',
    },

    ['veh_engine5'] = {
        label = 'Level 4 Engine',
        weight = 5000,
        stack = true,
        close = true,
        description = 'Vehicle Engine Upgrade Level 4',
    },

    ['veh_transmission'] = {
        label = 'Vehicle Transmission',
        weight = 4000,
        stack = false,
        close = true,
        description = 'A vehicle transmission part',
    },

    ['veh_transmission1'] = {
        label = 'Stock Transmission',
        weight = 4000,
        stack = true,
        close = true,
        description = 'Stock Vehicle Transmission',
    },

    ['veh_transmission2'] = {
        label = 'Street Transmission',
        weight = 4000,
        stack = true,
        close = true,
        description = 'Vehicle Street Transmission Upgrade',
    },

    ['veh_transmission3'] = {
        label = 'Sport Transmission',
        weight = 4000,
        stack = true,
        close = true,
        description = 'Vehicle Sport Transmission Upgrade',
    },

    ['veh_transmission4'] = {
        label = 'Race Transmission',
        weight = 4000,
        stack = true,
        close = true,
        description = 'Vehicle Race Transmission Upgrade',
    },

    ['veh_suspension'] = {
        label = 'Vehicle Suspension',
        weight = 3000,
        stack = false,
        close = true,
        description = 'A vehicle suspension part',
    },

    ['veh_suspension1'] = {
        label = 'Stock Suspension',
        weight = 3000,
        stack = true,
        close = true,
        description = 'Stock Vehicle Suspension',
    },

    ['veh_suspension2'] = {
        label = 'Lowered Suspension',
        weight = 3000,
        stack = true,
        close = true,
        description = 'Vehicle Lowered Suspension Upgrade',
    },

    ['veh_suspension3'] = {
        label = 'Street Suspension',
        weight = 3000,
        stack = true,
        close = true,
        description = 'Vehicle Street Suspension Upgrade',
    },

    ['veh_suspension4'] = {
        label = 'Sport Suspension',
        weight = 3000,
        stack = true,
        close = true,
        description = 'Vehicle Sport Suspension Upgrade',
    },

    ['veh_suspension5'] = {
        label = 'Competition Suspension',
        weight = 3000,
        stack = true,
        close = true,
        description = 'Vehicle Competition Suspension Upgrade',
    },

    ['veh_brakes'] = {
        label = 'Vehicle Brakes',
        weight = 2000,
        stack = false,
        close = true,
        description = 'A vehicle brake part',
    },

    ['veh_brakes1'] = {
        label = 'Stock Brakes',
        weight = 2000,
        stack = true,
        close = true,
        description = 'Stock Vehicle Brakes',
    },

    ['veh_brakes2'] = {
        label = 'Street Brakes',
        weight = 2000,
        stack = true,
        close = true,
        description = 'Street Vehicle Brakes',
    },

    ['veh_brakes3'] = {
        label = 'Sport Brakes',
        weight = 2000,
        stack = true,
        close = true,
        description = 'Sport Vehicle Brakes',
    },

    ['veh_brakes4'] = {
        label = 'Race Brakes',
        weight = 2000,
        stack = true,
        close = true,
        description = 'Race Vehicle Brakes',
    },

    ['veh_plates'] = {
        label = 'License Plates',
        weight = 500,
        stack = true,
        close = true,
        description = 'Change the colour of a vehicle\'s license plate',
    },

    ['veh_tint'] = {
        label = 'Window Tints',
        weight = 500,
        stack = true,
        close = true,
        description = 'Change the tints on a car',
    },

    ['veh_horn'] = {
        label = 'Vehicle Horn',
        weight = 500,
        stack = true,
        close = true,
        description = 'Change the horn on a car',
    },

    ['veh_skirts'] = {
        label = 'Vehicle Skirts',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Change the skirts on a car',
    },

    ['veh_xenons'] = {
        label = 'Vehicle Xenons',
        weight = 500,
        stack = true,
        close = true,
        description = 'Change the lights on a car',
    },

    ['veh_spoiler'] = {
        label = 'Vehicle Spoiler',
        weight = 1500,
        stack = true,
        close = true,
        description = 'Change the spoiler on a car',
    },

    ['veh_hood'] = {
        label = 'Vehicle Hood',
        weight = 2000,
        stack = true,
        close = true,
        description = 'Change the hood/bonnet on a car',
    },

    ['veh_exhaust'] = {
        label = 'Vehicle Exhaust',
        weight = 1500,
        stack = true,
        close = true,
        description = 'Change the exhaust on a car',
    },

    ['veh_interior'] = {
        label = 'Vehicle Interior',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Vehicle interior modification',
    },

    ['veh_exterior'] = {
        label = 'Vehicle Exterior',
        weight = 1000,
        stack = true,
        close = true,
        description = 'Vehicle exterior modification',
    },

    ['veh_wheels'] = {
        label = 'Vehicle Wheels',
        weight = 2000,
        stack = true,
        close = true,
        description = 'Vehicle wheel modification',
    },

    ['veh_neons'] = {
        label = 'Vehicle Neons',
        weight = 500,
        stack = true,
        close = true,
        description = 'Vehicle neon modification',
    },
    ['mechanic_receipt'] = {
        label = 'Mechanic Receipt',
        weight = 10,
        stack = true,
        close = true,
        description = 'A receipt from vehicle modifications',
        client = {
            export = 'mechanicjob.mechanic_receipt'
        },
    },

    ['fish_cooler'] = {
        label = 'Fish Cooler',
        rarity = "uncommon",
        weight = 4000,
    },

    ['baguse2'] = {
        label = 'Duffle Bag',
        rarity = "uncommon",
        weight = 10000,
    },

    ['baguse'] = {
        label = 'PD Duffle Bag',
        rarity = "uncommon",
        weight = 6000,
    },

    ['bag'] = {
        label = 'Bag',
        rarity = "common",
        weight = 160,
    },

    ['bp_bench'] = {
        label = 'Blueprint Bench',
        weight = 160,
    },
    ['cutter'] = {
        label = 'Glass Cutter',
        weight = 160,
    },
    ['vangelico_key'] = {
        label = 'Vault Codes',
        weight = 160,
    },

    ['drone'] = {
        label = 'DRONE',
        weight = 160,
    },
    ['drone_lspd'] = {
        label = 'POLICE DRONE',
        rarity = "epic",
        weight = 160,
    },
    ['crack_kit'] = {
        label = 'Wire Cutters',
        weight = 160,
    },
    ['goldwatch'] = {
        label = 'MECHANICAL WATCH',
        rarity = "rare",
        weight = 160,
    },
    ['ring'] = {
        label = 'DIAMOND RING',
        rarity = "rare",
        weight = 160,
    },
    ['necklace'] = {
        label = 'PLATINUM Necklace',
        rarity = "rare",
        weight = 160,
    },
    ['van_necklace'] = {
        label = 'Vangelico Necklace',
        rarity = "epic",
        weight = 160,
    },

    ["empty_evidence_bag"] = {
        label = "Empty Evidence Bag",
        weight = 0,
        stack = true,
        close = false,
        description = "Used a lot to keep DNA from blood, bullet shells and more",
        client = {
            image = "evidence.png",
        }
    },

    ["diamond_ring"] = {
        label = "Diamond Ring",
        weight = 1500,
        stack = true,
        close = true,
        description = "A diamond ring seems like the jackpot to me!",
        client = {
            image = "diamond_ring.png",
        }
    },

    ["weed_og-kush_seed"] = {
        label = "OGKush Seed",
        weight = 0,
        stack = true,
        close = true,
        description = "A weed seed of OG Kush",
        client = {
            image = "weed_seed.png",
        }
    },

    ["weed_nutrition"] = {
        label = "Plant Fertilizer",
        weight = 100,
        stack = true,
        close = true,
        description = "Plant nutrition",
        client = {
            image = "weed_nutrition.png",
        }
    },

    ["rolex"] = {
        label = "Golden Watch",
        weight = 1500,
        stack = true,
        close = true,
        description = "A golden watch seems like the jackpot to me!",
        client = {
            image = "rolex.png",
        }
    },

    ["nitrous"] = {
        label = "Nitrous",
        weight = 1000,
        stack = true,
        close = true,
        description = "Speed up, gas pedal! :D",
        client = {
            image = "nitrous.png",
        }
    },

    ["diamond"] = {
        label = "Diamond",
        weight = 1000,
        stack = true,
        close = true,
        description = "A diamond seems like the jackpot to me!",
        client = {
            image = "diamond.png",
        }
    },

    ["filled_evidence_bag"] = {
        label = "Evidence Bag",
        weight = 200,
        stack = false,
        close = false,
        description = "A filled evidence bag to see who committed the crime >:(",
        client = {
            image = "evidence.png",
        }
    },

    ["evidencebag"] = {
        label = "Evidence Bag",
        weight = 200,
        stack = true,
        close = false,
        description = "A evidence bag",
        client = {
            image = "evidence.png",
        }
    },

    ['filledevidencebag'] = {
        label = 'Filled Evidence Bag',
        weight = 700,
        stack = false,
        description = 'Contains collected evidence.',
        client = {
            image = 'filledevidencebag.png',
        }
    },

    ['processed_evidence_bag'] = {
        label = 'Processed Evidence Bag',
        weight = 700,
        stack = false,
        description = 'Processed evidence with analysis results.',
        client = {
            image = 'filledevidencebag.png',
        }
    },

    ['evidenceflatpack'] = {
        label = 'Evidence Pack Flatpack',
        weight = 250,
        stack = true,
        description = 'Open me and fill me with evidence',
        client = {
            image = 'evidenceflatpack.png',
        }
    },

    ['evidencereport'] = {
        label = 'Evidence Report',
        weight = 5,
        stack = false,
        description = 'An evidence analysis report',
        client = {
            image = 'report.png',
        }
    },

    ['dnareport'] = {
        label = 'DNA Report',
        weight = 5,
        stack = false,
        description = 'A DNA analysis report',
        client = {
            image = 'report.png',
        },
    },

    ['evidencepack'] = {
        label = 'Evidence Pack',
        weight = 250,
        stack = true,
        description = 'Insert evidence here',
        client = {
            image = 'evidencepack.png',
        }
    },

    ["weed_amnesia_seed"] = {
        label = "Amnesia Seed",
        weight = 0,
        stack = true,
        close = true,
        description = "A weed seed of Amnesia",
        client = {
            image = "weed_seed.png",
        }
    },

    ["cryptostick"] = {
        label = "Crypto Stick",
        weight = 200,
        stack = false,
        close = true,
        description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
        client = {
            image = "cryptostick.png",
        }
    },

    ["10kgoldchain"] = {
        label = "10k Gold Chain",
        weight = 2000,
        stack = true,
        close = true,
        description = "10 carat golden chain",
        client = {
            image = "10kgoldchain.png",
        }
    },

    ["toaster"] = {
        label = "Toaster",
        weight = 18000,
        stack = false,
        close = true,
        description = "Toast",
        client = {
            image = "placeholder.png",
        }
    },

    ["jerry_can"] = {
        label = "Jerrycan 20L",
        weight = 20000,
        stack = true,
        close = true,
        description = "A can full of Fuel",
        client = {
            image = "jerry_can.png",
        }
    },

    ["weed_white-widow_seed"] = {
        label = "White Widow Seed",
        weight = 0,
        stack = true,
        close = false,
        description = "A weed seed of White Widow",
        client = {
            image = "weed_seed.png",
        }
    },

    ["water_bottle"] = {
        label = "Bottle of Water",
        weight = 500,
        stack = true,
        close = true,
        description = "For all the thirsty out there",
        client = {
            image = "water_bottle.png",
        }
    },

    ["painkillers"] = {
        label = "Painkillers",
        weight = 0,
        stack = true,
        close = true,
        description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
        client = {
            image = "painkillers.png",
        }
    },

    ["cleaningkit"] = {
        label = "Cleaning Kit",
        weight = 250,
        stack = true,
        close = true,
        description = "A microfiber cloth with some soap will let your car sparkle again!",
        client = {
            image = "cleaningkit.png",
        }
    },

    ["kurkakola"] = {
        label = "Cola",
        weight = 500,
        stack = true,
        close = true,
        description = "For all the thirsty out there",
        client = {
            image = "kurkakola.png",
        }
    },

    ["binoculars"] = {
        label = "Binoculars",
        weight = 600,
        stack = true,
        close = true,
        description = "Sneaky Breaky...",
        client = {
            image = "binoculars.png",
        }
    },

    ["labkey"] = {
        label = "Key",
        weight = 500,
        stack = false,
        close = true,
        description = "Key for a lock...?",
        client = {
            image = "labkey.png",
        }
    },

    ["coke_brick"] = {
        label = "Coke Brick",
        weight = 1000,
        stack = false,
        close = true,
        description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
        client = {
            image = "coke_brick.png",
        }
    },

    ["repairkit"] = {
        label = "Repairkit",
        weight = 2500,
        stack = true,
        close = true,
        description = "A nice toolbox with stuff to repair your vehicle",
        client = {
            image = "repairkit.png",
        }
    },

    ["oxy"] = {
        label = "Prescription Oxy",
        weight = 0,
        stack = true,
        close = true,
        description = "The Label Has Been Ripped Off",
        client = {
            image = "oxy.png",
        }
    },

    ["moneybag"] = {
        label = "Money Bag",
        weight = 0,
        stack = false,
        close = true,
        description = "A bag with cash",
        client = {
            image = "moneybag.png",
        }
    },

    ["weed_og-kush"] = {
        label = "OGKush 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "A weed bag with 2g OG Kush",
        client = {
            image = "weed_baggy.png",
        }
    },

    ["firework3"] = {
        label = "WipeOut",
        weight = 1000,
        stack = true,
        close = true,
        description = "Fireworks",
        client = {
            image = "firework3.png",
        }
    },

    ["diving_gear"] = {
        label = "Diving Gear",
        weight = 3000,
        stack = false,
        close = true,
        description = "An oxygen tank and a rebreather",
        client = {
            image = "diving_gear.png",
        }
    },

    ["coke_small_brick"] = {
        label = "Coke Package",
        weight = 350,
        stack = false,
        close = true,
        description = "Small package of cocaine, mostly used for deals and takes a lot of space",
        client = {
            image = "coke_small_brick.png",
        }
    },

    ["security_card_02"] = {
        label = "Security Card B",
        weight = 0,
        stack = true,
        close = true,
        description = "A security card... I wonder what it goes to",
        client = {
            image = "security_card_02.png",
        }
    },

    ["weed_purple-haze"] = {
        label = "Purple Haze 2g",
        weight = 200,
        stack = true,
        close = false,
        description = "A weed bag with 2g Purple Haze",
        client = {
            image = "weed_baggy.png",
        }
    },

    ["firework2"] = {
        label = "Poppelers",
        weight = 1000,
        stack = true,
        close = true,
        description = "Fireworks",
        client = {
            image = "firework2.png",
        }
    },

    ["handcuffs"] = {
        label = "Handcuffs",
        rarity = "common",
        weight = 100,
        stack = true,
        close = true,
        description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
        client = {
            image = "handcuffs.png",
        }
    },

    ['hammer'] = {
		label = 'Hammer',
		description = "",
		weight = 500,
		stack = true
	},

	['pickaxe'] = {
		label = 'Pickaxe',
		description = "",
		weight = 500,
		stack = true
	},

	['drill'] = {
		label = 'Drill',
        rarity = "common",
		description = "",
		weight = 500,
		stack = true
	},

	['laser_drill'] = {
		label = 'Laser drill',
		description = "",
		weight = 500,
		stack = true
	},

	['crystal_ore'] = {
		label = 'Crystal ore',
		description = "",
		weight = 500,
		stack = true
	},

	['diamond_ore'] = {
		label = 'Diamond ore',
		description = "",
		weight = 500,
		stack = true
	},

	['emerald_ore'] = {
		label = 'Emerald ore',
		description = "",
		weight = 500,
		stack = true
	},

	['sapphire_ore'] = {
		label = 'Sapphire ore',
		description = "",
		weight = 500,
		stack = true
	},

	['ruby_ore'] = {
		label = 'Ruby ore',
		description = "",
		weight = 500,
		stack = true
	},

    ['money_bag'] = {
		label = 'Money bag',
		description = "Gruppe 6 money bag",
		weight = 250,
		stack = true
	},

	['money_crate'] = {
		label = 'Money crate',
		description = "Gruppe 6 money crate",
		weight = 500,
		stack = true
	},

    ['recycledparts'] = {
		label = 'Recycled Parts',
		description = "What is in the box?",
		weight = 100,
		stack = false,
        client = {
			image = "box.png",
		}
	},

    ['debit_card'] = {
		label = 'Lost Debit Card',
		description = "Hmmm Lets try this...",
		weight = 100,
		stack = true
	},

    ['box'] = {
		label = 'Cardboard box',
		description = "What is in the box?",
		weight = 100,
		stack = false
	},

    ['tv'] = {
		label = 'Old TV',
		description = "Take me back to the 90's",
		weight = 700,
		stack = false
	},

    ['skateboard'] = {
		label = 'Skateboard',
		description = "Skate 3",
		weight = 500
	},

    ['big_tv'] = {
		label = 'Flat screen TV',
		description = "SKY TV",
		weight = 500,
		stack = false
	},

    ['house_art'] = {
		label = 'Art',
		description = "Picasso i like it",
		weight = 500,
		stack = false
	},

    ['golfclubs'] = {
		label = 'Golfclubs',
		description = "A swing and a miss",
		weight = 300,
		stack = false
	},

    ['pc'] = {
		label = 'Gaming PC',
		description = "Spec's are in the description",
		weight = 500,
		stack = false
	},

    ['briefcase'] = {
		label = 'Briefcase',
		description = "Used for handling large sums of cash",
		weight = 250,
		stack = false
	},

    ['zat-rentalpaper'] = {
		label = 'Rental Papers',
		description = "",
		weight = 50,
		stack = false
	},

    ['boombox'] = {
		label = 'Boombox',
		description = "Used for playing slammers",
		weight = 275,
		stack = false
	},

    ["scuba_tube_l1"] = {
		label = "Scuba Tube 1",
		weight = 1000,
		stack = false,
		close = true,
		description = "An oxygen tube and a rebreather",
		client = {
			image = "diving-tube-level1.png",
		}
	},

	["scuba_tube_l2"] = {
		label = "Scuba Tube 2",
		weight = 1000,
		stack = false,
		close = true,
		description = "An oxygen tube and a rebreather",
		client = {
			image = "diving-tube-level2.png",
		}
	},

	["scuba_tube_l3"] = {
		label = "Scuba Tube 3",
		weight = 1000,
		stack = false,
		close = true,
		description = "An oxygen tube and a rebreather",
		client = {
			image = "diving-tube-level3.png",
		}
	},

	["scuba_gear"] = {
		label = "Scuba Gear",
		weight = 1000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather",
		client = {
			image = "scuba_gear.png",
		}
	},

	["liftbag"] = {
		label = "Lift Bag",
		weight = 1000,
		stack = true,
		close = true,
		description = "A lift bag to lift heavy objects",
		client = {
			image = "liftbag.png",
		}
	},

    ['blue_keycard'] = {
        label = 'Blue Keycard',
        weight = 100,
        stack = false
    },

    ['purple_keycard'] = {
        label = 'Purple Keycard',
        weight = 100,
        stack = false
    },

    ['hack_usb'] = {
        label = 'Phantom USB',
        weight = 100,
        stack = false
    },

    ['screen'] = {
        label = 'Screen',
        weight = 100,
        stack = false
    },

    ---------------- BLUEPRINTS NEW -----------------

    ['bp_plantpot'] = {
        label = 'Plant Pot Blueprint',
        rarity = "rare",
        weight = 100,
        stack = false,
        client = {
            image = "bp_plantpot.png",
        }
    },

    ['bp_magnet_rod'] = {
        label = 'Magnet Rod Blueprint',
        rarity = "epic",
        weight = 100,
        stack = false,
        client = {
            image = "bp_magnet_rod.png",
        }
    },

    ['bp_illegal_rod'] = {
        label = 'Illegal Rod Blueprint',
        rarity = "legendary",
        weight = 100,
        stack = false,
        client = {
            image = "bp_illegal_rod.png",
        }
    },

    ['bp_bat'] = {
        label = 'Bat Blueprint',
        rarity = "uncommon",
        weight = 100,
        stack = false,
        client = {
            image = "bp_bat.png",
        }
    },
    ['bp_crowbar'] = {
        label = 'Crowbar Blueprint',
        rarity = "uncommon",
        weight = 100,
        stack = false,
        client = {
            image = "bp_crowbar.png",
        }
    },
    ['bp_dagger'] = {
        label = 'Dagger Blueprint',
        rarity = "uncommon",
        weight = 100,
        stack = false,
        client = {
            image = "bp_dagger.png",
        }
    },
    ['bp_golfclub'] = {
        label = 'Golf Club Blueprint',
        rarity = "uncommon",
        weight = 100,
        stack = false,
        client = {
            image = "bp_golfclub.png",
        }
    },
    ['bp_hammer'] = {
        label = 'Hammer Blueprint',
        rarity = "uncommon",
        weight = 100,
        stack = false,
        client = {
            image = "bp_hammer.png",
        }
    },
    ['bp_hatchet'] = {
        label = 'Hatchet Blueprint',
        rarity = "uncommon",
        weight = 100,
        stack = false,
        client = {
            image = "bp_hatchet.png",
        }
    },
    ['bp_knife'] = {
        label = 'Knife Blueprint',
        rarity = "uncommon",
        weight = 100,
        stack = false,
        client = {
            image = "bp_knife.png",
        }
    },
    ['bp_machete'] = {
        label = 'Machete Blueprint',
        rarity = "uncommon",
        weight = 100,
        stack = false,
        client = {
            image = "bp_machete.png",
        }
    },
    ['bp_poolcue'] = {
        label = 'Pool Cue Blueprint',
        rarity = "uncommon",
        weight = 100,
        stack = false,
        client = {
            image = "bp_poolcue.png",
        }
    },
    ['bp_switchblade'] = {
        label = 'Switchblade Blueprint',
        rarity = "uncommon",
        weight = 100,
        stack = false,
        client = {
            image = "bp_switchblade.png",
        }
    },
    ['bp_wrench'] = {
        label = 'Wrench Blueprint',
        rarity = "uncommon",
        weight = 100,
        stack = false,
        client = {
            image = "bp_wrench.png",
        }
    },


    ------------------------------------------------

    ['tub-paint'] = {
		label = 'Tub Of Paint',
		description = "Paint",
		weight = 250,
		stack = true,
        client = {
            image = "tub-paint.png",
        }
	},

    ['empty-can'] = {
		label = 'Empty Spray Can',
		description = "Empty Can",
		weight = 250,
		stack = true,
        client = {
            image = "empty-can.png",
        }
	},

    ['sponge-tub'] = {
		label = 'Sponge Mould',
		description = "Mould For Sponges",
		weight = 250,
		stack = true,
        client = {
            image = "sponge-tub.png",
        }
	},

    ['graffiti_can'] = {
		label = 'Spray Can',
		description = "Express your artistic self",
		weight = 250,
		stack = true,
        client = {
            image = "graffiti_can.png",
        }
	},

	['graffiti_sponge'] = {
		label = 'Graffiti Sponge',
		description = "Clean those dirty streets",
		weight = 250,
		stack = true
	},

    ['trapphone'] = {
        label = 'Trap Phone',
        rarity = "legendary",
        description = "Get to work and grow your customer base to be able to sell allover the city you might want to start down the beacha nd work your way up to other areas around the city",
        weight = 100,
        stack = false
    },

    ['torture_kit'] = {
        label = 'Torture Kit',
        weight = 100,
        stack = false
    },

    ['ls_crack_bag'] = {
        label = 'LS Crack Bag',
        weight = 10
    },

    ["conedeck"] = {
		label = "cOne Deck",
		weight = 100,
		consume = 1,
		stack = true,
		close = true,
		client = {
			image = "conedeck.png",
			export = "cdev_cOne.createTableOXItem",
		}
	},

    ['reponote'] = {
        label = 'Repo Note',
        weight = 100,
        stack = false
    },

    ['towremote'] = {
        label = 'Tow Remote',
        weight = 100,
        stack = false
    },

    ['boxcutter_mould'] = {
        label = 'Box Cutter Mould',
        weight = 100,
        stack = true
    },

    ['boxcutter_blade'] = {
        label = 'Box Cutter Blade',
        weight = 100,
        stack = true
    },

    ['blowtorch'] = {
        label = 'Blowtorch',
        weight = 700,
        stack = false
    },

    ['gascanister'] = {
        label = 'Gas Canister',
        weight = 700,
        stack = false
    },

    ['wire-cutter'] = {
        label = 'Wire Strippers',
        weight = 100,
        stack = true
    },

    ['rubber_handle'] = {
        label = 'Rubber Handle',
        weight = 100,
        stack = true
    },

    ['cable'] = {
        label = 'Cable',
        weight = 100,
        stack = true
    },

    ['hack_card'] = {
        label = 'Spoofing Card',
        weight = 100,
        stack = false
    },

    ['coins'] = {
        label = 'Coins',
        weight = 0,
    },

    ['painting'] = {
        label = 'Painting',
        weight = 100,
    },

    ['bomb_c4'] = {
        label = 'C4 Explosive',
        weight = 3000,
    },

    ['angle_grinder'] = {
        label = 'Angle Grinder',
        weight = 1500,
    },

    ['contracts_tablet'] = {
        label = 'Contract Tablet',
        stack = false,
        weight = 400,
    },

    ['classified_docs'] = {
        label = 'Classified Documents',
        weight = 100,
    },

    ['diamonds_box'] = {
        label = 'Diamonds Box',
        weight = 200,
    },

    ['luxurious_watch'] = {
        label = 'Luxurious Watch',
        weight = 200,
    },

    ['rare_coins'] = {
        label = 'Rare Coins',
        weight = 500,
    },

    ["large_drill"] = {
        label = "Large Drill",
        weight = 12500,
        stack = true,
        close = true,
    },

    ["phone"] = {
        label = 'Phone',
        weight = 150,
        client = {
            image = 'phone.png',
        },
        server = {
            export = '17mov_Phone.phone'
        },
        consume = 0,
        stack = false,
        description = "Phone a friend...  If you have any that is"
    },


    ["restaurant_food"] = {
        label = "Restaurant food",
        weight = 0,
        stack = true,
        close = true,
        client = {
            export = 'mt-restaurants.useFoodItem'
        }
    },

    ["restaurant_box"] = {
        label = "Restaurant box",
        weight = 0,
        stack = true,
        close = true,
        client = {
            export = 'fresh_restaurants.useBoxItem'
        }
    },

    ["restaurant_menu"] = {
        label = "Restaurant menu",
        weight = 0,
        stack = true,
        close = true,
        client = {
            export = 'mt-restaurants.openMenu'
        }
    },
    ['meat'] = {
        label = 'Meat',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['fish'] = {
        label = 'Fish',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['onion'] = {
        label = 'Onion',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['carrot'] = {
        label = 'Carrot',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['lettuce'] = {
        label = 'Lettuce',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['cucumber'] = {
        label = 'Cucumber',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['potato'] = {
        label = 'Potato',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['tomato'] = {
        label = 'Tomato',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['dough'] = {
        label = 'Pizza Dough',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['cheese'] = {
        label = 'Cheese',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['mushrooms'] = {
        label = 'Mushrooms',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['coffee_beans'] = {
        label = 'Coffee Beans',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['wheat'] = {
        label = 'Wheat',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['empty_cup'] = {
        label = 'Empty Cup',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['snr_coke'] = {
        label = 'Snr Buns Coke',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['snr_sprite'] = {
        label = 'Snr Buns Sprite',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['snr_tango'] = {
        label = 'Snr Buns Tango',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['juicy_lucy'] = {
        label = 'Juicy Lucy & Fries',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['beef_curtains'] = {
        label = 'Beef Curtains & Fries',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['jimborga'] = {
        label = 'Jimboorga & Fries',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['snrbuns'] = {
        label = 'Buns',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['burger_patty'] = {
        label = 'Burger Patty',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['snr_fries'] = {
        label = 'Fries',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['corn'] = {
        label = 'Corn',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['strawberry'] = {
        label = 'Strawberry',
        weight = 8,
        stack = true,
        close = true,
        description = '',
        client = {
            image = "strawberries.png",
        }
    },
    ['watermelon'] = {
        label = 'Watermelon',
        weight = 5,
        stack = true,
        close = true,
        description = '',
    },
    ['soya'] = {
        label = 'Soya',
        weight = 8,
        stack = true,
        close = true,
        description = '',
    },
    ['pineapple'] = {
        label = 'Pineapple',
        weight = 10,
        stack = true,
        close = true,
        description = '',
    },

    ['apple'] = {
        label = 'Apple',
        weight = 12,
        stack = true,
        close = true,
        description = '',
    },
    ['pear'] = {
        label = 'Pear',
        weight = 12,
        stack = true,
        close = true,
        description = '',
    },
    ['lemon'] = {
        label = 'Lemon',
        weight = 12,
        stack = true,
        close = true,
        description = '',
    },
    ['banana'] = {
        label = 'Banana',
        weight = 17,
        stack = true,
        close = true,
        description = '',
    },
    ['pumpkin'] = {
        label = 'Pumpkin',
        weight = 15,
        stack = true,
        close = true,
        description = 'A fresh pumpkin from the patch',
    },

    ['orange'] = {
        label = 'Orange',
        weight = 15,
        stack = true,
        close = true,
        description = '',
    },
    ['peach'] = {
        label = 'Peach',
        weight = 13,
        stack = true,
        close = true,
        description = '',
    },
    ['mango'] = {
        label = 'Mango',
        weight = 13,
        stack = true,
        close = true,
        description = '',
    },

    ['cutted_meat'] = {
        label = 'Sliced meat',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_fish'] = {
        label = 'Sliced fish',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_onion'] = {
        label = 'Sliced onion',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_carrot'] = {
        label = 'Sliced carrot',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_lettuce'] = {
        label = 'Sliced lettuce',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_cucumber'] = {
        label = 'Sliced cucumber',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_potato'] = {
        label = 'Sliced potato',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_tomato'] = {
        label = 'Sliced tomato',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_coffee'] = {
        label = 'Coffee powder',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_wheat'] = {
        label = 'Flour',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_corn'] = {
        label = 'Corn flour',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_strawberry'] = {
        label = 'Sliced strawberry',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_watermelon'] = {
        label = 'Sliced watermelon',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_soya'] = {
        label = 'Sliced tofu',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_pineapple'] = {
        label = 'Sliced pineapple',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_apple'] = {
        label = 'Sliced apple',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_pear'] = {
        label = 'Sliced pear',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_lemon'] = {
        label = 'Sliced lemon',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_banana'] = {
        label = 'Sliced banana',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_peach'] = {
        label = 'Sliced peach',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_mango'] = {
        label = 'Sliced mango',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },
    ['cutted_orange'] = {
        label = 'Sliced orange',
        weight = 20,
        stack = true,
        close = true,
        description = '',
    },

    -- MT-Workshop
    ["engine_d"] = {
    label = "Engine D",
    weight = 1000,
    stack = true,
    close = true,
    description = "Basic engine, minimal performance boost.",
},
["engine_c"] = {
    label = "Engine C",
    weight = 1000,
    stack = true,
    rarity = "uncommon",
    close = true,
    description = "Standard engine, moderate performance improvement.",
},
["engine_b"] = {
    label = "Engine B",
    weight = 1000,
    stack = true,
    rarity = "rare",
    close = true,
    description = "Enhanced engine, good acceleration and speed.",
},
["engine_a"] = {
    label = "Engine A",
    weight = 1000,
    stack = true,
    rarity = "epic",
    close = true,
    description = "High-performance engine, excellent acceleration.",
},
["engine_s"] = {
    label = "Engine S",
    weight = 1000,
    stack = true,
    rarity = "legendary",
    close = true,
    description = "Top-tier engine, maximum performance.",
},

["transmission_d"] = {
    label = "Transmission D",
    weight = 1000,
    stack = true,
    close = true,
    description = "Basic gearbox, limited efficiency.",
},
["transmission_c"] = {
    label = "Transmission C",
    weight = 1000,
    stack = true,
    rarity = "uncommon",
    close = true,
    description = "Standard gearbox, smoother shifts.",
},
["transmission_b"] = {
    label = "Transmission B",
    weight = 1000,
    stack = true,
    rarity = "rare",
    close = true,
    description = "Upgraded gearbox, improved acceleration.",
},
["transmission_a"] = {
    label = "Transmission A",
    weight = 1000,
    stack = true,
    rarity = "epic",
    close = true,
    description = "High-performance gearbox, responsive shifting.",
},
["transmission_s"] = {
    label = "Transmission S",
    weight = 1000,
    stack = true,
    rarity = "legendary",
    close = true,
    description = "Top-tier gearbox, ultimate performance.",
},

["suspension_d"] = {
    label = "Suspension D",
    weight = 1000,
    stack = true,
    close = true,
    description = "Basic suspension, average handling.",
},
["suspension_c"] = {
    label = "Suspension C",
    weight = 1000,
    stack = true,
    rarity = "uncommon",
    close = true,
    description = "Standard suspension, smoother ride.",
},
["suspension_b"] = {
    label = "Suspension B",
    weight = 1000,
    stack = true,
    rarity = "rare",
    close = true,
    description = "Upgraded suspension, improved cornering.",
},
["suspension_a"] = {
    label = "Suspension A",
    weight = 1000,
    stack = true,
    rarity = "epic",
    close = true,
    description = "High-performance suspension, superior handling.",
},
["suspension_s"] = {
    label = "Suspension S",
    weight = 1000,
    stack = true,
    rarity = "legendary",
    close = true,
    description = "Top-tier suspension, maximum handling.",
},

["brake_d"] = {
    label = "Brake D",
    weight = 1000,
    stack = true,
    close = true,
    description = "Basic brakes, average stopping power.",
},
["brake_c"] = {
    label = "Brake C",
    weight = 1000,
    stack = true,
    rarity = "uncommon",
    close = true,
    description = "Standard brakes, improved stopping distance.",
},
["brake_b"] = {
    label = "Brake B",
    weight = 1000,
    stack = true,
    rarity = "rare",
    close = true,
    description = "Upgraded brakes, better performance.",
},
["brake_a"] = {
    label = "Brake A",
    weight = 1000,
    rarity = "epic",
    stack = true,
    close = true,
    description = "High-performance brakes, strong stopping power.",
},
["brake_s"] = {
    label = "Brake S",
    weight = 1000,
    stack = true,
    rarity = "legendary",
    close = true,
    description = "Top-tier brakes, maximum stopping performance.",
},

["turbo_d"] = {
    label = "Turbo D",
    weight = 1000,
    stack = true,
    close = true,
    description = "Basic turbo, small speed increase.",
},
["turbo_c"] = {
    label = "Turbo C",
    weight = 1000,
    stack = true,
    rarity = "uncommon",
    close = true,
    description = "Standard turbo, moderate speed boost.",
},
["turbo_b"] = {
    label = "Turbo B",
    weight = 1000,
    stack = true,
    rarity = "rare",
    close = true,
    description = "Upgraded turbo, noticeable acceleration improvement.",
},
["turbo_a"] = {
    label = "Turbo A",
    weight = 1000,
    stack = true,
    rarity = "epic",
    close = true,
    description = "High-performance turbo, strong acceleration.",
},
["turbo_s"] = {
    label = "Turbo S",
    weight = 1000,
    stack = true,
    rarity = "legendary",
    close = true,
    description = "Top-tier turbo, maximum speed and acceleration.",
},

["armour_d"] = {
    label = "Armour D",
    weight = 1000,
    stack = true,
    close = true,
    description = "Basic protection, minimal damage reduction.",
},
["armour_c"] = {
    label = "Armour C",
    weight = 1000,
    stack = true,
    rarity = "uncommon",
    close = true,
    description = "Standard protection, moderate damage reduction.",
},
["armour_b"] = {
    label = "Armour B",
    weight = 1000,
    stack = true,
    rarity = "rare",
    close = true,
    description = "Upgraded protection, good damage resistance.",
},
["armour_a"] = {
    label = "Armour A",
    weight = 1000,
    stack = true,
    rarity = "epic",
    close = true,
    description = "High-quality armour, strong damage reduction.",
},
["armour_s"] = {
    label = "Armour S",
    weight = 1000,
    stack = true,
    rarity = "legendary",
    close = true,
    description = "Top-tier armour, maximum protection.",
},

-- Misc Items
["engine_repair_kit"] = {
    label = "Engine repair kit",
    weight = 1000,
    stack = true,
    close = true,
    description = "Used to repair engines quickly.",
},
["body_repair_kit"] = {
    label = "Body repair kit",
    weight = 1000,
    stack = true,
    close = true,
    description = "Used to repair vehicle body damage.",
},
["cosmetics"] = {
    label = "Cosmetics",
    weight = 1000,
    stack = true,
    close = true,
    description = "Cosmetic items to customize vehicle appearance.",
},
["mechanic_toolbox"] = {
    label = "Mechanics toolbox",
    weight = 1000,
    stack = true,
    close = true,
    description = "Contains tools needed for vehicle repairs.",
    client = {
        export = 'fresh_workshops.openToolboxMenu'
    }
},
["neons_controller"] = {
    label = "Neons controller",
    weight = 1000,
    stack = true,
    close = true,
    description = "Control your vehicle neon lights.",
    client = {
        export = 'fresh_workshops.openLightsController'
    }
},
["mods_list"] = {
    label = "Upgrades Recipe",
    weight = 0,
    stack = true,
    close = true,
    description = "List of vehicle upgrades.",
    client = {
        export = 'fresh_workshops.openCosmeticsMenu'
    }
},
["extras_controller"] = {
    label = "Vehicle extras",
    weight = 0,
    stack = true,
    close = true,
    description = "Toggle vehicle extras like doors and lights.",
    client = {
        export = 'fresh_workshops.openExtrasMenu'
    }
},



    -- Hunting

    ['scentremover'] = {
        label = 'Scent Remover',
        weight = 0,
        stack = false,
        close = true,
        description = 'Removes Your Scent'
    },
    ['poorpeltsmall'] = {
        label = 'Poor Small Pelt',
        weight = 0,
        stack = false,
        close = true,
        description = 'A Small Pelt in Bad Quality'
    },
    ['poorpeltmedium'] = {
        label = 'Poor Medium Pelt',
        weight = 0,
        stack = false,
        close = true,
        description = 'A Medium Pelt in Bad Quality'
    },
    ['poorpeltlarge'] = {
        label = 'Poor Large Pelt',
        weight = 0,
        stack = false,
        close = true,
        description = 'A Large Pelt in Bad Quality'
    },
    ['peltsmall'] = {
        label = 'Small Pelt',
        weight = 0,
        stack = false,
        close = true,
        description = 'A Small Pelt'
    },
    ['peltmedium'] = {
        label = 'Medium Pelt',
        weight = 0,
        stack = false,
        close = true,
        description = 'A Medium Pelt'
    },
    ['peltlarge'] = {
        label = 'Large Pelt',
        weight = 0,
        stack = false,
        close = true,
        description = 'A Large Pelt'
    },
    ['goodpeltsmall'] = {
        label = 'Exceptional Small Pelt',
        weight = 0,
        stack = false,
        close = true,
        description = 'A Small Pelt in Exceptional Quality'
    },
    ['goodpeltmedium'] = {
        label = 'Exceptional Medium Pelt',
        weight = 0,
        stack = false,
        close = true,
        description = 'A Medium Pelt in Exceptional Quality'
    },
    ['goodpeltlarge'] = {
        label = 'Exceptional Large Pelt',
        weight = 0,
        stack = false,
        close = true,
        description = 'A Large Pelt in Exceptional Quality'
    },
    ['poorbirdcarcass'] = {
        label = 'Poor Bird Carcass',
        weight = 0,
        stack = false,
        close = true,
        description = 'A Bird Carcass in Bad Quality'
    },
    ['birdcarcass'] = {
        label = 'Bird Carcass',
        weight = 0,
        stack = false,
        close = true,
        description = 'A Bird Carcass'
    },
    ['goodbirdcarcass'] = {
        label = 'Exceptional Bird Carcass',
        weight = 0,
        stack = false,
        close = true,
        description = 'A Bird Carcass in Exceptional Quality'
    },
    ['meat'] = {
        label = 'Meat',
        weight = 0,
        stack = true,
        close = true,
        description = 'Meat'
    },
    ['huntingbrochure'] = {
        label = 'Hunting Brochure',
        weight = 0,
        stack = true,
        close = true,
        description = 'A Hunting Brochure'
    },
    ['hbait'] = {
        label = 'Herbivore Bait',
        weight = 0,
        stack = true,
        close = true,
        description = 'Herbivore Bait'
    },
    ['deercall'] = {
        label = 'Deer Call',
        weight = 0,
        stack = true,
        close = true,
        description = 'A Deer Call'
    },
    ['birdcall'] = {
        label = 'Bird Call',
        weight = 0,
        stack = true,
        close = true,
        description = 'A Bird Call'
    },
    ['boarcall'] = {
        label = 'Boar Call',
        weight = 0,
        stack = true,
        close = true,
        description = 'A Boar Call'
    },
    ['cbait'] = {
        label = 'Carnivore Bait',
        weight = 0,
        stack = true,
        close = true,
        description = 'Carnivore Bait'
    },
    ['animaltag'] = {
        label = 'Hunting Tag',
        weight = 0,
        stack = true,
        close = true,
        description = 'Hunting Tag'
    },
    ['bearspray'] = {
        label = 'Bear Spray',
        weight = 0,
        stack = true,
        close = true,
        description = 'Bear Spray'
    },
    ["huntingcamera"] = {
        label = 'Wildlife Camera',
        weight = 160,
        stack = false,
        close = true,
        description = 'An Wildlife Camera'
    },
    ["huntingpicture"] = {
        label = 'Animal Picture',
        weight = 5,
        stack = true,
        close = true,
        description = 'An Picture Of An Animal'
    },

    -- Bodycam
    ['bodycam'] = {
        label = 'Bodycam',
        weight = 500,
        stack = false,
        close = true
    },

    ['dashcam'] = {
        label = 'Dashcam',
        weight = 500,
        stack = false,
        close = true
    },

    ['usedbandage'] = {
        label = 'Used Bandage',
        rarity = "common",
        weight = 1,
        stack = true,
        close = true
    },

    ['lithiumbattery'] = {
        label = 'Lithium Battery',
        rarity = "uncommon",
        weight = 100,
        stack = true,
        close = true
    },

    ['stethoscope'] = {
        label = 'Stethoscope',
        rarity = "rare",
        weight = 200,
        stack = true,
        close = true
    },

    ['pinger'] = {
        label = 'Pinger',
        rarity = "uncommon",
        weight = 200,
        stack = true,
        close = true
    },

    ['digitalscreen'] = {
        label = 'digital screen',
        rarity = "uncommon",
        weight = 200,
        stack = true,
        close = true
    },

    ['diodes'] = {
        label = 'diodes',
        rarity = "uncommon",
        weight = 200,
        stack = true,
        close = true
    },

    ['kno3c_solution'] = {
        label = 'KNO₃C Solution',  -- chem table
        rarity = "rare",
        weight = 200,
        stack = true,
        close = true
    },

    ['phosphorous'] = {
        label = 'Phosphorous',
        rarity = "rare",
        weight = 200,
        stack = true,
        close = true
    },

    ['potassium_nitrate_powder'] = {
        label = 'potassium nitrate powder',
        rarity = "uncommon",
        weight = 200,
        stack = true,
        close = true
    },

    ['c4'] = {
        label = 'C4',
        rarity = "epic",
        weight = 200,
        stack = true,
        close = true
    },


    ['packed_explosive'] = {
        label = 'Packed Explosive',
        rarity = "rare",
        weight = 200,
        stack = true,
        close = true
    },

    ['smallsensorchip'] = {
        label = 'Small Sensor Chip',
        rarity = "uncommon",
        weight = 200,
        stack = true,
        close = true
    },

    ['smallantenna'] = {
        label = 'Small Antenna',
        rarity = "uncommon",
        weight = 200,
        stack = true,
        close = true
    },

    ['smallmotherboard'] = {
        label = 'Small Motherboard',
        rarity = "uncommon",
        weight = 200,
        stack = true,
        close = true
    },

    ['radioshell'] = {
        label = 'Radio Shell',
        rarity = "uncommon",
        weight = 200,
        stack = true,
        close = true
    },

    ['copper_wire'] = {
        label = 'Copper Wire',
        rarity = "uncommon",
        weight = 200,
        stack = true,
        close = true
    },

    ['small_shell_casing'] = {
        label = 'Small Shell Casing',
        rarity = "rare",
        weight = 100,
        stack = true,
        close = true
    },

    ['screwdriver'] = {
        label = 'screwdriver',
        rarity = "common",
        weight = 100,
        stack = true,
        close = true
    },

    ['katana_mould'] = {
        label = 'Katana Mould',
        rarity = "epic",
        weight = 100,
        stack = true,
        close = true
    },

    ['loose_screw'] = {
        label = 'Loose Screw',
        rarity = "common",
        weight = 100,
        stack = true,
        close = true
    },

    ['handheld_console'] = {
        label = 'handheld console',
        rarity = "common",
        weight = 100,
        stack = true,
        close = true
    },

    ['headphones'] = {
        label = 'Headphones',
        rarity = "common",
        weight = 100,
        stack = true,
        close = true
    },

    ['bleach'] = {
        label = 'Bleach',
        rarity = "uncommon",
        weight = 100,
        stack = true,
        close = true
    },

    ['tin_ore'] = {
        label = 'Tin Ore',
        rarity = "common",
        weight = 200,
        stack = true,
        close = true
    },

    ['tin'] = {
        label = 'Tin',
        rarity = "common",
        weight = 200,
        stack = true,
        close = true
    },

    ['lead_ore'] = {
        label = 'Lead Ore',
        rarity = "common",
        weight = 200,
        stack = true,
        close = true
    },

    ['lead'] = {
        label = 'Lead',
        rarity = "common",
        weight = 200,
        stack = true,
        close = true
    },

    ['blackpowder'] = {
        label = 'Black Powder',
        rarity = "rare",
        weight = 200,
        stack = true,
        close = true
    },

    ['gunpowder'] = {
        label = 'Gun Powder',
        rarity = "epic",
        weight = 200,
        stack = true,
        close = true
    },

    ['sulfur'] = {
        label = 'Sulfur',
        rarity = "rare",
        weight = 200,
        stack = true,
        close = true
    },

    ['gold'] = {
        label = 'Gold',
        rarity = "rare",
        weight = 200,
        stack = true,
        close = true
    },

    ['sulfur_ore'] = {
        label = 'Sulfur Ore',
        rarity = "rare",
        weight = 200,
        stack = true,
        close = true
    },

    ['bauxite_ore'] = {
        label = 'Bauxite Ore',
        rarity = "uncommon",
        weight = 200,
        stack = true,
        close = true
    },

    ['charcoal'] = {
        label = 'Charcoal',
        rarity = "common",
        weight = 200,
        stack = true,
        close = true
    },

    ['bauxite'] = {
        label = 'Bauxite',
        rarity = "uncommon",
        weight = 200,
        stack = true,
        close = true
    },

    ['coal'] = {
        label = 'Coal',
        rarity = "common",
        weight = 200,
        stack = true,
        close = true
    },

    ['washpan'] = {
        label = 'Wash Pan',
        rarity = "common",
        weight = 200,
        stack = true,
        close = true
    },

    ['pan'] = {
        label = 'Pan',
        weight = 300,
        stack = false,
        close = true,
        description = 'A pan used for washing materials'
    },

    ['dirty_stone'] = {
        label = 'Dirty Stone',
        weight = 500,
        stack = true,
        close = true,
        description = 'Raw stone that needs to be cleaned'
    },

    ['dirty_iron'] = {
        label = 'Dirty Iron',
        weight = 600,
        stack = true,
        close = true,
        description = 'Raw iron ore that needs to be cleaned'
    },

    ['dirty_copper'] = {
        label = 'Dirty Copper',
        weight = 550,
        stack = true,
        close = true,
        description = 'Raw copper ore that needs to be cleaned'
    },

    ['dirty_gold'] = {
        label = 'Dirty Gold',
        weight = 700,
        stack = true,
        close = true,
        description = 'Raw gold ore that needs to be cleaned'
    },

    ['dirty_diamond'] = {
        label = 'Dirty Diamond',
        weight = 400,
        stack = true,
        close = true,
        description = 'Raw diamond that needs to be cleaned'
    },

    ['stone'] = {
        label = 'Stone',
        weight = 500,
        stack = true,
        close = true,
        description = 'Cleaned stone ready for sale'
    },

    ['iron'] = {
        label = 'Iron',
        weight = 600,
        stack = true,
        close = true,
        description = 'Cleaned iron ore ready for sale'
    },

    ['copper'] = {
        label = 'Copper',
        weight = 550,
        stack = true,
        close = true,
        description = 'Cleaned copper ore ready for sale'
    },

    ['gold'] = {
        label = 'Gold',
        weight = 700,
        stack = true,
        close = true,
        description = 'Cleaned gold ore ready for sale'
    },

    ['diamond'] = {
        label = 'Diamond',
        weight = 400,
        stack = true,
        close = true,
        description = 'Cleaned diamond ready for sale'
    },

    ['crystal_red'] = {
        label = 'Crystal Red',
        rarity = "epic",
        weight = 200,
        stack = true,
        close = true
    },

    ['crushed_crystal_red'] = {
        label = 'Crushed Crystal Red',
        rarity = "epic",
        weight = 200,
        stack = true,
        close = true
    },

    ['crystal_green'] = {
        label = 'Crystal Green',
        rarity = "epic",
        weight = 200,
        stack = true,
        close = true
    },

    ['crushed_crystal_green'] = {
        label = 'Crushed Crystal Green',
        rarity = "epic",
        weight = 200,
        stack = true,
        close = true
    },

    ['crushed_crystal_blue'] = {
        label = 'Crushed Crystal Blue',
        rarity = "epic",
        weight = 200,
        stack = true,
        close = true
    },

    ['crystal_blue'] = {
        label = 'Crystal Blue',
        rarity = "epic",
        weight = 200,
        stack = true,
        close = true
    },

    ['pistoltrigger'] = {
        label = 'Pistol Trigger',
        rarity = "epic",
        weight = 1000,
        stack = true,
        close = true
    },

    ['coppertip'] = {
        label = 'Copper Tip',
        rarity = "epic",
        weight = 10,
        stack = true,
        close = true
    },

    ['pistolmold'] = {
        label = 'Makarov Pistol Mold',
        rarity = "epic",
        weight = 1000,
        stack = true,
        close = true
    },

    ['shapedmetal_loop'] = {
        label = 'Shaped Metal Loop',
        rarity = "epic",
        weight = 1000,
        stack = true,
        close = true
    },

    ['ammo-50pack'] = {
        label = '.50 AE Pack',
        rarity = "legendary",
        weight = 100,
        stack = true,
        close = true
    },

    ['pack45'] = {
        label = '.45 ACP Pack',
        rarity = "epic",
        weight = 100,
        stack = true,
        close = true
    },

    ['cardboard'] = {
        label = 'Cardboard Packaging',
        rarity = "rare",
        weight = 100,
        stack = true,
        close = true
    },

    ['pistol_body'] = {
        label = 'Pistol Body',
        rarity = "epic",
        weight = 1000,
        stack = true,
        close = true
    },

    ['pistolmold2'] = {
        label = 'A45 Pistol Mold',
        rarity = "legendary",
        weight = 1000,
        stack = true,
        close = true,
        client = {
            image = "pistolmold.png",
        }
    },

    ['pistolmold3'] = {
        label = 'P5 Pistol Mold',
        rarity = "legendary",
        weight = 1000,
        stack = true,
        close = true,
        client = {
            image = "pistolmold.png",
        }
    },

    ['spring'] = {
        label = 'Spring',
        rarity = "epic",
        weight = 1000,
        stack = true,
        close = true
    },

    ['pistol_clip'] = {
        label = 'Pistol Clip',
        rarity = "epic",
        weight = 1000,
        stack = true,
        close = true
    },

    ['rubberband'] = {
        label = 'Rubber Band',
        rarity = "common",
        weight = 1,
        stack = true,
        close = true
    },

    ['hacking_terminal'] = {
        label = 'Hacking Terminal',
        rarity = "uncommon",
        weight = 1,
        stack = true,
        close = true
    },

    ['crutch'] = {
        label = 'Crutch',
        rarity = "common",
        weight = 500,
        stack = false,
        close = true
    },

    ['wheelchair'] = {
        label = 'Wheelchair',
        rarity = "common",
        weight = 1500,
        stack = false,
        close = true
    },

    ['gruppe_usb'] = {
        label = 'Gruppe 6 USB',
        rarity = "epic",
        weight = 1,
        stack = true,
        close = true
    },

    ['vault_usb'] = {
        label = 'Encrypted Vault USB',
        rarity = "epic",
        weight = 1,
        stack = true,
        close = true
    },

    ['vangelico_usb'] = {
        label = 'Vangelico USB',
        rarity = "epic",
        weight = 1,
        stack = true,
        close = true
    },

    ['ud_usb'] = {
        label = 'Union USB',
        rarity = "epic",
        weight = 1,
        stack = true,
        close = true
    },

    ['ud_laptop'] = {
        label = 'Union Laptop',
        rarity = "legendary",
        weight = 1,
        stack = true,
        close = true
    },

    ['hacking_pcb'] = {
        label = 'PCB',
        rarity = "uncommon",
        weight = 1,
        stack = true,
        close = true
    },

    -- Moneywash Item
    ['cashroll'] = {
        label = 'Roll of Notes',
        weight = 1,
        stack = true,
        close = true
    },

    ['cashband'] = {
        label = 'Band of Notes',
        weight = 1,
        stack = true,
        close = true
    },

    ["work_tablet"] = {
        label = "Group 6 work Tablet",
        weight = 700,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "tablet.png",
        }
    },

    ------ CRAFTING BENCHES

    ["table_weapon"] = {
        label = "Weaponmaking Table",
        rarity = "legendary",
        weight = 15000,
        stack = false,
        close = false,
        description = "A Weaponmaking Table with highly illegal tools to make bombs.",
        client = {
            image = "table_weapon.png",
        }
    },

    ["table_basic"] = {
        label = "Basic Crafting",
        rarity = "common",
        weight = 7500,
        stack = false,
        close = false,
        description = "",
        client = {
            image = "table_basic.png",
        }
    },

    ["table_wood"] = {
        label = "Woodworking Table",
        rarity = "uncommon",
        weight = 15000,
        stack = false,
        close = false,
        description = "A woodworking table to make wood related items.",
        client = {
            image = "table_wood.png",
        }
    },

    ["table_plastic"] = {
        label = "Plastic Crafting Table",
        rarity = "uncommon",
        weight = 15000,
        stack = false,
        close = false,
        description = "A plastic molding table to make plastic related items.",
        client = {
            image = "table_plastic.png",
        }
    },

    ["table_metal"] = {
        label = "Metalworking Table",
        rarity = "uncommon",
        weight = 15000,
        stack = false,
        close = false,
        description = "A metalworking table to make metal related items.",
        client = {
            image = "table_metal.png",
        }
    },

    ['table_weed'] = {
        label = 'Weed Table',
        description = 'A table covered in weed definitely not suspiscious in any way at all... Your not a cop right.',
        weight = 10000,
        rarity = "rare",
        stack = false,
        usable = true,
    },

    ["compacting_metal"] = {
        label = "Metallurgy Oven",
        rarity = "rare",
        weight = 20000,
        stack = false,
        close = false,
        description = "A metallurgy oven to make hardened metal.",
        client = {
            image = "compacting_metal.png",
        }
    },

    ["compacting_wood"] = {
        label = "Finishing Machine",
        rarity = "rare",
        weight = 20000,
        stack = false,
        close = false,
        description = "A wood finishing machine to make treated wood.",
        client = {
            image = "compacting_wood.png",
        }
    },

    ["compacting_plastic"] = {
        label = "Plastic Compounder",
        rarity = "rare",
        weight = 20000,
        stack = false,
        close = false,
        description = "A plastic compounder to make composite plastic.",
        client = {
            image = "compacting_plastic.png",
        }
    },

    ["table_mechanic_basic"] = {
        label = "Basic Mechanic Table",
        rarity = "uncommon",
        weight = 15000,
        stack = false,
        close = false,
        description = "A basic mechanic crafting table to make basic mechanic items.",
        client = {
            image = "table_mechanic_basic.png",
        }
    },

    ["table_mechanic_advanced"] = {
        label = "Advanced Mechanic Table",
        rarity = "rare",
        weight = 15000,
        stack = false,
        close = false,
        description = "An advanced mechanic crafting table to make advanced mechanic items and upgrade kits.",
        client = {
            image = "table_mechanic_advanced.png",
        }
    },

    ["table_mechanic_pro"] = {
        label = "Pro Mechanic Table",
        rarity = "legendary",
        weight = 15000,
        stack = false,
        close = false,
        description = "A pro mechanic crafting table to make all possible mechanic items and upgrade kits.",
        client = {
            image = "table_mechanic_pro.png",
        }
    },




    -------------------------------------

    ['weapon-crafting_bench'] = {
        label = 'Weapon Bench',
        stack = false,
        weight = 115,
    },

    ['bomb_suitcase'] = {
        label = 'Homemade Bomb',
        stack = false,
        weight = 115,
    },

    ['standard_bench'] = {
        label = 'Crafting Bench',
        stack = false,
        weight = 115,
    },

    ['medical_bench'] = {
        label = 'Medical Bench',
        stack = false,
        weight = 115,
    },

    ['jimbo_juicepack'] = {
        label = 'Jimbos Juice 6pck',
        stack = true,
        weight = 115,
    },

    ['jimbo_juice'] = {
        label = 'Jimbos Juice',
        stack = true,
        weight = 115,
    },

    ['blueprint'] = {
        label = 'Blueprint',
        stack = false,
        weight = 115,
    },

    ['blueprint_pack45'] = {
        label = '.45 ACP PACK BP',
        rarity = "epic",
        stack = false,
        weight = 115,
        client = {
			image = "blueprint.png",
		}
    },

    ['blueprint_ammo50'] = {
        label = '.50 AE PACK BP',
        rarity = "legendary",
        stack = false,
        weight = 115,
        client = {
			image = "blueprint.png",
		}
    },

    ['blueprint_pistolbody'] = {
        label = 'Pistol Body Blueprint',
        rarity = "epic",
        stack = false,
        weight = 115,
        client = {
			image = "blueprint.png",
		}
    },

    ['blueprint_pistolclip'] = {
        label = 'Pistol Clip Blueprint',
        rarity = "epic",
        stack = false,
        weight = 115,
        client = {
			image = "blueprint.png",
		}
    },

    ['blueprint_ammo45'] = {
        label = '.45 ACP Blueprint',
        rarity = "epic",
        stack = false,
        weight = 115,
        client = {
			image = "blueprint.png",
		}
    },

    ['blueprint_metalloop'] = {
        label = 'Pistol Loop Blueprint',
        rarity = "epic",
        stack = false,
        weight = 115,
        client = {
			image = "blueprint.png",
		}
    },

    ['blueprint_pistoltrigger'] = {
        label = 'Pistol Trigger Blueprint',
        rarity = "epic",
        stack = false,
        weight = 115,
        client = {
			image = "blueprint.png",
		}
    },

    ['blueprint_armourplate'] = {
        label = 'Armour Plate Blueprint',
        rarity = "legendary",
        stack = false,
        weight = 115,
        client = {
			image = "blueprint.png",
		}
    },

    ['blueprint_p5'] = {
        label = 'P5 Blueprint',
        rarity = "legendary",
        stack = false,
        weight = 115,
        client = {
			image = "blueprint.png",
		}
    },

    ['blueprint_a45'] = {
        label = 'A45 Blueprint',
        rarity = "legendary",
        stack = false,
        weight = 115,
        client = {
			image = "blueprint.png",
		}
    },

    ['blueprint_makarov'] = {
        label = 'Makarov Blueprint',
        rarity = "legendary",
        stack = false,
        weight = 115,
        client = {
			image = "blueprint.png",
		}
    },

    -- Luberjack
    ["bowsaw"] = {
        label = "Bowsaw",
        weight = 500,
        stack = false,
        close = false,
        usable = true,
        description = "",
        client = {
            image = "bowsaw.png",
        }
    },

    -- Compatibility alias for scripts expecting `saw` (e.g. lumberjack job)
    ["saw"] = {
        label = "Bowsaw",
        weight = 500,
        stack = false,
        close = false,
        usable = true,
        description = "",
        client = {
            image = "bowsaw.png",
        }
    },

    ["lumber_axe"] = {
        label = "Wood Axe",
        weight = 750,
        stack = false,
        close = false,
        usable = true,
        description = "",
        client = {
            image = "lumber_axe.png",
        }
    },

    ["lumber_bigaxe"] = {
        label = "Wood Big Axe",
        weight = 1000,
        stack = false,
        close = false,
        usable = true,
        description = "",
        client = {
            image = "lumber_bigaxe.png",
        }
    },

    ["lumber_chainsaw"] = {
        label = "Chainsaw",
        weight = 1500,
        stack = false,
        close = false,
        usable = true,
        description = "",
        client = {
            image = "lumber_chainsaw.png",
        }
    },

    ["cedar_woodlog"] = {
        label = "Cedar Woodlog",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "cedar_woodlog.png",
        }
    },

    ["birch_woodlog"] = {
        label = "Birch Woodlog",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "birch_woodlog.png",
        }
    },

    ["pine_woodlog"] = {
        label = "Pine Woodlog",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "pine_woodlog.png",
        }
    },

    ["oak_woodlog"] = {
        label = "Oak Woodlog",
        weight = 100,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "oak_woodlog.png",
        }
    },

    ["cedar_woodchips"] = {
        label = "Cedar Woodchips",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "cedar_woodchips.png",
        }
    },

    ["birch_woodchips"] = {
        label = "Birch Woodchips",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "birch_woodchips.png",
        }
    },

    ["pine_woodchips"] = {
        label = "Pine Woodchips",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "pine_woodchips.png",
        }
    },

    ["oak_woodchips"] = {
        label = "Oak Woodchips",
        weight = 50,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "oak_woodchips.png",
        }
    },

    --

    ["poolcue_tip"] = {
        label = "Poolcue Tip",
        weight = 25,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "poolcue_tip.png",
        }
    },

    ["corephone"] = {
        label = "CPhone 16e",
        weight = 100,
        stack = false,
        close = false,
        description = "Take Me Photo"
    },

    ["cleaningsupplies"] = {
        label = "Cleaning Supplies",
        weight = 100,
        stack = false,
        close = false,
        description = "You can clean some shit with this",
        client = {
            image = "cleaningsupplies.png",
        }
    },

    -- Lation Weed
    ['watering_can'] = {
        label = '5L Watering Can',
        description = "A 5 liter watering can.",
        weight = 5000,
        type = 'Tool',
        stack = false,
        close = false,
    },

    ['blank_acid'] = {
        label = 'Blank Acid Tabs',
        weight = 10,
        stack = true,
        close = true,
        description = "Blank Acid Tabs",
    },

    ['core_acid'] = {
        label = 'Acid Tabs',
        weight = 10,
        stack = true,
        close = true,
        description = "Acid Tabs",
    },
    -- FlubberEats (delivery job items)
    ['burger-bag'] = {
        label = 'Burger Bag',
        weight = 500,
        stack = true,
        close = true,
        description = 'A bag of food from Burger Shot.',
        client = { image = 'burgershot_bagsmall.png' },
    },
    ['ringofire-bag'] = {
        label = 'Ring of Fire Bag',
        weight = 500,
        stack = true,
        close = true,
        description = 'A bag of food from Ring of Fire.',
        client = { image = 'bag.png' },
    },
    ['littletea-bag'] = {
        label = 'Little Teapot Bag',
        weight = 500,
        stack = true,
        close = true,
        description = 'A bag of food from Little Teapot.',
        client = { image = 'bag.png' },
    },
    ['luckyplucker-bag'] = {
        label = 'Lucky Plucker Bag',
        weight = 500,
        stack = true,
        close = true,
        description = 'A bag of food from Lucky Plucker.',
        client = { image = 'bag.png' },
    },
    ['wigwam-bag'] = {
        label = 'WigWam Bag',
        weight = 500,
        stack = true,
        close = true,
        description = 'A bag of food from WigWam.',
        client = { image = 'bag.png' },
    },
    ['upnatom-bag'] = {
        label = 'Up-n-Atom Bag',
        weight = 500,
        stack = true,
        close = true,
        description = 'A bag of food from Up-n-Atom.',
        client = { image = 'bag.png' },
    },
    ['pizza-box'] = {
        label = 'Pizza Box',
        weight = 700,
        stack = true,
        close = true,
        description = 'A hot pizza, boxed for delivery.',
        client = { image = 'pizzabox.png' },
    },
    ['coffee-bag'] = {
        label = 'Coffee Bag',
        weight = 350,
        stack = true,
        close = true,
        description = 'A takeaway coffee order.',
        client = { image = 'burgershot_bagcoffe.png' },
    },
    ['taco-bag'] = {
        label = 'Taco Bag',
        weight = 500,
        stack = true,
        close = true,
        description = 'A bag of tacos, ready for delivery.',
        client = { image = 'food_taco.png' },
    },

    ['shovel'] = {
		label = 'Shovel',
		weight = 1000,
		stack = false,
		client = {
			event = 'yoda-cemeteryrob:checkPolice'
		}
	},

	['evidence'] ={
		label = 'Evidence',
    	weight = 100,
    	stack = false,
    	close = true,
    	description = 'A finger print collected at a crime scene.',
    	client = {
    	    image = 'evidence.png',
    	},
    	consume = 0,
    	metadata = {
    	    assailant = 'Unknown'
    	}
	},

    ['driving_theory_certificate'] = {
        label = 'Theory Certificate',
        weight = 1,
        stack = false,
        close = true,
        description = 'Proof you passed the theory test.',
        consume = 0
    },

    ['fertilizer'] = {
        label = 'Fertilizer Jug',
        description = "A 5 liter jug of fertilizer.",
        weight = 5000,
        stack = false
    },

    ['plant_pot'] = {
        label = 'Plant Pot',
        weight = 25,
    },

    ['plant_shovel'] = {
        label = 'Shovel',
        weight = 75,
    },

    ['plant_shears'] = {
        label = 'Shears',
        weight = 10,
    },

    ['regweed_seed'] = {
        label = 'Weed Seed',
        weight = 15,
    },

    ['bananakush_seed'] = {
        label = 'Banana Kush Seed',
        weight = 10,
    },

    ['purplehaze_seed'] = {
        label = 'Purple Haze Seed',
        weight = 10,
    },

    ['bluedream_seed'] = {
        label = 'Blue Dream Seed',
        weight = 10,
    },

    ['regweed_bud'] = {
        label = 'Weed Bud',
        weight = 15,
    },

    ['bananakush_bud'] = {
        label = 'Banana Kush Bud',
        weight = 15,
    },

    ['purplehaze_bud'] = {
        label = 'Purple Haze Bud',
        weight = 15,
    },

    ['bluedream_bud'] = {
        label = 'Blue Dream Bud',
        weight = 15,
    },

    ['regweed_joint'] = {
        label = 'AK47 Joint',
        weight = 15,
    },

    ['bananakush_joint'] = {
        label = 'Banana Kush Joint',
        weight = 15,
    },

    ['purplehaze_joint'] = {
        label = 'Purple Haze Joint',
        weight = 15,
    },

    ['bluedream_joint'] = {
        label = 'Blue Dream Joint',
        weight = 15,
    },

    --Jim-Mining
    ['stone'] = {
        label = 'Stone',
        weight = 750,
        stack = true,
        close = false,
        description = 'Stone woo',
        client = { image = 'stone.png' },
    },

    ['uncut_emerald'] = {
        label = 'Uncut Emerald',
        weight = 100,
        stack = true,
        close = false,
        description = 'A rough Emerald',
        client = { image = 'uncut_emerald.png' },
    },

    ['uncut_ruby'] = {
        label = 'Uncut Ruby',
        weight = 100,
        stack = true,
        close = false,
        description = 'A rough Ruby',
        client = { image = 'uncut_ruby.png' },
    },

    ['uncut_diamond'] = {
        label = 'Uncut Diamond',
        weight = 100,
        stack = true,
        close = false,
        description = 'A rough Diamond',
        client = { image = 'uncut_diamond.png' },
    },

    ['uncut_sapphire'] = {
        label = 'Uncut Sapphire',
        weight = 100,
        stack = true,
        close = false,
        description = 'A rough Sapphire',
        client = { image = 'uncut_sapphire.png' },
    },

    ['emerald'] = {
        label = 'Emerald',
        weight = 100,
        stack = true,
        close = false,
        description = 'A Emerald that shimmers',
        client = { image = 'emerald.png' },
    },

    ['ruby'] = {
        label = 'Ruby',
        weight = 100,
        stack = true,
        close = false,
        description = 'A Ruby that shimmers',
        client = { image = 'ruby.png' },
    },

    ['sapphire'] = {
        label = 'Sapphire',
        weight = 100,
        stack = true,
        close = false,
        description = 'A Sapphire that shimmers',
        client = { image = 'sapphire.png' },
    },

    ['gold_ring'] = {
        label = 'Gold Ring',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'gold_ring.png' },
    },

    ['ruby_ring'] = {
        label = 'Ruby Ring',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'ruby_ring.png' },
    },

    ['sapphire_ring'] = {
        label = 'Sapphire Ring',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'sapphire_ring.png' },
    },

    ['emerald_ring'] = {
        label = 'Emerald Ring',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'emerald_ring.png' },
    },

    ['silver_ring'] = {
        label = 'Silver Ring',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'silver_ring.png' },
    },

    ['diamond_ring_silver'] = {
        label = 'Diamond Ring Silver',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'diamond_ring_silver.png' },
    },

    ['ruby_ring_silver'] = {
        label = 'Ruby Ring Silver',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'ruby_ring_silver.png' },
    },

    ['sapphire_ring_silver'] = {
        label = 'Sapphire Ring Silver',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'sapphire_ring_silver.png' },
    },

    ['emerald_ring_silver'] = {
        label = 'Emerald Ring Silver',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'emerald_ring_silver.png' },
    },

    ['diamond_necklace'] = {
        label = 'Diamond Necklace',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'diamond_necklace.png' },
    },

    ['ruby_necklace'] = {
        label = 'Ruby Necklace',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'ruby_necklace.png' },
    },

    ['sapphire_necklace'] = {
        label = 'Sapphire Necklace',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'sapphire_necklace.png' },
    },

    ['emerald_necklace'] = {
        label = 'Emerald Necklace',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'emerald_necklace.png' },
    },

    ['silverchain'] = {
        label = 'Silver Chain',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'silverchain.png' },
    },

    ['diamond_necklace_silver'] = {
        label = 'Diamond Necklace Silver',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'diamond_necklace_silver.png' },
    },

    ['ruby_necklace_silver'] = {
        label = 'Ruby Necklace Silver',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'ruby_necklace_silver.png' },
    },

    ['sapphire_necklace_silver'] = {
        label = 'Sapphire Necklace Silver',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'sapphire_necklace_silver.png' },
    },

    ['emerald_necklace_silver'] = {
        label = 'Emerald Necklace Silver',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'emerald_necklace_silver.png' },
    },

    ['goldearring'] = {
        label = 'Golden Earrings',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'gold_earring.png' },
    },

    ['diamond_earring'] = {
        label = 'Diamond Earrings',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'diamond_earring.png' },
    },

    ['ruby_earring'] = {
        label = 'Ruby Earrings',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'ruby_earring.png' },
    },

    ['sapphire_earring'] = {
        label = 'Sapphire Earrings',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'sapphire_earring.png' },
    },

    ['emerald_earring'] = {
        label = 'Emerald Earrings',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'emerald_earring.png' },
    },

    ['silverearring'] = {
        label = 'Silver Earrings',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'silver_earring.png' },
    },

    ['diamond_earring_silver'] = {
        label = 'Diamond Earrings Silver',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'diamond_earring_silver.png' },
    },

    ['ruby_earring_silver'] = {
        label = 'Ruby Earrings Silver',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'ruby_earring_silver.png' },
    },

    ['sapphire_earring_silver'] = {
        label = 'Sapphire Earrings Silver',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'sapphire_earring_silver.png' },
    },

    ['emerald_earring_silver'] = {
        label = 'Emerald Earrings Silver',
        weight = 200,
        stack = true,
        close = false,
        description = '',
        client = { image = 'emerald_earring_silver.png' },
    },

    ['carbon'] = {
        label = 'Carbon',
        weight = 200,
        stack = true,
        close = false,
        description = 'This thing is hella dirty.',
        client = { image = 'carbon.png' },
    },

    -- ['gold_bar'] = {
    --     label = 'Gold Bar',
    --     weight = 1000,
    --     stack = true,
    --     close = false,
    --     description = '',
    --     client = { image = 'gold_bar.png' },
    -- },

    ['gold_ore'] = {
        label = 'Gold Ore',
        weight = 1000,
        stack = true,
        close = false,
        description = '',
        client = { image = 'gold_ore.png' },
    },

    ['iron_ore'] = {
        label = 'Iron Ore',
        weight = 1000,
        stack = true,
        close = false,
        description = '',
        client = { image = 'iron_ore.png' },
    },

    ['copper_ore'] = {
        label = 'Copper Ore',
        weight = 1000,
        stack = true,
        close = false,
        description = '',
        client = { image = 'copper_ore.png' },
    },

    ['aluminum_ore'] = {
        label = 'Aluminum Ore',
        weight = 1000,
        stack = true,
        close = false,
        description = '',
        client = { image = 'aluminum_ore.png' },
    },

    ["miningdrill"] = {
        label = "Mining Drill",
        weight = 1000,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "miningdrill.png",
        }
    },

    ["silverore"] = {
        label = "Silver Ore",
        weight = 1000,
        stack = true,
        close = false,
        description = "Silver Ore",
        client = {
            image = "silverore.png",
        }
    },

    ["goldpan"] = {
        label = "Gold Panning Tray",
        weight = 10,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "goldpan.png",
        }
    },

    ["bottle"] = {
        label = "Empty Bottle",
        weight = 10,
        stack = true,
        close = false,
        description = "A glass bottle",
        client = {
            image = "bottle.png",
        }
    },

    ["copperore"] = {
        label = "Copper Ore",
        weight = 1000,
        stack = true,
        close = false,
        description = "Copper, a base ore.",
        client = {
            image = "copperore.png",
        }
    },

    ["silveringot"] = {
        label = "Silver Ingot",
        weight = 1000,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "silveringot.png",
        }
    },

    ["mininglaser"] = {
        label = "Mining Laser",
        weight = 900,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "mininglaser.png",
        }
    },

    ["can"] = {
        label = "Empty Can",
        weight = 10,
        stack = true,
        close = false,
        description = "An empty can, good for recycling",
        client = {
            image = "can.png",
        }
    },

    ["ironore"] = {
        label = "Iron Ore",
        weight = 1000,
        stack = true,
        close = false,
        description = "Iron, a base ore.",
        client = {
            image = "ironore.png",
        }
    },

    ["goldingot"] = {
        label = "Gold Ingot",
        weight = 1000,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "goldingot.png",
        }
    },

    ["goldore"] = {
        label = "Gold Ore",
        weight = 1000,
        stack = true,
        close = false,
        description = "Gold Ore",
        client = {
            image = "goldore.png",
        }
    },

    ["drillbit"] = {
        label = "Drill Bit",
        weight = 10,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "drillbit.png",
        }
    },

    ["mining_diamond"] = {
        label = "Mine Diamond",
        weight = 1000,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "diamond.png",
        }
    },

    ["mining_goldchain"] = {
        label = "Mining Golden Chain",
        weight = 1500,
        stack = true,
        close = false,
        description = "",
        client = {
            image = "goldchain.png",
        }
    },

    -- Claw Machine

    ["claw_machine"] = {
        label = "Claw Machine",
        weight = 10000,
        stack = false,
        close = true,
        description = "A claw machine, let's make some profit!",
        client = {
            image = "claw_machine.png",
        }
    },

    ["humpy_tee_plushie"] = {
        label = "Humpy tee plushie",
        weight = 1000,
        stack = false,
        close = true,
        description = "Plush Plush!",
        client = {
            image = "humpy_tee_plushie.png",
        }
    },

    ["muffy_tee_plushie"] = {
        label = "Muffy tee plushie",
        weight = 1000,
        stack = false,
        close = true,
        description = "Plush Plush!",
        client = {
            image = "muffy_tee_plushie.png",
        }
    },

    ["saki_tee_plushie"] = {
        label = "Saki tee plushie",
        weight = 1000,
        stack = false,
        close = true,
        description = "Plush Plush!",
        client = {
            image = "saki_tee_plushie.png",
        }
    },

    ["poopie_tee_plushie"] = {
        label = "Poppie tee plushie",
        weight = 1000,
        stack = false,
        close = true,
        description = "Plush Plush!",
        client = {
            image = "poopie_tee_plushie.png",
        }
    },

    ["smoker_tee_plushie"] = {
        label = "Smoker tee plushie",
        weight = 1000,
        stack = false,
        close = true,
        description = "Plush Plush!",
        client = {
            image = "smoker_tee_plushie.png",
        }
    },

    ["grindy_tee_plushie"] = {
        label = "Grindy tee plushie",
        weight = 1000,
        stack = false,
        close = true,
        description = "Plush Plush!",
        client = {
            image = "grindy_tee_plushie.png",
        }
    },

    ["princess_tee_plushie"] = {
        label = "Princess tee plushie",
        weight = 1000,
        stack = false,
        close = true,
        description = "Plush Plush!",
        client = {
            image = "princess_tee_plushie.png",
        }
    },

    ["wasabi_kitty_tee_plushie"] = {
        label = "Wasabi Kitty tee plushie",
        weight = 1000,
        stack = false,
        close = true,
        description = "Plush Plush!",
        client = {
            image = "wasabi_kitty_tee_plushie.png",
        }
    },

    ["master_tee_plushie"] = {
        label = "Master tee plushie",
        weight = 1000,
        stack = false,
        close = true,
        description = "Plush Plush!",
        client = {
            image = "master_tee_plushie.png",
        }
    },

    -- Oxy Runs
    ["oxypackage"] = {
        label = "Suspicous Package",
        weight = 1000,
        stack = false,
        close = true,
        description = "",
        client = {
            image = "oxy-box.png",
        }
    },

    ["weed_brick"] = {
        label = "Weed Brick",
        weight = 1000,
        stack = true,
        close = true,
        description = "1KG Weed Brick to sell to large customers.",
        client = {
            image = "weed_brick.png",
        }
    },

    -- Lighter Fires

    ["zippo_lighter"] = {
        label = "Zippo Lighter",
        weight = 1000,
        stack = true,
        close = true,
        description = "An old zippo lighter",
        client = {
            image = "zippo_lighter.png",
        }
    },

    -- New Rust Smelters

    ["furnace"] = {
        label = "Furnace",
        weight = 5000,
        stack = false,
        close = true,
        description = "A placable furnace",
        client = {
            image = "furnacesmall.png",
        }
    },

    ["recycler"] = {
        label = "Recycler",
        weight = 10000,
        stack = false,
        close = true,
        description = "A placable recycler",
        client = {
            image = "recycler.png",
        }
    },

    ["large_furnace"] = {
        label = "Large Furnace",
        weight = 10000,
        stack = false,
        close = true,
        description = "A placable large furnace",
        client = {
            image = "furnacebig.png",
        }
    },

    ["bbq"] = {
        label = "BBQ Grill",
        weight = 2500,
        stack = false,
        close = true,
        description = "A placable bbq grill",
        client = {
            image = "bbqrustys.PNG",
        }
    },

    ["electric_furnace"] = {
        label = "Electric Furnace",
        weight = 7500,
        stack = false,
        close = true,
        description = "A placable electric furnace",
        client = {
            image = "hornoelectrico.png",
        }
    },

    ----------------------------- MATS

    ['mat_glue'] = {
        label = "Compound Glue",
        description = "Extremely toxic compound glue. Inhaling or consumption might lead to imminent death. Disposing in nature might result in being charged as an ecological terrorist.",
        weight = 50,
        stack = true
    },
    ['mat_metal'] = {
        label = "Metal",
        description = "This processed metal can be used to craft different things. It can be produced by processing raw materials or recycling trash.",
        weight = 10,
        stack = true
    },
    ['mat_hardened_metal'] = {
        label = "Hardened Metal",
        description = "This processed and hardened metal can be used to craft different things. It can be produced by processing raw materials or recycling trash.",
        weight = 10,
        stack = true
    },
    ['mat_plastic'] = {
        label = "Plastic",
        description = "This processed plastic can be used to craft different things. It can be produced by processing raw materials or recycling trash.",
        weight = 10,
        stack = true
    },
    ['mat_composite_plastic'] = {
        label = "Composite",
        description = "This processed composite plastic can be used to craft different things. It can be produced by processing raw materials or recycling trash.",
        weight = 10,
        stack = true
    },
    ['mat_acrylic'] = {
        label = "Acrylic Coat",
        description = "This acrylic coating paint can be used to craft different things. Specifically it is used to finish wood.",
        weight = 50,
        stack = true
    },
    ['mat_wood'] = {
        label = "Wood",
        description = "This processed wood can be used to craft different things. It can be produced by processing raw materials or recycling trash.",
        weight = 10,
        stack = true
    },
    ['mat_treated_wood'] = {
        label = "Treated Wood",
        description = "This processed and treated wood can be used to craft different things. It can be produced by processing raw materials or recycling trash.",
        weight = 10,
        stack = true
    },
    ['mat_components'] = {
        label = "Components",
        description = "These electric components can be used to craft different things. You can get them by breaking up electric trash.",
        weight = 25,
        stack = true
    },
    ['mat_cloth'] = {
        label = "Cloth",
        description = "This processed fiber cloth can be used to craft different things. It can be produced by processing raw materials or recycling trash.",
        weight = 10,
        stack = true
    },
    ['mat_gunpowder'] = {
        label = "Smokeless Gunpowder",
        description = "A refined, high-quality powder used in the crafting of ammunition. Known for producing less smoke and residue than traditional black powder, smokeless gunpowder provides greater efficiency and power in firearm cartridges.",
        rarity = "legendary",
        weight = 50,
        stack = true
    },

    ----------------------------- NEW PREMATS

    ["premat_plastic_doll"] = {
    label = "Plastic Figure",
    weight = 400,
    stack = true,
    description = "A plastic doll. It can be broken down into base crafting materials."
    },
    ["premat_trashbag"] = {
        label = "Trashbag",
        weight = 100,
        stack = true,
        description = "A trashbag. It can be broken down into base crafting materials."
    },
    ["premat_plastic_wheel"] = {
        label = "Plastic Wheel",
        weight = 600,
        stack = true,
        description = "A plastic wheel. I wonder what that has been attached to. It can be broken down into base crafting materials."
    },
    ["premat_toiletlid"] = {
        label = "Toilet Lid",
        weight = 1200,
        stack = false,
        description = "A toilet lid. It can be broken down into base crafting materials."
    },
    ["premat_driftwood"] = {
        label = "Driftwood",
        weight = 500,
        stack = false,
        description = "Just some  Driftwood. It can be broken down into base crafting materials."
    },
    ["premat_driftwood2"] = {
        label = "Driftwood",
        weight = 700,
        stack = false,
        description = "Just some  Driftwood. It can be broken down into base crafting materials."
    },
    ["premat_driftwood3"] = {
        label = "Driftwood",
        weight = 1000,
        stack = false,
        description = "Just some  Driftwood. It can be broken down into base crafting materials."
    },
    ["premat_driftwood4"] = {
        label = "Driftwood",
        weight = 1500,
        stack = false,
        description = "Just some Driftwood. It can be broken down into base crafting materials."
    },
    ["premat_brokenchair"] = {
        label = "Broken Chair",
        weight = 2200,
        stack = false,
        description = "A broken chair. It can be broken down into base crafting materials."
    },
    ["premat_brokentable"] = {
        label = "Broken Table",
        weight = 4000,
        stack = false,
        description = "A Broken Table. It can be broken down into base crafting materials."
    },
    ["premat_brokentablet"] = {
        label = "Broken Tablet",
        weight = 300,
        stack = true,
        description = "A Broken Table. It can be broken down into base crafting materials."
    },
    ["premat_oldflipphone"] = {
        label = "Broken Flip Phone",
        weight = 150,
        stack = true,
        description = "A broken flip phone. It can be broken down into base crafting materials."
    },
    ["premat_brokencamera"] = {
        label = "Broken Camera",
        weight = 300,
        stack = true,
        description = "A Broken Camera. It can be broken down into base crafting materials."
    },
    ["premat_oldmonitor"] = {
        label = "Old Monitor",
        weight = 2000,
        stack = false,
        description = "An old monitor. It can be broken down into base crafting materials."
    },
    ["premat_brokensmartphone"] = {
        label = "Broken Smartphone",
        weight = 500,
        stack = true,
        description = "A broken smartphone. It can be broken down into base crafting materials."
    },
    ["premat_brokenlaptop"] = {
        label = "Broken Laptop",
        weight = 1300,
        stack = false,
        description = "A Broken Laptop. It can be broken down into base crafting materials."
    },
    ["premat_oldknife"] = {
        label = "Old Knife",
        weight = 20,
        stack = true,
        description = "An old broken knife. It can be broken down into base crafting materials."
    },
    ["premat_oldspoon"] = {
        label = "Old Spoon",
        weight = 20,
        stack = true,
        description = "I like rusty spoons. Heh. Ah. I like to touch them, n-heh. The feeling of rust against my salad fingers, is almost orgasmic. It can be broken down into base crafting materials."
    },
    ["premat_brokenscissors"] = {
        label = "Old Scissors",
        weight = 20,
        stack = true,
        description = "Old broken scissors. It can be broken down into base crafting materials."
    },
    ["premat_oldfork"] = {
        label = "Old Fork",
        weight = 20,
        stack = true,
        description = "An old fork. It can be broken down into base crafting materials."
    },
    ["premat_emptycan"] = {
        label = "Empty Can",
        weight = 20,
        stack = true,
        description = "An Empty Can. It can be broken down into base crafting materials."
    },
    ["premat_emptycan2"] = {
        label = "Empty Can",
        weight = 20,
        stack = true,
        description = "An Empty Can. It can be broken down into base crafting materials."
    },
    ["premat_emptycan3"] = {
        label = "Empty Can",
        weight = 20,
        stack = true,
        description = "An Empty Can. It can be broken down into base crafting materials."
    },
    ["premat_oldspring"] = {
        label = "Old Spring",
        weight = 100,
        stack = true,
        description = "An old spring. It can be broken down into base crafting materials."
    },
    ["premat_oldnut"] = {
        label = "Old Nut",
        weight = 20,
        stack = true,
        description = "An old nut. It can be broken down into base crafting materials."
    },
    ["premat_emptytunacan"] = {
        label = "Empty Can",
        weight = 20,
        stack = true,
        description = "An empty flat can. It can be broken down into base crafting materials."
    },
    ["premat_emptytunacan2"] = {
        label = "Empty Can",
        weight = 20,
        stack = true,
        description = "An empty round flat can. It can be broken down into base crafting materials."
    },
    ["premat_rustedlicplate"] = {
        label = "Rusty License Plate",
        weight = 250,
        stack = true,
        description = "A rusty license plate. It can be broken down into base crafting materials."
    },
    ["premat_oldpot"] = {
        label = "Old Pot",
        weight = 300,
        stack = false,
        description = "An old pot. It can be broken down into base crafting materials."
    },
    ["premat_rustywire"] = {
        label = "Rusty Wire",
        weight = 500,
        stack = true,
        description = "A rusty wire. It can be broken down into base crafting materials."
    },
    ["premat_oldwire"] = {
        label = "Old Wire",
        weight = 800,
        stack = true,
        description = "An old wire. It can be broken down into base crafting materials."
    },
    ["premat_oldcarbattery"] = {
        label = "Old Car Battery",
        weight = 2000,
        stack = false,
        description = "An old car battery. It can be broken down into base crafting materials."
    },
    ["premat_brokenwrench"] = {
        label = "Broken Wrench",
        weight = 1500,
        stack = false,
        description = "A Broken Wrench. It can be broken down into base crafting materials."
    },
    ["premat_metalpipe"] = {
        label = "Metal Pipe",
        weight = 2000,
        stack = false,
        description = "A metal pipe. It can be broken down into base crafting materials."
    },
    ["premat_metalpipe2"] = {
        label = "Metal Pipe",
        weight = 1500,
        stack = false,
        description = "A metal pipe. It can be broken down into base crafting materials."
    },
    ["premat_metalpipe3"] = {
        label = "Metal Pipe",
        weight = 2000,
        stack = false,
        description = "A metal pipe. It can be broken down into base crafting materials."
    },
    ["premat_metalpipe4"] = {
        label = "Metal Pipe",
        weight = 2000,
        stack = false,
        description = "A metal pipe. It can be broken down into base crafting materials."
    },
    ["premat_oldlandmine"] = {
        label = "Old Landmine",
        weight = 3000,
        stack = false,
        description = "An old landmine. It can be broken down into base crafting materials. Or maybe.."
    },
    ["premat_transformerpart"] = {
        label = "Transformer Part",
        weight = 5000,
        stack = false,
        description = "Some part of a transformer, it can be broken down for metal or components."
    },
    ["premat_oldflag"] = {
        label = "Old Flag",
        weight = 300,
        stack = true,
        description = "An old dirty flag. It can be broken down into base crafting materials."
    },
    ["premat_oldflag2"] = {
        label = "Old Flag",
        weight = 300,
        stack = true,
        description = "An old dirty flag. It can be broken down into base crafting materials."
    },
    ["premat_oldflag3"] = {
        label = "Old Flag",
        weight = 300,
        stack = true,
        description = "An old dirty flag. It can be broken down into base crafting materials."
    },
    ["premat_oldjacket"] = {
        label = "Old Jacket",
        weight = 400,
        stack = true,
        description = "An old dirty jacket. It can be broken down into base crafting materials."
    },
    ["premat_oldshirt"] = {
        label = "Old Shirt",
        weight = 200,
        stack = true,
        description = "An old dirty shirt. It can be broken down into base crafting materials."
    },
    ["premat_oldpants"] = {
        label = "Old Pants",
        weight = 300,
        stack = true,
        description = "Old dirty pants. It can be broken down into base crafting materials."
    },
    ["premat_oldsocks"] = {
        label = "Old Socks",
        weight = 100,
        stack = true,
        description = "Old dirty socks. They smell weird. It can be broken down into base crafting materials."
    },
    ["premat_oldunderpants"] = {
        label = "Old Underpants",
        weight = 100,
        stack = true,
        description = "Old underpants. Smells weird. It can be broken down into base crafting materials."
    },
    ["premat_oldunderpants2"] = {
        label = "Old Underpants",
        weight = 100,
        stack = true,
        description = "Old underpants. Smells funny. It can be broken down into base crafting materials."
    },
    ["premat_oldunderpants3"] = {
        label = "Old Underpants",
        weight = 100,
        stack = true,
        description = "Old underpants. Smells odd. It can be broken down into base crafting materials."
    },

    --------------
    --- HUNTING---
    --------------

    ['meat_boar'] = {
        label = 'Raw Boar Meat',
        description = 'Did you know that a lone wild hog can accumulate $1,000 worth of agricultural damages in a single night?',
        weight = 475,
        stack = true,
    },

    ['meat_coyote'] = {
        label = 'Raw Coyote Meat',
        description = 'As omnivores and opportunists, coyotes eat a wide variety of organic matter. They will absolutely target smaller domesticated creatures such as dogs and cats as a food source, even preying on larger domestic animals such as sheep and cattle when they get together in packs.',
        weight = 250,
        stack = true,
    },

    ['meat_deer'] = {
        label = 'Raw Deer Meat',
        description = 'While deer meat is often referred to as venison, that term can also apply to the meat of other critters such as boar, hare, or really any hunted animal.',
        weight = 350,
        stack = true,
    },

    ['meat_mtlion'] = {
        label = 'Raw Moutain Lion Meat',
        description = 'Habitat loss and overhunting has led to the dramatic decline of Mountain Lion populations across the country. I am not lion when I say the sale of this meat is typically illegal everywhere in the US.',
        weight = 225,
        stack = true,
    },

    ['meat_panther'] = {
        label = 'Raw Panther Meat',
        description = 'The term panther can refer to any of the big cats taxonomized in the Panthera genus. Technically this includes lions, tigers, jaguars, leopards, and snow leopards, all of which can be referred to as panthers.',
        weight = 225,
        stack = true,
    },

    ['meat_rabbit'] = {
        label = 'Raw Rabbit Meat',
        description = 'The first recorded instance of a rabbit being pulled from a hat is accredited to Louis Comte in 1814.',
        weight = 125,
        stack = true,
    },

    ['meat_rat'] = {
        label = 'Raw Rat Meat',
        description = 'You are the rat king. Tall tailed, terrible and true. We are the rats, the rats, the rats, but where pray tell is the cat?',
        weight = 75,
        stack = true,
    },

    ['meat_cat'] = {
        label = 'Raw Cat Meat',
        description = 'The feral cat epidemic plagues native species, they least you can do is spay and neuter your pets if you refuse to keep them indoors. The average female cat can have 2-3 litters per year, with 1-8 kittens per litter. Each female kitten can reproduce by five months. These numbers accumulate rapidly over a very short period of time.',
        weight = 450,
        stack = true,
    },

    ['meat_dog'] = {
        label = 'Raw Dog Meat',
        description = 'Dogs, Coyotes, and Wolves are all close enough genetically to be capable of producing hybridizations between eachother. So this really isn\'t that different to hunting one of them, right?',
        weight = 500,
        stack = true,
    },

    --------------
    -----PELT-----
    --------------

    ['pelt_boar'] = {
        label = 'Boar Pelt',
        description = 'In human care a boar can live about to 25 years, this one I can assure you did not.',
        weight = 1262,
        stack = true,
    },

    ['pelt_coyote'] = {
        label = 'Coyote Pelt',
        description = 'Coyotes are typically crepuscular in nature, meaning they tend to be most active at dusk and dawn. This habit, however, will not stop them from roaming about during the day or night if they so decide.',
        weight = 543,
        stack = true,
    },

    ['pelt_deer'] = {
        label = 'Deer Pelt',
        description = 'The highly reflective orange colors that hunters are supposed to wear is assumed to appear grey to deer as they do not have the capacity to observe light reflected in longer wavelengths such as with red and orange.',
        weight = 960,
        stack = true,
    },

    ['pelt_mtlion'] = {
        label = 'Moutain Lion Pelt',
        description = 'There are over 40 common name variations in English that refer to the same species of animal that produced this pelt. Mountain Lion, Cougar, Puma, Catamount, Panther, are just a few examples for the curious.',
        weight = 684,
        stack = true,
    },

    ['pelt_panther'] = {
        label = 'Panther Pelt',
        description = 'Panther? I hardy know her!',
        weight = 684,
        stack = true,
    },

    ['pelt_rabbit'] = {
        label = 'Rabbit Pelt',
        description = 'Rabbits both domestic and wild can be observed twisting playfully into the air, clicking their heels, and zipping around in delight in a process known as Binkying.',
        weight = 273,
        stack = true,
    },


    ----------------------------------------------------[ FOODS.LUA ]
    ['food_panties'] = {
		label = 'Edible Panties',
		description = "Mhhhmh. Why do golfers wear two pairs of knickers? In case they get a hole in one.",
		weight = 10,
		stack = true
	},

	-- Section: Can
	['food_canbeans'] = {
		label = 'Canned Beans',
		description = "Canned for freshness and best taste. No cats were harmed in the making of Toe Beans.",
		weight = 400,
		usable = true,
		stack = true
	},
	['food_cancorn'] = {
		label = 'Canned Corn',
		description = "Fresh and never frozen, it has the juice. Remember to cook the kernel, not the colonel.",
		weight = 400,
		usable = true,
		stack = true
	},
	['food_canhotdog'] = {
		label = 'Canned Hot Dogs',
		description = "You can hear the slight sound of a bark, because these hot dogs are barkin' tasty. No dogs were harmed in the making of these hot dogs.",
		weight = 400,
		usable = true,
		stack = true
	},
	['food_sardines'] = {
		label = 'Sardine Tin',
		description = "Just a small little snack. If the smell doesn't kill you, the taste surely will (maybe). Alley cat approved.",
		weight = 100,
		usable = true,
		stack = true
	},
	['food_spicedham'] = {
		label = 'Canned Corned Beef',
		description = "Getting this out of the can is hell. Good luck not getting beef everywhere.",
		weight = 300,
		usable = true,
		stack = true
	},
	['food_tunacan'] = {
		label = 'Canned Tuna',
		description = "Can of premium quality tuna otherwise known as the turkey of the Alamo Sea! Tastes 100% better with cat ears.",
		weight = 100,
		usable = true,
		stack = true
	},
	-- Section: Drinks
	['food_applejuice'] = {
		label = 'Apple Juice',
		description = "Apples grown by Lucky Jim's Ranch. Taste the crispness of 10% real apples!",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_carrotjuice'] = {
		label = 'Carrot Juice',
		description = "Get more vegtables into your system! Drink the bunny approved drink.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_celerydrink'] = {
		label = 'Celery Detox Drink',
		description = "It's healthy, but how does it taste?",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_cranjuice'] = {
		label = 'Cranberry Juice',
		description = "Not just for a holiday, but everyday mixers too. It's sweet and tart, like you.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_cucumberjuice'] = {
		label = 'Cucumber Juice',
		description = "A refreshing and light beverage, put more green in your diet.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_energydrink'] = {
		label = 'Crimson Cow Energy',
		description = "Have a cow and go steer crazy.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_energydrinkcherry'] = {
		label = 'Crimson Cow Energy: Cherry Stampede',
		description = "Have a cow and go steer crazy.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_energydrinkraspberry'] = {
		label = 'Crimson Cow Energy: Berry Bovine',
		description = "Have a cow and go steer crazy.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_energydrinklime'] = {
		label = 'Crimson Cow Energy: Lime Rush',
		description = "Have a cow and go steer crazy.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_energydrinkgrape'] = {
		label = 'Crimson Cow Energy: Grape Surge',
		description = "Have a cow and go steer crazy.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_energydrinkorange'] = {
		label = 'Crimson Cow Energy: Orange Capestick',
		description = "Have a cow and go steer crazy.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_elecberry'] = {
		label = 'Berry Drink',
		description = "Unleash your energy, with this berrylicious drink to replenish your fluids.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_elecfruitpunch'] = {
		label = 'Fruit Punch Drink',
		description = "Unleash your energy, with a flavor that will knock you out.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_elecgrape'] = {
		label = 'Grape Drink',
		description = "Unleash your energy, and achieve GRAPEness.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_eleclemline'] = {
		label = 'Lemon Lime Drink',
		description = "Unleash your energy, with the power of sour and one just wasn't enough.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_elecorange'] = {
		label = 'Orange Drink',
		description = "Unleash your energy, orange you glad it is not banana flavored.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_lemonjuice'] = {
		label = 'Lemon Drink',
		description = "Test your taste buds and pucker up with Juicy's very own sour lemon drink.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_mangojuice'] = {
		label = 'Mango Juice',
		description = "Treat yourself to the refreshing taste of Juicy Mango. Just a little mango and a whole lot of flavor.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_melonjuice'] = {
		label = 'Watermelon Juice',
		description = "Enjoy a Juicy drink containing slightly more melon than water.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_orangejuice'] = {
		label = 'Orange Juice',
		description = "Fresh orange juice from Juicy. Providing some of the vitamin C you need.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_strawjuice'] = {
		label = 'Strawberry Juice',
		description = "Juicy presents the refreshing taste of strawberry, with none of the masticating that tires your jaw.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_teaboxblack'] = {
		label = 'Black Tea Box',
		description = "The caffeine content changes based on brewing time and water temperature.",
		weight = 225,
		usable = true,
		stack = true
	},
	['food_teabagblack'] = {
		label = 'Black Tea Bag',
		description = "Got a cold? Tea. Bad day? Tea. Apocalypse? Tea.",
		weight = 15,
		usable = true,
		stack = true
	},
	['food_teaboxchamomile'] = {
		label = 'Chamomile Tea Box',
		description = "The perfect brew to ease those nerves and right an upset stomach.",
		weight = 225,
		usable = true,
		stack = true
	},
	['food_teabagchamomile'] = {
		label = 'Chamomile Tea Bag',
		description = "Warning: May cause sudden urge to cancel plans and become a blanket burrito.",
		weight = 15,
		usable = true,
		stack = true
	},
	['food_teaboxgreen'] = {
		label = 'Green Tea Box',
		description = "Shh, it's tea time.",
		weight = 225,
		usable = true,
		stack = true
	},
	['food_teabaggreen'] = {
		label = 'Green Tea Bag',
		description = "Once you're done steeping the tea bag, stick it in your shoe. It'll take that stench right out.",
		weight = 15,
		usable = true,
		stack = true
	},
	['food_teaboxhibiscus'] = {
		label = 'Hibiscus Tea Box',
		description = "A refreshing choice for those who don't want to consume caffeine.",
		weight = 225,
		usable = true,
		stack = true
	},
	['food_teabaghibiscus'] = {
		label = 'Hibiscus Tea Bag',
		description = "Tangy and delicious!",
		weight = 15,
		usable = true,
		stack = true
	},
	['food_teaboxlemon'] = {
		label = 'Lemon Tea Box',
		description = "Good for a cold night and a sore throat.",
		weight = 225,
		usable = true,
		stack = true
	},
	['food_teabaglemon'] = {
		label = 'Lemon Tea Bag',
		description = "A squeeze of lemon goes a long way, unless you squeeze it in your eye.",
		weight = 15,
		usable = true,
		stack = true
	},
	['food_watersparkle'] = {
		label = 'Sparkling Water',
		description = "Just a bit of bubbles with your water to make it a bit fancier. Carbonated by Humane Labs and bottled locally in Sandy Shores.",
		weight = 450,
		usable = true,
		stack = true,
        client = {
            status = { thirst = 30, hunger = 0 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `vw_prop_casino_water_bottle_01a`, pos = vec3(0.03, 0.02, -0.08), rot = vec3(0.0, 10.5, 179.5) },
            usetime = 3000,
        },
        degrade = 40320
	},
	['food_waterstill'] = {
		label = 'Still Water',
		description = "Filtered tap water bottled locally in Sandy Shores. Why would anyone buy this?",
		weight = 450,
		usable = true,
		stack = true,
        client = {
            status = { thirst = 30, hunger = 0 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.01, 0.0, 0.03), rot = vec3(0.0, 10.5, 179.5) },
            usetime = 3000,
        },
        degrade = 40320
	},
	['food_drinkrainbow'] = {
		label = 'Rainbow Drink',
		description = "A colorful drink in a large curvy plastic cup.",
		weight = 750,
		usable = true,
		stack = true,
        client = {
            status = { thirst = 50, hunger = 0 },
            anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
            prop = { model = `prop_cs_paper_cup`, pos = vec3(0.08, 0.08, 0.03), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 3500,
        },
        degrade = 7200
	},
	['food_slushierainbow'] = {
		label = 'Rainbow Slushie',
		description = "A colorful ice cold slushie in a plastic cup.",
		weight = 500,
		usable = true,
		stack = true,
        client = {
            status = { thirst = 40, hunger = 0 },
            anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
            prop = { model = `prop_cs_paper_cup`, pos = vec3(0.08, 0.08, 0.03), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 3500,
        },
        degrade = 7200
	},
	['food_beerdark'] = {
		label = 'Dark Beer',
		description = "Nothing wrong with a nice dark beer. 8% Alcohol Content.",
		weight = 500,
		usable = true,
		stack = true
	},
	['food_beersaison'] = {
		label = 'Saison Beer',
		description = "Nothing wrong with a nice Saison beer. 6% Alcohol Content",
		weight = 500,
		usable = true,
		stack = true
	},
	['food_beermelon'] = {
		label = 'Water My Melons',
		description = "Nothing wrong with a refreshing Water My Melons beer. 5% Alcohol Content",
		weight = 500,
		usable = true,
		stack = true
	},
	['food_cancola'] = {
		label = 'ECola',
		description = "Deliciously Infectious! A single can of ECola.",
		weight = 350,
		usable = true,
		stack = true
	},
	['food_candietcola'] = {
		label = 'Diet ECola',
		description = "Go viral with the Diet version of ECola!",
		weight = 350,
		usable = true,
		stack = true
	},
	['food_cansprunk'] = {
		label = 'Sprunk',
		description = "Overclock your life and put some Sprunk in yer trunk!",
		weight = 350,
		usable = true,
		stack = true
	},
	['food_cansprunlight'] = {
		label = 'Sprunk Light',
		description = "Sprunk Light, also know as 'The Essence of Life'.",
		weight = 350,
		usable = true,
		stack = true
	},

    ['food_canorange'] = {
		label = 'Orang-O-Tang',
		description = "Full-O-Flava, the drink directly endorsed by Pongo the Orangutan.",
		weight = 350,
		usable = true,
		stack = true
	},
	['food_bottleorange'] = {
		label = 'Orang-O-Tang',
		description = "A single bottle of Orang-O-Tang. It's Full-O-Flava",
		weight = 350,
		usable = true,
		stack = true
	},
	['food_sparklingcitrus'] = {
		label = 'Citrus Seltzer',
		description = "Static water with a hint of citrus fruit.",
		weight = 350,
		usable = true,
		stack = true
	},
	['food_sparklingfruit'] = {
		label = 'Fruity Seltzer',
		description = "Static water with a side of sweet fruits.",
		weight = 450,
		usable = true,
		stack = true
	},
	['food_bottlesprunk'] = {
		label = 'Sprunk',
		description = "A single bottle of Sprunk.",
		weight = 450,
		usable = true,
		stack = true,
        client = {
			status = { thirst = 30, hunger = 0 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01b`, pos = vec3(0.01, 0.0, 0.07), rot = vec3(0.0, -13.5, 179.5) },
			usetime = 2500,
		},
        degrade = 40320
	},
	['food_bottleecola'] = {
		label = 'ECola',
		description = "A single bottle of ECola.",
		weight = 450,
		usable = true,
		stack = true,
        client = {
            status = { thirst = 30, hunger = 0 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.0, 0.07), rot = vec3(0.0, -13.5, 179.5) },
            usetime = 2500,
        },
        degrade = 40320
	},
	['food_beercanyuzu'] = {
		label = 'Yuzu Pale Ale',
		description = "Nothing wrong with a refreshing Yuzu Pale Ale Beer. 5% Alcohol Content",
		weight = 350,
		usable = true,
		stack = true
	},
	['food_beercan34'] = {
		label = 'W-34 Light Beer',
		description = "Nothing wrong with a refreshing W-34 Beer. 4.2 % Alcohol Content",
		weight = 350,
		usable = true,
		stack = true
	},
	['food_beercan58'] = {
		label = 'T-58 IPA',
		description = "Nothing wrong with a refreshing T-58 Black IPA Beer by Brown Bear Brewing. 6% Alcohol Content",
		weight = 350,
		usable = true,
		stack = true
	},
	['food_beercan189'] = {
		label = 'W-189 Lager',
		description = "Nothing wrong with a refreshing W-189 Unfiltered Lager Beer. 5% Alcohol Content",
		weight = 350,
		usable = true,
		stack = true
	},
	['food_beercan04'] = {
		label = 'S-04 Ale',
		description = "Nothing wrong with a refreshing S-04 American Wheat Ale Beer. 5% Alcohol Content",
		weight = 350,
		usable = true,
		stack = true
	},
	['food_beercanus05'] = {
		label = 'US-05 Double IPA',
		description = "Nothing wrong with a refreshing US-05 New England Double IPA Beer. 6% Alcohol Content",
		weight = 350,
		usable = true,
		stack = true
	},
	['food_beercan08'] = {
		label = 'WB-08 Beer',
		description = "Nothing wrong with a refreshing WB-08 Hefeweizen Wheat Ale Beer. 4% Alcohol Content",
		weight = 350,
		usable = true,
		stack = true
	},
	['food_beercan23'] = {
		label = 'S-23 Helles',
		description = "Nothing wrong with a refreshing S-23 German Helles Bier. Lecker schmecker! 5% Alcohol Content",
		weight = 350,
		usable = true,
		stack = true
	},
	['food_vodka'] = {
		label = 'No Go Vodka',
		description = "Flavorless and crystal clear. Perfectly compliments a night not to remember. 750ML 40% Alcohol Content",
		weight = 1250,
		usable = true,
		stack = true
	},
	['food_winered'] = {
		label = 'Marlowe Red',
		description = "Bottle of Marlowe Red Wine from the Marlowe Vineyards in Tongva Hills. 750ML 12% Alcohol Content",
		weight = 1250,
		usable = true,
		stack = true
	},
	['food_winewhite'] = {
		label = 'Marlowe White',
		description = "Bottle of Marlowe White Wine from the Marlowe Vineyards in Tongva Hills. 10% Alcohol Content",
		weight = 1250,
		usable = true,
		stack = true
	},
	['food_moonshine'] = {
		label = 'Moonshine',
		description = "A jar of homemade moonshine. 750ML 70% Alcohol Content",
		weight = 1250,
		usable = true,
		stack = true
	},
	-- Section: Gas Station Food
	['food_pack_hotdogmustard'] = {
		label = 'Sketchy Hot Dog',
		description = "Cold Dog would be a more appropriate name for this sad snack. You aren't quite sure how long this has been sitting out.",
		weight = 300,
		usable = true,
		stack = true,
        client = {
            status = { thirst = 0, hunger = 20 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_cs_hotdog_01`, pos = vec3(0.03, 0.04, -0.03), rot = vec3(-45.0,  -90.5, -1.5) },
            usetime = 3000,
        },
        degrade = 5760
    },
	['food_pack_sushi'] = {
		label = 'Boxed Sushi',
		description = "Perhaps your day of reckoning has arrived with this package of Sinful Salmon sushi.",
		weight = 350,
		usable = true,
		stack = true,
        client = {
            status = { thirst = 0, hunger = 20 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_sandwich_01`, pos = vec3(0.02, 0.0, -0.03), rot = vec3(0.0,  -30.5, -190.5) },
            usetime = 3000,
        },
        degrade = 5760

	},
	['food_pack_sandwichcheese'] = {
		label = 'Rough Sandwich',
		description = "A cheese sandwich produced by Saucy Subs! Note: this product does not contain real cheese.",
		weight = 300,
		usable = true,
		stack = true,
        client = {
            status = { thirst = 0, hunger = 20 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_sandwich_01`, pos = vec3(0.02, 0.0, -0.03), rot = vec3(0.0,  -30.5, -190.5) },
            usetime = 3000,
        },
        degrade = 10080
	},
	-- Section: Ingredients-Fruits
	['food_apple'] = {
		label = 'Apple',
		description = "An apple a day may help keep the doctor away, but if you don't brush your teeth, the dentist may be closer than ever.",
		weight = 150,
		usable = true,
		stack = true
	},
	['food_banana'] = {
		label = 'Banana',
		description = "Did you know that the Cavendish banana is at risk of being wiped out by a disease that already wiped out its predecessor, the Gros Michel banana?",
		weight = 150,
		usable = true,
		stack = true
	},
	['food_blueberries'] = {
		label = 'Blueberries',
		description = "A small carton of the bluest of berries. Cheer them up.",
		weight = 150,
		usable = true,
		stack = true
	},
	['food_cantaloupe'] = {
		label = 'Cantaloupe',
		description = "Also known as a rock melon!",
		weight = 1600,
		usable = true,
		stack = true
	},
	['food_cantaloupesliced'] = {
		label = 'Cantaloupe Slices',
		description = "Two slices of juicy goodness and packed with Vitamin C.",
		weight = 400,
		usable = true,
		stack = true
	},
	['food_cherries'] = {
		label = 'Cherries',
		description = "Just a handful of nature's bite-sized flavor bombs.",
		weight = 150,
		usable = true,
		stack = true
	},
	['food_maraschino'] = {
		label = 'Maraschino Cherry',
		description = "A single maraschino cherry, the perfect garnish to a cocktail or a milkshake.",
		weight = 5,
		usable = true,
		stack = true
	},
	['food_garlic'] = {
		label = 'Garlic',
		description = "Vampires hate it. BLEH!",
		weight = 40,
		usable = true,
		stack = true
	},
	['food_garlicclove'] = {
		label = 'Garlic Clove',
		description = "The recipe said to crush the garlic. So I told it, 'You'll never amount to anything.' Rest in peace, garlic. You will be minced.",
		weight = 5,
		usable = true,
		stack = true
	},
	['food_grapes'] = {
		label = 'Grapes',
		description = "A bunch of snackable marbles.",
		weight = 150,
		usable = true,
		stack = true
	},
	['food_kiwi'] = {
		label = 'Kiwi',
		description = "If you're allergic to latex, you are probably also allergic to this fuzzy fruit!",
		weight = 75,
		usable = true,
		stack = true
	},
	['food_lemon'] = {
		label = 'Lemon',
		description = "Lemons are actually the result of centuries of manmade hybridization between citrons and sour oranges. It is of note that life truly never gave us lemons, we did it all on our own, so go follow history and make some lemonade!",
		weight = 48,
		usable = true,
		stack = true
	},
	['food_lemonslice'] = {
		label = 'Lemon Slice',
		description = "Don't squeeze this into someone's eye. Or do, I don't care.",
		weight = 6,
		usable = true,
		stack = true
	},
	['food_lime'] = {
		label = 'Lime',
		description = "Halve a good lime!",
		weight = 40,
		usable = true,
		stack = true
	},
	['food_limeslice'] = {
		label = 'Halved Lime',
		description = "If you don't squeeze this in your guacamole, you're wrong.",
		weight = 20,
		usable = true,
		stack = true
	},
	['food_mango'] = {
		label = 'Mango',
		description = "Please if you have any information on where he went, alert your local fruit sellers. We just want him home where he belongs.",
		weight = 150,
		usable = true,
		stack = true
	},
	['food_mangosliced'] = {
		label = 'Sliced Mango',
		description = "There is no wrong way to cut a mango. Except whatever you've just done. Do you know what you're doing?",
		weight = 75,
		usable = true,
		stack = true
	},
	['food_orange'] = {
		label = 'Orange',
		description = "Did you know that the orange is a hybrid between a pomelo and a mandarin and that its full dna has been sequenced?",
		weight = 48,
		usable = true,
		stack = true
	},
	['food_orangeslice'] = {
		label = 'Orange Slice',
		description = "Why did the orange fail its test? Because it couldn't concentrate.",
		weight = 6,
		usable = true,
		stack = true
	},
	['food_peach'] = {
		label = 'Peach',
		description = "They're so confident, they don't need any bug spray! Peaches have a coat of soft fuzzy protection to help ward off unwanted bugs and pests.",
		weight = 150,
		usable = true,
		stack = true
	},
	['food_pear'] = {
		label = 'Pear',
		description = "The pear-fect snack for when you're on the go.",
		weight = 150,
		usable = true,
		stack = true
	},
	['food_pineapple'] = {
		label = 'Pineapple',
		description = "I'm eating it. And then it's going to eat me! Oh my GAAAAAAAAAHD!",
		weight = 1600,
		usable = true,
		stack = false
	},
	['food_pineappleslice'] = {
		label = 'Pineapple Slice',
		description = "You know what would go great with this? A pizza.",
		weight = 200,
		usable = true,
		stack = true
	},
	['food_raisins'] = {
		label = 'Raisins',
		description = "Despite their lack of water content, raisins are excellent at adding moisture to your baked goods.",
		weight = 50,
		usable = true,
		stack = true
	},
	['food_raspberry'] = {
		label = 'Raspberry',
		description = "A small carton of really rad berries. Eating too many of these may make your stomach berry unhappy.",
		weight = 150,
		usable = true,
		stack = true
	},
	['food_strawberry'] = {
		label = 'Strawberry',
		description = "Strawberries are actually pseudocarps, also known as 'fake fruit'. Each seed is its own fruit and the so called berry is just a comfy little home for the seeds.",
		weight = 150,
		usable = true,
		stack = true
	},
	['food_watermelon'] = {
		label = 'Watermelon',
		description = "Did you know that the US Department of Agriculture recommends farmers to maintain at least one beehive per acre of watermelons?",
		weight = 5200,
		usable = true,
		stack = false
	},
	['food_watermelonquarter'] = {
		label = 'Quartered Watermelon',
		description = "Is it a fruit? Is it a vegetable? Well, technically it's both!",
		weight = 1300,
		usable = true,
		stack = true
	},

    ['food_watermelonslice'] = {
        label = 'Watermelon Triangle',
        description = "It's not called a watermelon for no good reason! They're made up of 92% water.",
        weight = 325,
        usable = true,
        stack = true
    },

    -- Section: Ingredients-Vegetables
    ['food_avocado'] = {
        label = 'Avocado',
        description = "It is an avocado! Thanks!",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_bellpepper'] = {
        label = 'Bell Peppers',
        description = "The color of the pepper determines how long it has been growing and how sweet it ends up tasting.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_cabbage'] = {
        label = 'Lettuce',
        description = "Lettuce leaf like a tree!",
        weight = 360,
        usable = true,
        stack = true
    },
    ['food_shreddedlettuce'] = {
        label = 'Lettuce Leaves',
        description = "Leaf me alone!",
        weight = 60,
        usable = true,
        stack = true
    },
    ['food_carrot'] = {
        label = 'Carrot',
        description = "Share this with your favorite rabbit in moderation.",
        weight = 75,
        usable = true,
        stack = true
    },
    ['food_celerystalks'] = {
        label = 'Celery Stalk',
        description = "Full of fiber in the form of stringy strands through the stalks.",
        weight = 240,
        usable = true,
        stack = true
    },
    ['food_celerysticks'] = {
        label = 'Celery Sticks',
        description = "Crunchy little snack that pairs well with ranch or peanut butter.",
        weight = 40,
        usable = true,
        stack = true
    },
    ['food_corn'] = {
        label = 'Corn Kernel',
        description = "An edible little yellow seed straight from the cob.",
        weight = 3,
        usable = true,
        stack = true
    },
    ['food_cucumber'] = {
        label = 'Cucumber',
        description = "It's so cuke!",
        weight = 320,
        usable = true,
        stack = true
    },
    ['food_slicedcucumber'] = {
        label = 'Cucumber Slices',
        description = "Perfect for the spa, then, after letting it marinate on your face, the perfect snack.",
        weight = 80,
        usable = true,
        stack = true
    },
    ['food_eggplant'] = {
        label = 'Eggplant',
        description = "An egg-squisite plant, indeed!",
        weight = 600,
        usable = true,
        stack = true
    },
    ['food_greenonion'] = {
        label = 'Scallions',
        description = "Cut these up for the perfect garnish and make any dish look fancier than it started.",
        weight = 120,
        usable = true,
        stack = true
    },
    ['food_jalapeno'] = {
        label = 'Jalapeño',
        description = "The correct pronunciation of jalapeño is: jawhl-ah-puh-noh.",
        weight = 50,
        usable = true,
        stack = true
    },
    ['food_mushrooms'] = {
        label = 'Mushrooms',
        description = "A few Mushrooms for the most fun guys.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_onion'] = {
        label = 'Unyen',
        description = "Put this in the fridge before cutting. Your eyes will thank you.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_slicedonion'] = {
        label = 'Onion Slices',
        description = "I'm not crying, you're crying!",
        weight = 25,
        usable = true,
        stack = true
    },
    ['food_potato'] = {
        label = 'Potato',
        description = "I'm a potato.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_pumpkin'] = {
        label = 'Pumpkin',
        description = "At times these can weigh over 900kg, but lucky for you this one is much smaller. Your noodle arms can handle it.",
        weight = 3500,
        usable = true,
        stack = false
    },
    ['food_slicedpotato'] = {
        label = 'Raw Potato Sticks',
        description = "Starchy little spears.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_spicypepper'] = {
        label = 'Spicy Pepper',
        description = "If you avoid the seeds, you won't suffer-- as much.",
        weight = 50,
        usable = true,
        stack = true
    },
    ['food_tofu'] = {
        label = 'Tofu',
        description = "OOO WEE OOO, killer tofu!",
        weight = 225,
        usable = true,
        stack = true
    },
    ['food_tomato'] = {
        label = 'Tomato',
        description = "You're a tomato.",
        weight = 150,
        usable = true,
        stack = true
    },
    ['food_slicedtomato'] = {
        label = 'Tomato Slices',
        description = "There's about ten thousand different types of tomatoes in the world.",
        weight = 25,
        usable = true,
        stack = true
    },
    -- Section: Ingredients-Meats
    ['food_chick_raw'] = {
        label = 'Raw Chicken',
        description = "A whole raw chicken. You could eat it like a feral beast, but you really should cook it first.",
        weight = 1200,
        usable = true,
        stack = true
    },
    ['food_chick_cooked'] = {
        label = 'Cooked Chicken',
        description = "A whole roast chicken, did you remember to take out the bag of giblets?",
        weight = 1000,
        usable = true,
        stack = false
    },
    ['food_cb_raw'] = {
        label = 'Raw Chicken Breast',
        description = "A raw chicken breast, you should absolutely cook this before consuming in case of Salmonella, which kills about 450 people per year in the US.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_cb_cooked'] = {
        label = 'Cooked Chicken Breast',
        description = "A wonderfully cooked chicken breast. Chicken needs to reach an internal temperature of 165 degrees Farenheit in order to kill possibly harmful bacteria.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_cnuggies_raw'] = {
        label = 'Raw Chicken Nuggets',
        description = "Raw chicken all mashed up and molded together into little bite sized bacterial bombs.",
        weight = 125,
        usable = true,
        stack = true
    },
    ['food_cnuggies_cooked'] = {
        label = 'Cooked Chicken Nuggets',
        description = "Fresh out of the fryer, nice and hot or precooked and frozen solid, how do you like them?",
        weight = 150,
        usable = true,
        stack = true
    },
    ['food_chickenpatty'] = {
        label = 'Cooked Chicken Patty',
        description = "Breaded, seasoned, and fried, it's the tastiest way to eat chicken.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_bs_raw'] = {
        label = 'Raw Beef Steak',
        description = "A heafty slab of raw steak, 100% beef.",
        weight = 800,
        usable = true,
        stack = true
    },
    ['food_bs_cooked'] = {
        label = 'Cooked Beef Steak',
        description = "Just your average steak, no bells or whistles.",
        weight = 700,
        usable = true,
        stack = true
    },
    ['food_gbeef_raw'] = {
        label = 'Raw Ground Beef',
        description = "So much potential for future deliciousness, don't squander this opportunity.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_gbeef_cooked'] = {
        label = 'Cooked Ground Beef',
        description = "You, in fact, have the beef.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_bp_raw'] = {
        label = 'Raw Beef Patty',
        description = "A raw hamburger patty made from minced up beef.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_bp_cooked'] = {
        label = 'Cooked Beef Patty',
        description = "A cooked beef patty. 100% beef, 100% delicious.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_pc_raw'] = {
        label = 'Raw Pork Chop',
        description = "You could eat it as is, but you really should cook it first. Chop, chop hurry it up!",
        weight = 800,
        usable = true,
        stack = true
    },
    ['food_pc_cooked'] = {
        label = 'Cooked Pork Chop',
        description = "Cooked to porkfection.",
        weight = 700,
        usable = true,
        stack = true
    },
    ['food_gpork_raw'] = {
        label = 'Raw Ground Pork',
        description = "Minced up pork, a perfect ingredient.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_gpork_cooked'] = {
        label = 'Cooked Ground Pork',
        description = "All swine in love and war.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_pp_raw'] = {
        label = 'Raw Pork Patty',
        description = "A raw pork patty. You could eat it, but you should cook it first",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_pp_cooked'] = {
        label = 'Cooked Pork Patty',
        description = "Delicious for those who partake in pork consumption.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_baconraw'] = {
        label = 'Raw Bacon',
        description = "Raw piggy to cook with your breakfast. Key word, cook. Best not be eating raw meat.",
        weight = 325,
        usable = true,
        stack = true
    },
    ['food_baconcooked'] = {
        label = 'Cooked Bacon',
        description = "Crunchy or soft bacon? We all know you'll choose wisely.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_slicedham'] = {
        label = 'Sliced Ham',
        description = "Just a little ham from a big pig.",
        weight = 125,
        usable = true,
        stack = true
    },
    ['food_hotdogweiner'] = {
        label = 'Raw Hotdog',
        description = "These puppies are freezing! Pop 'em on the grill, quick!",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_musselsraw'] = {
        label = 'Raw Mussels',
        description = "Damn, nice mussels. You been working out?",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_pepperoni'] = {
        label = 'Pepperoni Slices',
        description = "Similar to salami, just add a little bit of spice.",
        weight = 125,
        usable = true,
        stack = true
    },

    ['food_salami'] = {
        label = 'Salami Slices',
        description = "Generally it's made from pork, and can last a good amount of time out of the refrigerator.",
        weight = 125,
        usable = true,
        stack = true
    },
    ['food_salmonsteakraw'] = {
        label = 'Raw Salmon Steak',
        description = "A sectioned off portion of raw bone-in fish from the salmonidae family.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_salmonfiletraw'] = {
        label = 'Salmon Slab',
        description = "The color of a Salmon or Trout's flesh is directly linked to the fish's diet and can vary from near-white to orange to red.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_fishroe'] = {
        label = 'Red Caviar',
        description = "Fish roe possibly from a species of salmon, trout, or smelt.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_fishroeblack'] = {
        label = 'Black Caviar',
        description = "An imitation caviar that resembles the real thing to give the image of living in luxury.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_fishroecaviar'] = {
        label = 'Black Caviar',
        description = "Fish roe that came from the protected sturgeon species. This is illegal to possess.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_shrimpcocktail'] = {
        label = 'Cocktail Shrimp',
        description = "A cleaned shrimp, ready to be dipped in a tomato cocktail",
        weight = 25,
        usable = true,
        stack = true
    },

    -- Section: Ingredients-Breads, Jams, and Condiments
    ['food_almonds'] = {
        label = 'Almonds',
        description = "Each almond takes about one gallon of water in order to be produced. Truly the thirstiest nut.",
        weight = 30,
        usable = true,
        stack = true
    },
    ['food_peanuts'] = {
        label = 'Peanuts',
        description = "People with peanut allergies aren't all necessarily allergic to tree nuts as well.",
        weight = 30,
        usable = true,
        stack = true
    },
    ['food_peanutbutter'] = {
        label = 'Peanut Butter',
        description = "Smooth or crunchy? Which is the superior choice?",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_pistachio'] = {
        label = 'Pistachio',
        description = "The trees these little green nuts grow on can withstand even severe droughts. Truly the least thirsty nut.",
        weight = 30,
        usable = true,
        stack = true
    },
    ['food_bobapearls'] = {
        label = 'Boba Pearls',
        description = "Clutch these pearls! Squish!",
        weight = 80,
        usable = true,
        stack = true
    },
    ['food_baguette'] = {
        label = 'Baguette',
        description = "Nothing beats a wonderful Baguette, especially when it's fresh and warm.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_sourdough'] = {
        label = 'Sourdough',
        description = "It gets its tangy flavor from capturing wild yeast and bacteria in its environment.",
        weight = 700,
        usable = true,
        stack = true
    },
    ['food_breaditalianloaf'] = { -- not sold in stores, baked by player
        label = 'Bread Loaf',
        description = "The first step to a good sandwich is good bread.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_breadloaf'] = {
        label = 'Sliced Bread Loaf',
        description = "The slices seem even enough.",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_breadslices'] = {
        label = 'Sandwich Bread Slices',
        description = "The superior slices are the two most center pieces. Leave the ends for someone else.",
        weight = 60,
        usable = true,
        stack = true
    },
    ['food_breadroll'] = {
        label = 'Bread Roll',
        description = "A spongy little doughball that is a lot more dense than your typical loaf.",
        weight = 60,
        usable = true,
        stack = true
    },
    ['food_hamburgerbun'] = {
        label = 'Hamburger Bun',
        description = "Slathered in butter to prime it for that greasy burger.",
        weight = 60,
        usable = true,
        stack = true
    },
    ['food_hotdogbun'] = {
        label = 'Hotdog Roll',
        description = "Don't cut it all the way through! Your weiner deserves a nice bread bed.",
        weight = 60,
        usable = true,
        stack = true
    },
    ['food_tortillas'] = {
        label = 'Tortilla',
        description = "Nobody likes a torn-tilla. Technically this is a pancake. Would that make your taco a crepe?",
        weight = 125,
        usable = true,
        stack = true
    },
    ['food_tortillachips'] = {
        label = 'Tortilla Chips',
        description = "Mark your calendars! February 24th is National Tortilla Chip Day!",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_basedough'] = {
        label = 'Bread Dough',
        description = "Packed with yeast to help the dough rise.",
        weight = 1000,
        usable = true,
        stack = true
    },
    ['food_basepasta'] = {
        label = 'Pasta Dough',
        description = "It might be a longer process to make your pasta from scratch, but think about the bragging rights. There's definitely egg in this, so don't sneak any nibbles.",
        weight = 1000,
        usable = true,
        stack = true
    },
    ['food_basepastry'] = {
        label = 'Pastry Dough',
        description = "Sweet dough for making desserts and sweet snacks. There's raw egg, so perhaps skip eating this.",
        weight = 1000,
        usable = true,
        stack = true
    },
    ['food_bagel'] = {
        label = 'Plain Bagel',
        description = "Such a simple food, but such a process to make from scratch.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_cinnamonbun'] = {
        label = 'Cinnamon Bun',
        description = "Cinnamon bun, not to be confused with a cinnamon roll, though both are delicious, especially with a side of frosting.",
        weight = 100,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 20 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
			usetime = 2500,
		},
        degrade = 10080
    },
    ['food_croissant'] = {
        label = 'Plain Croissant',
        description = "Buttery, flakey crust.",
        weight = 50,
        usable = true,
        stack = true
    },
    ['food_icecreamcone'] = {
        label = 'Ice Cream Cone',
        description = "A classic waffle cone! You need to shape the pastry while it's still hot, else it will set and be unable to roll into a cone.",
        weight = 50,
        usable = true,
        stack = true
    },
    ['food_pretzel'] = {
        label = 'Pretzel',
        description = "Grab some mustard or cheese to compliment this savory snack!",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_taiyaki'] = {
        label = 'Plain Taiyaki',
        description = "Tai-yummy in my tummy! :3",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_waffle'] = {
        label = 'Plain Waffle',
        description = "Just a plain waffle, but still delicious.",
        weight = 100,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 15 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
            usetime = 2500,
		},
        degrade = 10080
    },
    ['food_pastapenne'] = {
        label = 'Boxed Penne Pasta',
        description = "A box of Penne pasta, crunchy as is.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_pastaspaghetti'] = {
        label = 'Boxed Spaghetti Pasta',
        description = "A box of Spaghetti pasta, do you break it in half when you cook it?",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_pastatagliatelle'] = {
        label = 'Boxed Tagliatelle Pasta',
        description = "Tagliatelle your friends about this pasta!",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_pastatortellini'] = {
        label = 'Boxed Tortellini Pasta',
        description = "Itsy bitsy teenie weenie Tortellini.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_rice'] = {
        label = 'Boxed Rice',
        description = "A box of dry white rice.",
        weight = 1225,
        usable = true,
        stack = true
    },
    ['food_readyrice'] = {
        label = 'Rice Pouch',
        description = "Heat it up if you want, but you've got some ready to eat rice!",
        weight = 150,
        usable = true,
        stack = true
    },
    ['food_salt'] = {
        label = 'Salt',
        description = "I got some salt in my eye. Now it's sea salt.",
        weight = 15,
        usable = true,
        stack = true
    },
    ['food_cinnamonsticks'] = {
        label = 'Cinnamon Sticks',
        description = "Grind these up and spice up your food.",
        weight = 25,
        usable = true,
        stack = true
    },
    ['food_cinnamonground'] = {
        label = 'Ground Cinnamon',
        description = "Let's just skip the cinnamon challenge. No one likes spicy lungs.",
        weight = 15,
        usable = true,
        stack = true
    },
    ['food_basil'] = {
        label = 'Basil',
        description = "In Ancient Greece, farmers would scream at basil fully believing it caused a successful harvest. Relieve your stress and yell at the basil.",
        weight = 10,
        usable = true,
        stack = true
    },
    ['food_mint'] = {
        label = 'Mint Leaves',
        description = "It's mint to be. If it's not, it will leaf.",
        weight = 10,
        usable = true,
        stack = true
    },
    ['food_rosemary'] = {
        label = 'Rosemary',
        description = "I told my rosemary plant a secret but it said it was no big dill.",
        weight = 10,
        usable = true,
        stack = true
    },
    ['food_sesameseeds'] = {
        label = 'Sesame Seeds',
        description = "A small bowl of sesame seeds, they have a fairly nutty flavor.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_vanilla'] = {
        label = 'Vanilla Bean',
        description = "Vanilla needs to be hand pollinated, which is what leads to the high price of vanilla bean pods.",
        weight = 25,
        usable = true,
        stack = true
    },
    ['food_butter'] = {
        label = 'Butter',
        description = "Add enough of this to anything and it'll be delicious.",
        weight = 125,
        usable = true,
        stack = true
    },
    ['food_milk'] = {
        label = 'Milk',
        description = "Not your mother's milk.",
        weight = 1000,
        usable = true,
        stack = true
    },
    ['food_milkglass'] = {
        label = 'Glass of Milk',
        description = "Pairs great with some cookies and holiday cheer!",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_cream'] = {
        label = 'Cream',
        description = "A rich, thick emulsion of dairy fat available commercially as a white or light yellow colored fluid or it can be whipped into a stable foam for various applications.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_creamcheese'] = {
        label = 'Cream Cheese',
        description = "This is the key ingredient for the famous New York cheesecake.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_sourcream'] = {
        label = 'Sour Cream',
        description = "A tub of sour cream.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_goatcheese'] = {
        label = 'Goat Cheese',
        description = "It's not that bahhhhhd. It's pretty goat.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_mozzarella'] = {
        label = 'Mozzarella',
        description = "Italy is the biggest exporter in the world for mozzarella, sending out about 100,000 tons of the cheese per year. This makes it the third most bought Italian cheese.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_parmesancheese'] = {
        label = 'Parmesan',
        description = "Even though this cheese is dairy, parmesan contains virtually no lactose! This means no upset tummies.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_colbyjack'] = {
        label = 'Colby Jack',
        description = "Two cheeses in one! Well would you look at that marbling.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_cheddarcheese'] = {
        label = 'Cheddar',
        description = "Everything's beddar with cheddar!",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_swisscheese'] = {
        label = 'Swiss',
        description = "Swing and a swiss!",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_slicedcheese'] = {
        label = 'Cheese Slice',
        description = "Slice this! Oh.. you already did.",
        weight = 25,
        usable = true,
        stack = true
    },
    ['food_chocolate'] = {
        label = 'Milk Chocolate Squares',
        description = "These are clearly rectangles, what psycho named these incorrectly? Well whatever, these milk chocolate pieces are perfect for chopping up or melting down in order to make an even more delicious treat.",
        weight = 50,
        usable = true,
        stack = true
    },
    ['food_darkchocolate'] = {
        label = 'Dark Chocolate',
        description = "A chocolate bar with a more pronounced bitter cocoa flavor, boldly deviates from a typical milk chocolate's sweetness. Not very filling on it's own.",
        weight = 50,
        usable = true,
        stack = true
    },
    ['food_coffeepackage'] = {
        label = 'Packaged Coffee Beans',
        description = "Imported coffee beans kept safe and dry from all of the elements that wish it harm. Now you get to be that element and rip them from their safe haven, grinding them up into dust. Devastating!",
        weight = 1000,
        usable = false,
        stack = true
    },
    ['food_coffeebeans'] = {
        label = 'Coffee Beans',
        description = "Only the finest roast will do.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_coffeegrounds'] = {
        label = 'Coffee Grounds',
        description = "Ground one. FIGHT.",
        weight = 25,
        usable = false,
        stack = true
    },
    ['food_eggs2'] = {
        label = 'Carton of Eggs',
        description = "Locally sourced from a cloaca near you.",
        weight = 720,
        usable = false,
        stack = true
    },
    ['food_eggs1'] = {
        label = 'Half a Dozen Eggs',
        description = "I'm a carton half full kinda guy.",
        weight = 360,
        usable = false,
        stack = true
    },
    ['food_egg'] = {
        label = 'Egg',
        description = "It's egg-o-clock somewhere. The preferred raw diet of strongmen, alcoholics, and a variety of reptiles. Clearly a meal of champions, excluding the possible salmonella of course.",
        weight = 60,
        usable = true,
        stack = true
    },
    ['food_flour'] = {
        label = 'Flour',
        description = "Finally, a legal white substance that can mess up my night.",
        weight = 2000,
        usable = true,
        stack = true
    },
    ['food_flourcup'] = {
        label = 'Cup of Flour',
        description = "Finally, a legal white substance that can mess up my night, now in a more manageable portion!",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_sugar'] = {
        label = 'Sugar',
        description = "Set your teeth free from the prison that is your gums, they've been loyal to you all these years yet you still confine them to your flesh. Why?",
        weight = 1500,
        usable = true,
        stack = true
    },
    ['food_sugarcup'] = {
        label = 'Cup of Sugar',
        description = "Set your teeth free from the prison that is your gums, they've been loyal to you all these years yet you still confine them to your flesh. Why?",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_simplesyrup'] = {
        label = 'Simple Syrup',
        description = "Sugar water that has been boiled into the perfect sweet syrup. Too much of this might rot your teeth out, so be sure to brush those pearly whites daily. Dental health is no joke!",
        weight = 340,
        usable = true,
        stack = true
    },
    ['food_frosting'] = {
        label = 'Frosting',
        description = "You could eat this straight out of the bowl you mixed it in, who needs cake when this is clearly the main course?",
        weight = 450,
        usable = true,
        stack = true
    },
    ['food_honey'] = {
        label = 'Honey',
        description = "Sourced from a vital part of our ecosystems, the pollinators. Without these bees' constant hard work, life would struggle to thrive. Also, we wouldn't be able to appreciate their sweet, sweet regurgitated treasure that is this honey. ",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_icecube'] = {
        label = 'Ice Cube',
        description = "Perfect for drinks and cooling things down on a hot day.",
        weight = 30,
        usable = true,
        stack = true
    },
    ['food_icetray'] = {
        label = 'Ice Tray',
        description = "Water you doing being this ice cold?",
        weight = 125,
        usable = false,
        stack = true
    },
    ['food_jamberry'] = {
        label = 'Grape Preserves',
        description = "A grape choice for your PB & J sandwich.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_jamcherry'] = {
        label = 'Cherry Preserves',
        description = "Perfect spread for toast and breakfast pastries. Spread generously!",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_jamorange'] = {
        label = 'Orange Preserves',
        description = "Using every part of the orange, even the peel.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_jampear'] = {
        label = 'Pear Preserves',
        description = "Pear Jam, my dad's favorite band!",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_jamstrawberry'] = {
        label = 'Strawberry Preserves',
        description = "Add too much sugar when making your preserves? Add a bit of lemon juice to balance it out.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_maplesyrup'] = {
        label = 'Maple Syrup',
        description = "Canada's finest reserve. Almost 10,000 barrels of maple syrup were stolen in Canada over several months back in 2011-2012. This was one of the most valuable and delicious heists in Canadian history.",
        weight = 900,
        usable = true,
        stack = true
    },
    ['food_maplesyrupcup'] = {
        label = 'Cup of Maple Syrup',
        description = "A small portion of sugary tree sap.",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_garlicbechamel'] = {
        label = 'Garlic Bechamel Sauce',
        description = "This can be used on its own or be the base for more complex sauces.",
        weight = 1400,
        usable = true,
        stack = true
    },
    ['food_marinara'] = {
        label = 'Marinara Sauce',
        description = "A red tomato sauce with Italian spices and garlic to top your favorite dish.",
        weight = 1400,
        usable = true,
        stack = true
    },
    ['food_matchapowder'] = {
        label = 'Matcha Powder',
        description = "It is made by grinding the entire green tea leaf into a fine powder.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_mayo'] = {
        label = 'Mayo Jar',
        description = "Mayonnaise, an integral part of any functioning orchestra.",
        weight = 700,
        usable = true,
        stack = true
    },
    ['food_mayocup'] = {
        label = 'Mayo Cup',
        description = "A perfect dip or topping for those of us with a desire for something wet, creamy, or bland. Those eggs deserve better and you know it.",
        weight = 50,
        usable = true,
        stack = true
    },
    ['food_ketchupcup'] = {
        label = 'Ketchup Cup',
        description = "Ketchup comes out of a bottle at .028mph. If it does not meet that speed the factory rejects it!",
        weight = 50,
        usable = true,
        stack = true
    },
    ['food_mustard'] = {
        label = 'Mustard Jar',
        description = "A jar full of mustard, the worldwide leading spice.",
        weight = 700,
        usable = true,
        stack = true
    },
    ['food_mustardcup'] = {
        label = 'Mustard Cup',
        description = "You mustard-mit, this belongs on all hotdogs.",
        weight = 50,
        usable = true,
        stack = true
    },
    ['food_soysauce'] = {
        label = 'Soy Sauce',
        description = "A bottle of soy sauce that will pair well with raw fish.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_soysaucecup'] = {
        label = 'Cup of Soy Sauce',
        description = "Pairs well with raw fish.",
        weight = 25,
        usable = true,
        stack = true
    },
    ['food_wasabi'] = {
        label = 'Wasabi',
        description = "The likelihood of you getting true wasabi is unlikely outside of Japan. Most of the wasabi you know is just horseraddish and mustard.",
        weight = 75,
        usable = true,
        stack = true
    },
    ['food_misopaste'] = {
        label = 'Miso Paste',
        description = "As long as you love miso. Let it snow, let it snow, let it snow.",
        weight = 700,
        usable = true,
        stack = true
    },
    ['food_oats'] = {
        label = 'Oats',
        description = "Use in your oatmeal cookies or to treat that itchy poison ivy! So versatile.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_oil1'] = {
        label = 'Cooking Oil',
        description = "Used in the cooking and preparation of food for consumption, cooking oil comes from a vast assortment of places. From numerous plants, animals, or even synthetic compounds, these fats are essential to any chef.",
        weight = 1360,
        usable = true,
        stack = true
    },
    ['food_oilcookingcup'] = {
        label = 'Cup of Cooking Oil',
        description = "Used in the cooking and preparation of food for consumption, cooking oil comes from a vast assortment of places. From numerous plants, animals, or even synthetic compounds, these fats are essential to any chef.",
        weight = 272,
        usable = true,
        stack = true
    },
    ['food_oil2'] = {
        label = 'Olive Oil',
        description = "An extremely flavourful cooking oil. Olive it so much. ",
        weight = 1360,
        usable = true,
        stack = true
    },
    ['food_oilolivecup'] = {
        label = 'Cup of Olive Oil',
        description = "An extremely flavourful cooking oil. Olive it so much. ",
        weight = 272,
        usable = true,
        stack = true
    },
    ['food_olivejar2'] = {
        label = 'Black Olives',
        description = "A jar of O'Lively Black Olives.",
        weight = 700,
        usable = true,
        stack = true
    },
    ['food_slicedblackolives'] = {
        label = 'Sliced Black Olives',
        description = "Olive juice.",
        weight = 10,
        usable = true,
        stack = true
    },
    ['food_olivejar'] = {
        label = 'Green Olives',
        description = "A jar of O'Lively Green Olives.",
        weight = 700,
        usable = true,
        stack = true
    },
    ['food_slicedgreenolives'] = {
        label = 'Sliced Green Olives',
        description = "Olive juice you too.",
        weight = 10,
        usable = true,
        stack = true
    },

    ['food_pickle'] = {
        label = 'Pickle Jar',
        description = "Have you been gerkin from home or have you been gerkin from the office?",
        weight = 700,
        usable = true,
        stack = true
    },
    ['food_pickleslices'] = {
        label = 'Pickle Slices',
        description = "A tangy and dill-lightful snack.",
        weight = 10,
        usable = true,
        stack = true
    },

    -- Section: Soup
    ['food_chickensoup'] = {
        label = 'Chicken Soup',
        description = "Heat this up and you've got some delicious chicken soup.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_peahamsoup'] = {
        label = 'Pea & Ham Soup',
        description = "Ham it up sweet pea, you're a soup-er star.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_pumpkinsoup'] = {
        label = 'Pumpkin Soup',
        description = "The perfect soup for the Autumn season.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_tomsoup'] = {
        label = 'Tomato Soup',
        description = "Goes great with a freshly made grilled cheese.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_veggiesoup'] = {
        label = 'Veggie Soup',
        description = "Heat this up and you've got some delicious vegetable soup.",
        weight = 400,
        usable = true,
        stack = true
    },

    -- Section: Convenience Store Items

    ['food_applecaramel'] = {
        label = 'Caramel Apple',
        description = "A healthy snack drowned in sticky caramel. That's still healthy, right?",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_candycane'] = {
        label = 'Candy Canes',
        description = "A few peppermint candy canes that you can eat or just hang on a pine tree.",
        weight = 100,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 20 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_choc_meto`, pos = vec3(0.02, 0.00, 0.01), rot = vec3(0.0,  -0.5, -1.5) },
            usetime = 3000,
		},
        degrade = 10080
    },
    ['food_candycanerainbow'] = {
        label = 'Rainbow Candy Cane',
        description = "A colorful candy cane with a hint of mint.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_candycorn'] = {
        label = 'Candy Corn',
        description = "A handful of waxy candies. Somehow they continue to come back every year, but does anyone actually like them?",
        weight = 50,
        usable = true,
        stack = true
    },
    ['food_cottoncandyrainbow'] = {
        label = 'Rainbow Cotton Candy',
        description = "A sugary rainbow cloud on a stick. ",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_taffyrainbowsour'] = {
        label = 'Sour Rainbow Taffy',
        description = "Sweet, sour, and soon to be stuck in between all of your teeth.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_chips_bbq'] = {
        label = 'BBQ Chips',
        description = "Grab a bag of BBQ chips and kick your feet up.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_chips_bbqhoney'] = {
        label = 'Honey BBQ Chips',
        description = "The best version of BBQ chips are the sweetest.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_chips_chonion'] = {
        label = 'Cheese Onion Chips',
        description = "Cheese, onion, and potato, what could be better?",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_chips_classic'] = {
        label = 'Classic Chips',
        description = "Classic potato chips, the perfect companion to loafing on the couch.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_chips_saltvin'] = {
        label = 'Salt & Vinegar Chips',
        description = "Quick snack bag of salt and vinegar chips.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_chipscan_cheese'] = {
        label = 'Cheese Flavored Potato Snack',
        description = "A tube full of cheese flavored potato-based snacks. No cheese was used in the making of this product.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_chipscan_chili'] = {
        label = 'Hot Chili Potato Snack',
        description = "A tube full of hot chili flavored potato-based snacks. Not for the faint of heart.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_chipscan_mushroom'] = {
        label = 'Mushroom Potato Snack',
        description = "A tube full of mushroom flavored potato-based snacks. There won't be mushroom for more after this.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_chipscan_paprika'] = {
        label = 'Paprika Potato Snack',
        description = "A tube full of paprika flavored potato-based snacks.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_chipscan_chive'] = {
        label = 'Chive Potato Snack',
        description = "A tube full of chive flavored potato-based snacks. Chive to achieve more in life.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_chipscan_crab'] = {
        label = 'Crab Potato Snack',
        description = "A tube full of crab flavored potato-based snacks. Crabtastic!",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_terryits'] = {
        label = 'Terry-It',
        description = "The classic cheddar cheese flavor of Terry-It, a perfect snack on the go!",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_icecreampackchoco'] = {
        label = 'Super Choco Ice Cream Sandwich Pack',
        description = "Chocolate ice cream with a crunchy chocolate shell with chocolate chunks scattered throughout, sandwiched between two flat ice cream cones. You can taste the freezer burn.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_icecreampackvan'] = {
        label = 'Vanilla Ice Cream Sandwich Pack',
        description = "The light taste of vanilla is definitely overpowered by the freezer burn.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_icecreampackstraw'] = {
        label = 'Strawberry Ice Cream Sandwich Pack',
        description = "Artificially flavored for your nostalgia.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_popsiclechocolate'] = {
        label = 'Chocolate Vanilla Popsicle',
        description = "A vanilla popsicle with a cheap chocolate shell.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_popsiclepineapple'] = {
        label = 'Tropical Pineapple Popsicle',
        description = "Tastes like what sunscreen smells like!",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_popsiclerainbow'] = {
        label = 'Rainbow Popsicle',
        description = "A fun multicolor popsicle to brighten your day.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_icecreamtub'] = {
        label = 'Ice Cream Base',
        description = "It's all about that base, bout that base. Are you down to mix it up!?",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_icecreamtubchocolate'] = {
        label = 'Chocolate Ice Cream Tub',
        description = "A pint of rich chocolate ice cream.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_paper_cup`, pos = vec3(0.01, 0.01, 0.01), rot = vec3(180.0,  -180.5, -190.5) },
			usetime = 3500,
		},
        degrade = 20160
    },
    ['food_icecreamtubstrawberry'] = {
        label = 'Strawberry Ice Cream Tub',
        description = "A pint of strawberry ice cream with chunks of fresh fruit. Berry delicious!",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_paper_cup`, pos = vec3(0.01, 0.01, 0.01), rot = vec3(180.0,  -180.5, -190.5) },
			usetime = 3500,
		},
        degrade = 20160
    },
    ['food_icecreamtubvanilla'] = {
        label = 'Vanilla Ice Cream Tub',
        description = "A pint of vanilla ice cream, would go great with a warm chocolate chip cookie or slice of cherry pie.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 25 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_paper_cup`, pos = vec3(0.01, 0.01, 0.01), rot = vec3(180.0,  -180.5, -190.5) },
			usetime = 3500,
		},
        degrade = 20160
    },
    ['food_moonpies'] = {
        label = 'Chocolate Marshmallow Pies',
        description = "An airy delight of spongy chocolate cake layers with a chewy marshmallow center.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_pocky'] = {
        label = 'Almond Crush Chocolate Sticks',
        description = "While these crunchy chocolate sticks didn't grow on trees, both the cacao and the almonds used to make them did!",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_mints'] = {
        label = 'Sugar Free Mints',
        description = "If you aren't gonna brush your teeth, the least you can do is use these when in the company of others.",
        weight = 25,
        usable = true,
        stack = true
    },
    ['food_gumwatermelon'] = {
        label = 'Watermelon Gum',
        description = "Fruity flavor to tantilize your tastebuds, a little sweet, a little sour, a perfect chew.",
        weight = 25,
        usable = true,
        stack = true
    },
    ['food_gumstrawberry'] = {
        label = 'Strawberry Gum',
        description = "Straight from the strawberry patch, dentist recognized, smile approved.",
        weight = 25,
        usable = true,
        stack = true
    },
    ['food_gumbluebarrybanana'] = {
        label = 'Blueberry Banana Gum',
        description = "This longlasting Fresh Gum focuses on the perfect mouth feel and complex flavor to keep you smelling fine and fruity.",
        weight = 25,
        usable = true,
        stack = true
    },

    ['poison_vial'] = {
        label = 'Poison Vial',
        description = "A vial of a stange green liquid.",
        weight = 50,
        usable = true,
        stack = false
    },
    ['antidote'] = {
        label = 'Antidote',
        description = "The antidote. But to what? Ahh shit.. Might aswell. Can't hurt right?",
        weight = 50,
        usable = true,
        stack = false
    },

    -- Section: Burger Shot

    ['food_bswrapgoatcheese'] = {
        label = 'Beef Wrap',
        description = "Yum, time for Beef Wrap!",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_bswrapchicken'] = {
        label = 'Chicken Wrap',
        description = "Yum, time for Chicken Wrap!",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_bsbleeder'] = {
        label = 'The Bleeder',
        description = "So good, it's even risky.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_bsprickly'] = {
        label = 'Burger Shot Chicken Parm',
        description = "Yum! A Chicken Parm, Burger?",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_bscoffee'] = {
        label = 'Burger Shot Coffee',
        description = "A to-go cup of coffee from Burger Shot.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_bscombobleeder'] = {
        label = 'The Bleeder Combo',
        description = "The Bleeder, fresh fries and a drink from Burger Shot.",
        weight = 1050,
        usable = true,
        stack = true
    },
    ['food_bscombodlux'] = {
        label = 'Double Shot D-Lux Combo',
        description = "The Double Shot D-Lux, fries, and a drink from Burger Shot.",
        weight = 1050,
        usable = true,
        stack = true
    },
    ['food_bscomboheartstopper'] = {
        label = 'Heart Stopper Combo',
        description = "The Heart Stopper, fries and a drink from Burger Shot.",
        weight = 3250,
        usable = true,
        stack = true
    },
    ['food_bscombomeatfree'] = {
        label = 'Meat Free Combo',
        description = "A Meat Free Burger, fries and a drink from Burger Shot.",
        weight = 1050,
        usable = true,
        stack = true
    },
    ['food_bscombomoneyshot'] = {
        label = 'Money Shot Combo',
        description = "The Money Shot burger, fries and a drink from Burger Shot.",
        weight = 1050,
        usable = true,
        stack = true
    },
    ['food_bscombotorpedo'] = {
        label = 'Torpedo Meal',
        description = "The torpedo and a drink from Burger Shot.",
        weight = 800,
        usable = true,
        stack = true
    },
    ['food_bstorpedo'] = {
        label = 'Torpedo',
        description = "A single Burger Shot Torpedo, launch it right into your gut!",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_bssoda'] = {
        label = 'Burger Shot Drink',
        description = "A drink brought to you by Burger Shot.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_bsfries'] = {
        label = 'Burger Shot Fries',
        description = "Fries from Burger Shot.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_bsdoubleshot'] = {
        label = 'Double Shot',
        description = "A Double Shot Burger from Burger Shot.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_bs6lb'] = {
        label = 'Heart Stopper',
        description = "A Heart Stopper Burger from Burger Shot.",
        weight = 2500,
        usable = true,
        stack = true
    },
    ['food_bssimply'] = {
        label = 'Meat Free Burger',
        description = "A Meat Free Burger from Burger Shot.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_bsglorious'] = {
        label = 'Money Shot Burger',
        description = "A Money Shot Burger from Burger Shot.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_bsicecreammeteorite'] = {
        label = 'Meteorite Ice Cream',
        description = "A Meteorite Ice Cream Sundae, crunch into a comet.",
        weight = 300,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 30, hunger = 0 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_ret_fh_bscup`, pos = vec3(0.09, 0.09, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 2500,
		},
        degrade = 10080
    },
    ['food_bsicecreamtang'] = {
        label = 'Orang-o-Tang Ice Cream',
        description = "An Orang-o-Tang Ice Cream Sundae, a classic creamsicle flavor.",
        weight = 300,
        usable = true,
        stack = true
    },

    -- Section: Up N Atom

    ['food_uachilidog'] = {
        label = 'Up-n-Atom Chili Dog',
        description = "A messy hotdog slathered with chili, specially crafted by Up-N-Atom.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = -5, hunger = 55 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_cs_hotdog_01`, pos = vec3(0.03, 0.04, -0.03), rot = vec3(-45.0,  -90.5, -1.5) },
            usetime = 3500,
		},
        degrade = 7200
    },
    ['food_uatriplecheesybeef'] = {
        label = 'The Triple Cheesy',
        description = "Cheesy, melty triple burger from Up-N-Atom.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = -5, hunger = 55 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_cs_burger_01`, pos = vec3(0.01, 0.04, 0.0), rot = vec3(0.0,  0.0, 0.0) },
			usetime = 3500,
		},
        degrade = 7200
    },
    ['food_uatriplecheesybacon'] = {
        label = 'Triple Cheesy Bacon',
        description = "A cheesy bacon sandwich from Up-N-Atom. It’s stuffed with more bacon than you could have ever imagined would make it into a sandwich.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = -8, hunger = 55 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_cs_burger_01`, pos = vec3(0.01, 0.04, 0.0), rot = vec3(0.0,  0.0, 0.0) },
			usetime = 3500,
		},
        degrade = 7200
    },
    ['food_uatriplecheesybeefbacon'] = {
        label = 'Triple Cheesy Bacon & Beef',
        description = "Cheesy, melty triple burger from Up-N-Atom stuffed with several strips of bacon.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = -5, hunger = 70 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_cs_burger_01`, pos = vec3(0.01, 0.04, 0.0), rot = vec3(0.0,  0.0, 0.0) },
			usetime = 3500,
		},
        degrade = 7200
    },
    ['food_uatriplecheesychicken'] = {
        label = 'Triple Cheesy Chicken',
        description = "Cheesy, melty triple chicken sandwich from Up-N-Atom stuffed with several strips of bacon.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = -5, hunger = 60 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_cs_burger_01`, pos = vec3(0.01, 0.04, 0.0), rot = vec3(0.0,  0.0, 0.0) },
			usetime = 3500,
		},
        degrade = 7200
    },
    ['food_uacoffee'] = {
        label = 'Up-N-Atom Coffee',
        description = "A to-go cup of coffee from Up-n-Atom.",
        weight = 400,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 40, hunger = 0 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_bs_coffee`, pos = vec3(0.02, 0.02, -0.03), rot = vec3(-20.0,  0.5, -45.0) },
			usetime = 2500,
		},
        degrade = 7200
    },
    ['food_uasoda'] = {
        label = 'Up-N-Atom Drink',
        description = "A drink brought to you by Up-N-Atom.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 50, hunger = 0 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base' },
			prop = { model = `prop_cs_bs_cup`, pos = vec3(0.09, 0.09, 0.03), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 2500,
		},
        degrade = 7200
    },
    ['food_uamilk'] = {
        label = 'Up-N-Atom Milk',
        description = "A milk bottle sold by Up-N-Atom. It tastes a little sweet.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 25, hunger = 5 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base' },
			prop = { model = `prop_cs_bs_cup`, pos = vec3(0.09, 0.09, 0.03), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 2500,
		},
        degrade = 7200
    },
    ['food_uashakechoc'] = {
        label = 'Chocolate Milkshake',
        description = "An old fashioned chocolate milkshake from Up-n-Atom.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 35, hunger = 5 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_ret_fh_bscup`, pos = vec3(0.09, 0.09, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 3500,
		},
        degrade = 7200
    },
    ['food_uashakestrawb'] = {
        label = 'Strawberry Milkshake',
        description = "A lighter tasting strawberry milkshake from Up-n-Atom.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 35, hunger = 5 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_ret_fh_bscup`, pos = vec3(0.09, 0.09, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 3500,
		},
        degrade = 7200
    },
    ['food_uashakevan'] = {
        label = 'Vanilla Milkshake',
        description = "The classic vanilla milkshake for you to enjoy from Up-n-Atom.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 35, hunger = 5 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_ret_fh_bscup`, pos = vec3(0.09, 0.09, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 3500,
		},
        degrade = 7200
    },
    ['food_uafries'] = {
        label = 'Up-N-Atom Fries',
        description = "Salty fries from Up-N-Atom.",
        weight = 250,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 25, hunger = -3 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_food_chips`, pos = vec3(0.03, -0.02, -0.03), rot = vec3(-90.0, 0.5, 60.5) },
			usetime = 2500,
		},
        degrade = 7200
    },

    -- Section: Barny's

    ['food_barnydrink'] = {
        label = 'Barny’s Beverage',
        description = "A Barny’s branded beverage cup.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_barnyfries'] = {
        label = 'Barny’s Curly Fries',
        description = "Curly like a hog's tail, will take you straight to the Barny’s yard.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_barnysticks'] = {
        label = 'Barny’s Bull Sticks',
        description = "Fried mozzarella on a stick paired with that delectible Seahorse Sauce, a Barny’s trademark.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_barnypoppers'] = {
        label = 'Barny’s Jalapeno Pops',
        description = "Creamcheese stuffed jalapenos fried and served on a stick, complimented by the complex flavor of Barny’s signature Rodeo Rumble sauce.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_barnymeatcurtain'] = {
        label = 'Barny’s Meat Curtain',
        description = "Satisfy your lips with Barny’s Meat Curtain. Layers of meat slathered in oozing cheddar with just the right amount of signature sauce.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_barnymeatcurtainmega'] = {
        label = 'Barny’s Mega Meat Curtain',
        description = "For those of you who demand more, we present the Mega Meat Curtain. All the oozing cheddar goodness you crave smeared between even more layers of Barny’s succulent meaty folds.",
        weight = 1000,
        usable = true,
        stack = true
    },
    ['food_sundaecoffeechip'] = {
        label = 'Cafe Chip Sundae',
        description = "Frozen coffee chocolate chip extravagance. No matter when or where you are, it's a fun day for a sundae, so chip to it!",
        weight = 300,
        usable = true,
        stack = true
    },

    -- Section: Cluckin Bell

    ['food_cluckinballs'] = {
        label = 'Cluckin Balls',
        description = "Cluckin Balls, Mmm Tasty!",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_cluckinburger'] = {
        label = 'Cluckin Fowl Burger',
        description = "The original Cluckin Burger with cheese.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_cluckincoffee'] = {
        label = 'Cluckin Coffee',
        description = "A to-go cup of coffee from Cluckin Bell.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_cluckinmealballsnrings'] = {
        label = 'Cluckin Balls & Rings Combo',
        description = "Cluckin Balls with Rings combo meal.",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_cluckinecola'] = {
        label = 'Cluckin Drink',
        description = "A drink from Cluckin Bell.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_cluckinfries'] = {
        label = 'Cluckin Fries',
        description = "Fries from Cluckin Bell.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_cluckincluckinhuge'] = {
        label = 'Cluckin Huge Combo',
        description = "Some Cluckin Balls, Cluckin Rings, a Cluckin Burger, fries, and a drink.",
        weight = 1300,
        usable = true,
        stack = true
    },
    ['food_cluckinrings'] = {
        label = 'Cluckin Rings',
        description = "Cluckin Rings from Cluckin Bell.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_cluckinsalad'] = {
        label = 'Cluckin Salad',
        description = "A salad from Cluckin Bell",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_cluckymeal'] = {
        label = 'Clucky Meal',
        description = "A Clucky Meal from Cluckin Bell.",
        weight = 600,
        usable = true,
        stack = true
    },
    ['food_cluckinmealfarmerssurprise'] = {
        label = 'Farmers Surprise',
        description = "Guess the bodyparts!",
        weight = 1200,
        usable = true,
        stack = true
    },

    ['food_cluckinmealfowlburger'] = {
        label = 'Fowl Burger Meal',
        description = "It's just like chicken!",
        weight = 550,
        usable = true,
        stack = true
    },
    ['food_cluckinmeallittleclucker'] = {
        label = 'Little Clucker Meal',
        description = "A kid's meal that even you can eat!",
        weight = 750,
        usable = true,
        stack = true
    },
    ['food_cluckinmeallittlepeckers'] = {
        label = 'Little Peckers Meal',
        description = "A kid's meal can be for adults too!",
        weight = 1200,
        usable = true,
        stack = true
    },
    ['food_cluckinmealveggy'] = {
        label = 'Cluckin Salad Combo',
        description = "A Cluckin Salad with a drink.",
        weight = 750,
        usable = true,
        stack = true
    },
    ['food_cluckinmealwingpiece'] = {
        label = 'Wing Piece Meal',
        description = "A Wing Piece Meal from Cluckin Bell.",
        weight = 1300,
        usable = true,
        stack = true
    },

    -- Section: Al Dente

    ['food_drinkitalian'] = {
        label = 'Fast Food Drink',
        description = "Usually filled with soda.. or pop. Whatever you want to call it.",
        weight = 500,
        usable = true,
        stack = true
    },

    -- Section: Craft Results/Recipe Results

    ['food_avocadotoast'] = {
        label = 'Avocado Toast',
        description = "It's not hipster, it's avocado toast.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_bao'] = {
        label = 'Beef Bao',
        description = "A steamed bun filled with savory and flavorful minced or shredded beef.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_bao2'] = {
        label = 'Chicken Bao',
        description = "A steamed bun filled with tender and seasoned shredded or minced chicken",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_bao3'] = {
        label = 'Pork Bao',
        description = "A steamed bun filled with tender and spiced shredded or minced pork",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_bao4'] = {
        label = 'Shrimp Bao',
        description = "A steamed bun filled with fresh cleaned and seasoned shrimp",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_bao5'] = {
        label = 'Vegetarian Bao',
        description = "A steamed bun filled with a delicious mix of veggies.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_bao6'] = {
        label = 'Red Bean Bao',
        description = "A fluffy sweet bun filled with a delightful red bean paste.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_bolognese'] = {
        label = 'Bolognese',
        description = "Bolognese is a savory Italian meat sauce with ground meat, tomatoes, and aromatics, often served with pasta",
        weight = 750,
        usable = true,
        stack = true
    },
    ['food_cupcakerainbow'] = {
        label = 'Rainbow Cupcake',
        description = "Rainbows form when water droplets refract the light from the sun. Even if you personally cannot naturally perceive a rainbow in its entirety, all true rainbows manifest as fully circular.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_cupcakeamerica'] = {
        label = 'Patriotic Cupcake',
        description = "Sparklers not included, but highly encouraged.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_cupcakeeyeball'] = {
        label = 'Eyeball Cupcake',
        description = "An oozy candy eyeball atop this spoopy treat.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_cupcakepink'] = {
        label = 'Pink Frosted Cupcake',
        description = "A vanilla cupcake with sweet, pink frosting and topped with a cherry.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_cupcakepumpkin'] = {
        label = 'Pumpkin Cupcake',
        description = "A sweet, spiced snack to put you in a cozy autumn mood.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_cupcakechristmastree'] = {
        label = 'Holiday Tree Cupcake',
        description = "A simple snack dressed up like a holiday tree.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_cupcakeheart'] = {
        label = 'Valentine Cupcake',
        description = "A chocolate cupcake topped with frosting and a chocolate heart.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_bundtfrostedchocolate'] = {
        label = 'Mini Chocolate Bundt Cake',
        description = "Frosted with a sweet glaze that does nothing to help your New Years resolution.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_bundtfrostedcinnamon'] = {
        label = 'Mini Cinnamon Bundt Cake',
        description = "Frosted with a sweet glaze that does nothing to help your New Years resolution.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_cakepopsantabelt'] = {
        label = 'Santa Suit Cake Pop',
        description = "Filled with chocolate cake.",
        weight = 150,
        usable = true,
        stack = true
    },
    ['food_cakepoppinksprinkle'] = {
        label = 'Pink Sprinkle Cake Pop',
        description = "Filled with chocolate cake.",
        weight = 150,
        usable = true,
        stack = true
    },
    ['food_cakepoppinkswirl'] = {
        label = 'Pink Swirl Cake Pop',
        description = "Filled with vanilla cake.",
        weight = 150,
        usable = true,
        stack = true
    },
    ['food_cakepopsantahat'] = {
        label = 'Santa Hat Cake Pop',
        description = "Filled with vanilla cake.",
        weight = 150,
        usable = true,
        stack = true
    },
    ['food_cakepopsnowman'] = {
        label = 'Snowman Cake Pop',
        description = "Filled with vanilla cake.",
        weight = 150,
        usable = true,
        stack = true
    },
    ['food_cakepoptree'] = {
        label = 'Holiday Tree Cake Pop',
        description = "Filled with chocolate cake.",
        weight = 150,
        usable = true,
        stack = true
    },
    ['food_cakepopwitchy'] = {
        label = 'Witchy Cake Pop',
        description = "Filled with chocolate cake.",
        weight = 150,
        usable = true,
        stack = true
    },
    ['food_cakepopghost'] = {
        label = 'Ghostly Cake Pop',
        description = "Filled with vanilla cake.",
        weight = 150,
        usable = true,
        stack = true
    },
    ['food_cakepoppumpkin'] = {
        label = 'Pumpkin Cake Pop',
        description = "Filled with pumpkin cake.",
        weight = 150,
        usable = true,
        stack = true
    },
    ['food_cakerainbowslice'] = {
        label = 'Rainbow Cake Slice',
        description = "A tall rainbow cake slice to tantilize your tastebuds. The less edible, but more iconic, rainbow flag made its pride debut on June 25, 1978 and its original design is accredited to Gilbert Baker. Throughout the years this international symbol of LGBTQ+ pride has seen many changes.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_cakeelegantslice'] = {
        label = 'Elegant Cake Slice',
        description = "A portion of a large fancy cake. What are you celebrating?",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_cakeelegant'] = {
        label = 'Elegant Cake',
        description = "A sweet cake covered in frosting, edible flowers, and sprinkles disguised as pearls.",
        weight = 5500,
        usable = true,
        stack = false
    },
    ['food_piecherry'] = {
        label = 'Cherry Pie Slice',
        description = "A slice of homemade cherry pie, perfect with some vanilla ice cream!",
        weight = 300,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
            usetime = 3000,
        },
        degrade = 8640
    },
    ['food_piestrawberrycream'] = {
        label = 'Strawberry Cream Pie Slice',
        description = "Covered in a layer of fresh cut strawberries.",
        weight = 300,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
            usetime = 3000,
        },
        degrade = 8640
    },
    ['food_piebananacream'] = {
        label = 'Banana Cream Pie Slice',
        description = "Creamy banana pudding on top of a layer of sweet vanilla cream.",
        weight = 300,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
            usetime = 3000,
        },
        degrade = 8640
    },
    ['food_pieapple'] = {
        label = 'Apple Pie Slice',
        description = "Filled with a variety of crisp apples and cinnamon.",
        weight = 300,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
            usetime = 3000,
        },
        degrade = 8640
    },
    ['food_piepumpkin'] = {
        label = 'Pumpkin Pie Slice',
        description = "A soft and sweet spiced pie made with pumpkin puree.",
        weight = 300,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
            usetime = 3000,
        },
        degrade = 8640
    },
    ['food_piehandapple'] = {
        label = 'Apple Hand Pie',
        description = "Tastes like American patriotism. You decide if that means it's good or bad.",
        weight = 300,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
            usetime = 3000,
        },
        degrade = 8640
    },
    ['food_piehandberry'] = {
        label = 'Blueberry Hand Pie',
        description = "This should cheer up even the bluest of berries.",
        weight = 300,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
            usetime = 3000,
        },
        degrade = 8640
    },
    ['food_piehandcherry'] = {
        label = 'Cherry Hand Pie',
        description = "A perfect self-contained treat able to fit right in the palm of your hand. It's cherry good.",
        weight = 300,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
            usetime = 3000,
        },
        degrade = 8640
    },
    ['food_piehandkiwi'] = {
        label = 'Kiwi Hand Pie',
        description = "A sweet fruity treat with a bit of lime this time.",
        weight = 300,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
            prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
            usetime = 3000,
        },
        degrade = 8640
    },
    ['food_strawberrycreamsanta'] = {
        label = 'Santa Strawberry',
        description = "A cute fruit dessert modeled after the big man himself.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_strawberrychocolate'] = {
        label = 'Chocolate Covered Strawberries',
        description = "Rumor has it that if you split a chocolate covered strawberry with someone, you'll fall in love. Hopefully they do too or that could get real awkward.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_cookieschristmasapple'] = {
        label = 'Holiday Apple Butter Cookies',
        description = "Holiday butter cookies with apple filling.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_cookieschristmascherry'] = {
        label = 'Holiday Cherry Butter Cookies',
        description = "Holiday butter cookies with cherry filling.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_cookieschristmaslemon'] = {
        label = 'Holiday Lemon Butter Cookies',
        description = "Holiday butter cookies with lemon filling.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_cookieschristmasraspberry'] = {
        label = 'Holiday Raspberry Butter Cookies',
        description = "Holiday butter cookies with raspberry filling.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_cookiessandwiches'] = {
        label = 'Butter Chocolate Sandwich Cookies',
        description = "A few butter chocolate sandwich cookies.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_cookieschocolatechip'] = {
        label = 'Chocolate Chip Cookies',
        description = "Grab a cold glass of milk for the perfect partner to some fresh baked cookies!",
        weight = 100,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 20 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_crisp`, pos = vec3(0.03, 0.01, 0.00), rot = vec3(0.0,  -180.5, -1.5) },
			usetime = 2500,
		},
        stack = 20,
        degrade = 14400
    },
    ['food_cookieschocolate'] = {
        label = 'Chocolate Lovers Cookies',
        description = "For when you require more chocolate, nay, all of the chocolate.",
        weight = 100,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 20 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_crisp`, pos = vec3(0.03, 0.01, 0.00), rot = vec3(0.0,  -180.5, -1.5) },
			usetime = 2500,
		},
        stack = 20,
        degrade = 14400
    },
    ['food_cookiesoatmealraisin'] = {
        label = 'Cinnamon Oatmeal Raisin Cookies',
        description = "Not just for the grandmothers, anyone can enjoy cinnamon oatmeal raisin cookies!",
        weight = 100,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 20 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_crisp`, pos = vec3(0.03, 0.01, 0.00), rot = vec3(0.0,  -180.5, -1.5) },
			usetime = 2500,
		},
        degrade = 14400
    },
    ['food_cookiesoatmeal'] = {
        label = 'Oatmeal Cookies',
        description = "No bells or whistles, just a bunch of oatmeal, yum!",
        weight = 100,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 20 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_crisp`, pos = vec3(0.03, 0.01, 0.00), rot = vec3(0.0,  -180.5, -1.5) },
			usetime = 2500,
		},
        degrade = 14400
    },
    ['food_cookiesoatmealchip'] = {
        label = 'Oatmeal Chocolate Chip Cookies',
        description = "Made specifically to keep you second guessing whether or not what you're about to eat has chocolate chips or raisins.",
        weight = 100,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 20 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_crisp`, pos = vec3(0.03, 0.01, 0.00), rot = vec3(0.0,  -180.5, -1.5) },
			usetime = 2500,
		},
        degrade = 14400
    },
    ['food_classicfries'] = {
        label = 'Classic Fries',
        description = "Some classic french fries.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_classicburger'] = {
        label = 'Classic Burger',
        description = "A nicely made classic style burger.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_croissantalmond'] = {
        label = 'Almond Croissant',
        description = "A fluffy almond croissant.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_croissantchocolate'] = {
        label = 'Chocolate Croissant',
        description = "A buttery chocolate croissant.",
        weight = 100,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 25 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_donut_02b`, pos = vec3(0.03, -0.02, 0.00), rot = vec3(0.0,  -0.5, 43.5) },
			usetime = 2500,
		},
        degrade = 7200
    },
    ['food_croissantjam'] = {
        label = 'Chocolate Wild Berry Croissant',
        description = "A decadent chocolate wild berry croissant.",
        weight = 100,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_donut_02b`, pos = vec3(0.03, -0.02, 0.00), rot = vec3(0.0,  -0.5, 43.5) },
			usetime = 2500,
		},
        degrade = 7200
    },
    ['food_corndog'] = {
        label = 'Corn Dog',
        description = "Corndog, corn dog or corn, dawg?",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_croissantbaconmushroom'] = {
        label = 'Bacon Mushroom Croissanwich',
        description = "I'm bacon ya not to be croissanwich me, I swear I'm a real fungi!",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_croissantblt'] = {
        label = 'BLT Croissanwich',
        description = "How do we make a BLT better? Croissant. That's how.",
        weight = 400,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 40 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `p_ing_bagel_01`, pos = vec3(0.03, -0.02, 0.00), rot = vec3(0.0,  -0.5, 43.5) },
            usetime = 3000,
		},
        degrade = 7200
    },
    ['food_croissanthamegg'] = {
        label = 'Ham & Egg Croissanwich',
        description = "A perfect savory breakfast sandwich.",
        weight = 400,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 40 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `p_ing_bagel_01`, pos = vec3(0.03, -0.02, 0.00), rot = vec3(0.0,  -0.5, 43.5) },
            usetime = 3000,
		},
        degrade = 7200
    },
    ['food_croissanthamswiss'] = {
        label = 'Ham & Swiss Croissanwich',
        description = "Ham bam thank you mam, if ya miss me ya better swiss me.",
        weight = 400,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 40 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `p_ing_bagel_01`, pos = vec3(0.03, -0.02, 0.00), rot = vec3(0.0,  -0.5, 43.5) },
            usetime = 3000,
		},
        degrade = 7200
    },
    ['food_croissantsalamiolive'] = {
        label = 'Salami Olive Croissanwich',
        description = "A great sandwich for lunchtime, or really anytime at all!",
        weight = 400,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 40 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `p_ing_bagel_01`, pos = vec3(0.03, -0.02, 0.00), rot = vec3(0.0,  -0.5, 43.5) },
            usetime = 3000,
		},
        degrade = 7200
    },
    ['food_croissantsalamiswiss'] = {
        label = 'Salami Swiss Croissanwich',
        description = "Salamanders have semipermeable skin that allows oxygen to pass directly throu- oh wait you said Salami? I must have swissed that.",
        weight = 400,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 40 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `p_ing_bagel_01`, pos = vec3(0.03, -0.02, 0.00), rot = vec3(0.0,  -0.5, 43.5) },
            usetime = 3000,
		},
        degrade = 7200
    },
    ['food_croissantveggie'] = {
        label = 'Veggie Croissanwich',
        description = "A veggie croissanwich. Not quite vegan, but definitely vegetarian.",
        weight = 400,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 40 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `p_ing_bagel_01`, pos = vec3(0.03, -0.02, 0.00), rot = vec3(0.0,  -0.5, 43.5) },
            usetime = 3000,
		},
        degrade = 7200
    },
    ['food_donutuwu2'] = {
        label = 'Pink Frosted Doughnut',
        description = "A pink frosted doughnut from UwU Cafe!",
        weight = 100,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 20 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `v_res_tt_doughnut01`, pos = vec3(0.03, 0.04, 0.00), rot = vec3(180.0,  -180.5, -46.5) },
			usetime = 2500,
		},
        degrade = 14400
    },
    ['food_dumplings'] = {
        label = 'Pork Dumplings',
        description = "Dump these right into your gullet and savor the sheer deliciousness to its full potential.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_eggrolls'] = {
        label = 'Pork Egg Rolls',
        description = "Contrary to popular belief, egg rolls usually contain no eggs. Grab some soy sauce and dig in!",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_eggrolls2'] = {
        label = 'Veggie Egg Rolls',
        description = "As long as the soy sauce used in this dish is vegan, these should be as well!",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_eggrolls3'] = {
        label = 'Chicken Egg Rolls',
        description = "Comparatively out of pork, beef, and chicken, chicken has a far less devastating impact on the environment overall.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_empanadas'] = {
        label = 'Empanadas',
        description = "Crispy savory perfection.",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_burrito5'] = {
        label = 'Beef & Bean Burrito',
        description = "A beef & bean burrito.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_burrito4'] = {
        label = 'Beef & Cheese Burrito',
        description = "A beef & cheese burrito.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_burrito6'] = {
        label = 'Beef & Corn Burrito',
        description = "A beef & corn burrito.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_burrito2'] = {
        label = 'Steak & Bean Burrito',
        description = "A steak & bean burrito.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_burrito1'] = {
        label = 'Steak & Cheese Burrito',
        description = "A steak & cheese burrito.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_burrito3'] = {
        label = 'Steak & Corn Burrito',
        description = "A steak & corn burrito.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_burrito7'] = {
        label = 'Bean & Cheese Burrito',
        description = "A Bean & cheese burrito.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_teablack'] = {
        label = 'Black Tea',
        description = "A nice warm cup of black tea.",
        weight = 350,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 35, hunger = 0 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base' },
			prop = { model = `v_res_mcofcupdirt`, pos = vec3(0.09, 0.03, 0.07), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 3000,
		},
        degrade = 7200
    },
    ['food_teagreen'] = {
        label = 'Green Tea',
        description = "An herbal cup of green tea.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_tealemon'] = {
        label = 'Lemon Tea',
        description = "A cup of lemon tea, perfect for a sore throat!",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_teapeppermint'] = {
        label = 'Peppermint Tea',
        description = "A cup of peppermint tea.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_bobatea'] = {
        label = 'Boba Tea',
        description = "Boba Tea, also known as Bubble Tea, originated in Taiwan in the early 1980s and made it's way to America in the 1990s.",
        weight = 400,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 35, hunger = 5 },
            anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
            prop = { model = `p_ing_coffeecup_02`, pos = vec3(0.11, 0.08, 0.03), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 2500,
        },
        degrade = 10080
    },
    ['food_bobamilktea'] = {
        label = 'Boba Kit-Tea',
        description = "Carefully crafted with foam art in the form of a cat. And you're going to consume that adorable cat, you monster.",
        weight = 350,
        usable = true,
        stack = true,
        type = 'Food',
        client = {
            status = { thirst = 45, hunger = 5 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `p_ing_coffeecup_02`, pos = vec3(0.11, 0.08, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 2500,
		},
    },
    ['food_icedtea'] = {
        label = 'Iced Tea',
        description = "A glass of cold and refreshing Iced Tea.",
        weight = 450,
        usable = true,
        stack = true
    },
    ['food_icedtea2'] = {
        label = 'Sweet Tea',
        description = "A glass of that sweet sweet Sweet Tea, no need to spill it!",
        weight = 450,
        usable = true,
        stack = true
    },
    ['food_cannoli'] = {
        label = 'Cannolis',
        description = "Holy Cannolis!",
        weight = 200,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 40 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_donut_02b`, pos = vec3(0.03, -0.02, 0.00), rot = vec3(0.0,  -0.5, 43.5) },
            usetime = 2500,
		},
        degrade = 7200
    },
    ['food_americano'] = {
        label = 'Americano',
        description = "A classic Americano.",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_cappuccino'] = {
        label = 'Cappuccino',
        description = "A classic Cappuccino.",
        weight = 300,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 35, hunger = 0 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `prop_mug_06`, pos = vec3(0.11, 0.08, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 3500,
        },
        degrade = 7200
    },
    ['food_teamilk'] = {
        label = 'Milk Tea',
        description = "Delicious Milk Tea.",
        weight = 350,
        usable = true,
        type = 'Food',
        client = {
            status = { thirst = 35, hunger = 0 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `prop_mug_02`, pos = vec3(0.11, 0.06, 0.00), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 3000,
		},
        stack = true,
        degrade = 7200
    },
    ['food_churros'] = {
        label = 'Churros',
        description = "Fried dough covered in sugar and cinnamon.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_fajita'] = {
        label = 'Chicken Fajita',
        description = "Eat a Fajita.",
        weight = 500,
        usable = true,
        stack = true
    },

    ['food_coffee'] = {
        label = 'Coffee',
        description = "A standard cup of coffee.",
        weight = 400,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 40, hunger = 0 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base' },
			prop = { model = `p_ing_coffeecup_02`, pos = vec3(0.09, 0.03, 0.07), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 2500,
		},
        degrade = 7200
    },
    ['food_espresso'] = {
        label = 'Espresso',
        description = "Espresso yourself.",
        weight = 200,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 20, hunger = 0 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base' },
			prop = { model = `v_res_mcofcupdirt`, pos = vec3(0.09, 0.03, 0.07), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 2500,
		},
        degrade = 7200
    },
    ['food_frappe'] = {
        label = 'Frappé',
        description = "No need to wrap this Frappé, just drink it up instead!",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 40, hunger = 5 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `p_ing_coffeecup_02`, pos = vec3(0.11, 0.08, 0.03), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 3500,
		},
        degrade = 7200
    },
    ['food_focaccia'] = {
        label = 'Focaccia',
        description = "A fresh oven-baked italian bread.",
        weight = 350,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 45 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_taco_02`, pos = vec3(0.03, 0.04, -0.03), rot = vec3(-45.0,  -90.5, -1.5) },
            usetime = 3500,
		},
        stack = 5,
        degrade = 7200
    },
    ['food_fortunecookie'] = {
        label = 'Fortune Cookie',
        description = "Only you can determine your future. Unless you listen to the little paper inside this cookie of course.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_tofufried'] = {
        label = 'Fried Tofu',
        description = "Crispy fried tofu just for you!",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_funghetto'] = {
        label = 'Funghetto',
        description = "Funghetto bout it! Enjoy this traditional eggplant dish!",
        weight = 600,
        usable = true,
        stack = true
    },
    ['food_jellocherry'] = {
        label = 'Cherry Gelatin',
        description = "This cherry flavored gelatin is a pretty safe food for those unable to chew.",
        weight = 100,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 20 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `apa_prop_cs_plastic_cup_01`, pos = vec3(0.01, 0.01, 0.01), rot = vec3(180.0,  -180.5, -190.5) },
			usetime = 2500,
		},
        degrade = 10080
    },
    ['food_gelato'] = {
        label = 'Gelato Neapolitan',
        description = "The perfect dessert to indulge in on hot summer days or alone in the dark swaddled in a blanket.",
        weight = 250,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 35 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_ret_fh_bscup`, pos = vec3(0.09, 0.09, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 3000,
		},
        stack = 10,
        degrade = 5760
    },
    ['food_grilledcheese'] = {
        label = 'Grilled Cheese',
        description = "Whether you use butter or mayo, a hot grilled cheese sandwich goes fantastic with some tomato soup.",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_eggbreakfast'] = {
        label = 'Hearty Breakfast',
        description = "A hearty breakfast consisting of toast, sausage, bacon, and eggs.",
        weight = 650,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 50 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base' },
			prop = { model = `prop_cs_bowl_01`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 5000,
		},
        degrade = 7200
    },
    ['food_hoagie'] = {
        label = 'Hoagie',
        description = "A ridiculously enormous hoagie situated on a whole loaf of bread. Enjoy!",
        weight = 600,
        usable = true,
        stack = false,
        client = {
            status = { thirst = 0, hunger = 100 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_cs_burger_01`, pos = vec3(0.01, 0.04, 0.0), rot = vec3(0.0,  0.0, 0.0) },
            usetime = 5000,
		},
        degrade = 8640
    },
    ['food_icecreamchocolate'] = {
        label = 'Chocolate Ice Cream Cone',
        description = "A single serving of chocolate ice cream.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_icecreamstrawberry'] = {
        label = 'Strawberry Ice Cream Cone',
        description = "Yee Straw! Berry up and Cone along to experience this flavorful treat!",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_icecreamvanilla'] = {
        label = 'Vanilla Ice Cream Cone',
        description = "The quintessential ice cream flavor, vanilla is always a great choice.",
        weight = 100,
        usable = true,
        stack = true
    },
    ['food_macchiato'] = {
        label = 'Macchiato',
        description = "Macchiato",
        weight = 300,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 25, hunger = 0 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `prop_mug_06`, pos = vec3(0.11, 0.08, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 3500,
		},
        degrade = 7200
    },
    ['food_cuginossandwich'] = {
        label = 'Panuozzo Napoletano',
        description = "A huge sandwich with pizza crust for bread! Enjoy!",
        weight = 600,
        usable = true,
        stack = true
    },
    ['food_risottolobster'] = {
        label = 'Lobster Risotto',
        description = "Considered a difficult dish only due to it requiring an individual's patience and attentiveness. Don't wash your rice, you'll need the starch!",
        weight = 600,
        usable = true,
        stack = true
    },
    ['food_pastrylobstertail'] = {
        label = 'Lemon Cream Pastry',
        description = "The Italian pastry shaped like a shell, Sfogliatella, is also known in the United States as a lobstertail.",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_pizzabaconalfredo'] = {
        label = 'Bacon Alfredo Pizza',
        description = "Bacon Alfredo Pizza",
        weight = 1000,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 80 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 7500,
		},
        degrade = 10080
    },
    ['food_pizzacapricciosa'] = {
        label = 'Capricciosa Pizza',
        description = "Capricciosa Pizza",
        weight = 1000,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 80 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 7500,
		},
        degrade = 10080
    },
    ['food_pizzacheese'] = {
        label = 'Cheese Pizza',
        description = "Cheese Pizza",
        weight = 800,
        usable = true,
        stack = true
    },
    ['food_pizzadeluxe'] = {
        label = 'Deluxe Pizza',
        description = "Deluxe Pizza",
        weight = 1000,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 80 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 7500,
		},
        degrade = 10080
    },
    ['food_pizzahawaiian'] = {
        label = 'Hawaiian Pizza',
        description = "Hawaiian Pizza",
        weight = 1000,
        usable = true,
        stack = true
    },
    ['food_pizzamareemonti'] = {
        label = 'Mare e Monti Pizza',
        description = "Mare e Monti Pizza",
        weight = 1000,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 80 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 7500,
		},
        degrade = 10080
    },
    ['food_pizzamargherita'] = {
        label = 'Margherita Pizza',
        description = "Margherita Pizza",
        weight = 1000,
        usable = true,
        stack = true
    },
    ['food_pizzameatlovers'] = {
        label = 'Meat Lovers Pizza',
        description = "Meat Lovers Pizza",
        weight = 1000,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 80 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 7500,
		},
        degrade = 10080
    },
    ['food_pizzaneapolitan'] = {
        label = 'Neapolitan Pizza',
        description = "Neapolitan Pizza",
        weight = 1000,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 80 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 7500,
		},
        degrade = 10080
    },
    ['food_pizzapepperoni'] = {
        label = 'Pepperoni Pizza',
        description = "Pepperoni Pizza",
        weight = 1000,
        usable = true,
        stack = true
    },
    ['food_pizzapugliese'] = {
        label = 'Pugliese Pizza',
        description = "Pugliese Pizza",
        weight = 1000,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 80 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 7500,
		},
        degrade = 10080
    },
    ['food_pizzaseafood'] = {
        label = 'Seafood Pizza',
        description = "Seafood Pizza",
        weight = 1000,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 80 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 7500,
		},
        degrade = 10080
    },
    ['food_pizzasicilian'] = {
        label = 'Sicilian Pizza',
        description = "Sicilian Pizza",
        weight = 1000,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 80 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
            usetime = 7500,
		},
        degrade = 10080
    },
    ['food_pizzaveggie'] = {
        label = 'Veggie Pizza',
        description = "Veggie Pizza",
        weight = 1000,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzabaconalfredoslice'] = {
        label = 'Bacon Alfredo Pizza Slice',
        description = "If you want pizza, but don't like marinara, this might just be the slice of heaven you've been dreaming of.",
        weight = 125,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzacapricciosaslice'] = {
        label = 'Capricciosa Pizza Slice',
        description = "One of eight slices, will you consume them all?",
        weight = 125,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzacheeseslice'] = {
        label = 'Cheese Pizza Slice',
        description = "Keep it simple, keep it cheesy, heat it up and eat it easy.",
        weight = 100,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzadeluxeslice'] = {
        label = 'Deluxe Pizza Slice',
        description = "A slice of luxury, such a ravishing sight to behold.",
        weight = 125,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzahawaiianslice'] = {
        label = 'Hawaiian Pizza Slice',
        description = "A salty sweet slice of canadian ingenuity.",
        weight = 125,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzamareemontislice'] = {
        label = 'Mare e Monti Pizza Slice',
        description = "Where land meets the sea, there you will find thee. Thine own destiny.",
        weight = 125,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzamargheritaslice'] = {
        label = 'Margherita Pizza Slice',
        description = "No margaritas were harmed in the making of this pizza, however whether or not one or two were deliciously consumed during the process, we are not at liberty to say.",
        weight = 125,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzameatloversslice'] = {
        label = 'Meat Lovers Pizza Slice',
        description = "The crust is merely a vehicle for this carnivorous delight.",
        weight = 125,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzaneapolitanslice'] = {
        label = 'Neapolitan Pizza Slice',
        description = "This slice is meant just for you, don't let any of the pizza gremlins take it from you.",
        weight = 125,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzapepperonislice'] = {
        label = 'Pepperoni Pizza Slice',
        description = "Able to put some pep in anyone's step! Note: Please do not step on this, it is meant to be devoured.",
        weight = 125,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzapuglieseslice'] = {
        label = 'Pugliese Pizza Slice',
        description = "No pugs were harmed in the making of this pizza slice. Hopefully.",
        weight = 125,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzaseafoodslice'] = {
        label = 'Seafood Pizza Slice',
        description = "When I Seafood, I eat it.",
        weight = 125,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzasicilianslice'] = {
        label = 'Sicilian Pizza Slice',
        description = "Let the taste of Sicily delight your senses!",
        weight = 125,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzaveggieslice'] = {
        label = 'Veggie Pizza Slice',
        description = "Vegetarian as long as milk products clear your personal definition of the word.",
        weight = 125,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 30 },
        anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
        prop = { model = `v_res_tt_pizzaplate`, pos = vec3(0.10, 0.09, 0.00), rot = vec3(330.0, 150.0, 0.0) },
        usetime = 3000,
    },
     degrade = 5760
    },
    ['food_pizzapocketcheese'] = {
        label = 'Cheese Pizza Pockets',
        description = "Two small handfuls of pizza full of molten hot cheese.",
        weight = 125,
        usable = true,
        stack = true
    },

    ['food_generaltsos'] = {
        label = 'General Tso',
        description = "Such a sweet and spicy combination of flavors coating crispy chicken, there's nothing general about this amazing dish!",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_gyoza'] = {
        label = 'Gyoza',
        description = "Goes great with an ice cold beer, though all forms of Potstickers, including Gyoza, go great with any drink alcoholic or otherwise!",
        weight = 400,
        usable = true,
        stack = true
    },
    ['food_muffin'] = {
        label = 'Honey Butter Muffin',
        description = "Honey, butter my muffin and call me delicious.",
        weight = 200,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 35 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
			usetime = 3000,
		},
        degrade = 10080
    },
    ['food_hotchocolate'] = {
        label = 'Hot Chocolate',
        description = "On those cold Winter months and late Autumn evenings, hot chocolate's the perfect drink to warm you right up.",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_hotdogplain'] = {
        label = 'Plain Hotdog',
        description = "Take me out to the ballpark, Hot Diggity Dog!",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_hotdog'] = {
        label = 'Ketchup & Mustard Hotdog',
        description = "Hotdogs are sandwiches, prove me wrong.",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_hotdogloaded'] = {
        label = 'Loaded Hotdog',
        description = "A fully loaded Hotdog for your consumption.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_hotdogmustard'] = {
        label = 'Mustard Hotdog',
        description = "A classic combination! Chow down!",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_koreanchicken'] = {
        label = 'Korean Chicken',
        description = "This South Korean dish can be enjoyed as a meal, appetizer, or as a snack. You, however, should enjoy it right now!",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_lasagna'] = {
        label = 'Lasagna',
        description = "What is Lasagna, but a layered meat pie with cheese, sauce, and noodles?",
        weight = 650,
        usable = true,
        stack = true
    },
    ['food_latte'] = {
        label = 'Latté',
        description = "Don't be Latté to the party! This should certainly give the energy boost you crave.",
        weight = 400,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 40, hunger = 0 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `prop_mug_06`, pos = vec3(0.11, 0.08, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 3500,
        },
        degrade = 7200
    },
    ['food_lomein'] = {
        label = 'Shrimp Lo Mein',
        description = "Shrimp needs to get low, low, low, Lo Mein!",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_italianmeatballs'] = {
        label = 'Meatballs',
        description = "Italian Meatballs just like Nonna used to make!",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_milkshakechocolate'] = {
        label = 'Chocolate Milkshake',
        description = "An old fashioned chocolate milkshake.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 35, hunger = 5 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_ret_fh_bscup`, pos = vec3(0.09, 0.09, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 3500,
		},
        degrade = 7200
    },
    ['food_milkshakejava'] = {
        label = 'Java Milkshake',
        description = "A mocha coffee flavored milkshake.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 45, hunger = 5 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_ret_fh_bscup`, pos = vec3(0.09, 0.09, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 3500,
		},
        degrade = 7200
    },
    ['food_milkshakestrawberry'] = {
        label = 'Strawberry Milkshake',
        description = "A lighter tasting strawberry milkshake.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 35, hunger = 5 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_ret_fh_bscup`, pos = vec3(0.09, 0.09, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 3500,
		},
        degrade = 7200
    },
    ['food_milkshakevanilla'] = {
        label = 'Vanilla Milkshake',
        description = "The classic vanilla milkshake for you to enjoy.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 35, hunger = 5 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_ret_fh_bscup`, pos = vec3(0.09, 0.09, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 3500,
		},
        degrade = 7200
    },
    ['food_drink_tittymilk'] = {
        label = 'Titty Milk',
        description = "Thick, creamy and packed with locally sourced nutrients, this drink is sure to satisfy your cravings.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_drink_tittymilkhard'] = {
        label = 'Hard Titty Milk',
        description = "Everything you know and love about Titty Milk, but with a little extra kick.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_ecolafloat'] = {
        label = 'eCola Float',
        description = "A glass of eCola topped with vanilla ice cream.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 45, hunger = 0 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `v_ret_fh_bscup`, pos = vec3(0.09, 0.09, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 3500,
		},
        degrade = 7200
    },
    ['food_soupchickennoodle'] = {
        label = 'Chicken Noodle Soup',
        description = "One of the best foods to make you feel cozy when things aren't feeling so cozy.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_misosoup'] = {
        label = 'Miso Soup',
        description = "Miso Soup should be served hot and can come in a variety of forms depending on the seasonal crops available when you make it.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_mussels'] = {
        label = 'Mussels',
        description = "It's hard to develop mussels, because when I seafood, I eat it.",
        weight = 600,
        usable = true,
        stack = true
    },
    ['food_nachos'] = {
        label = 'Nachos',
        description = "One of many extremely wellknown and incredibly delicious Tex-Mex creations. Enjoy!",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_sushinigirieel'] = {
        label = 'Eel Nigiri',
        description = "Did you hear about the fisherman camping by the pier? I heard he got arrested for Eel-in-tent.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_sushinigirituna'] = {
        label = 'Tuna Nigiri',
        description = "You can tune a car, but you can't tune a fish.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_sushinigirishrimp'] = {
        label = 'Shrimp Nigiri',
        description = "A perfectly formed rice bed with a bit of wasabi and topped with a cleaned shrimp.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_sushinigiri'] = {
        label = 'Salmon Nigiri',
        description = "A perfectly formed rice bed with a bit of wasabi and topped with a slab of salmon.",
        weight = 250,
        usable = true,
        stack = true
    },
    ['food_frenchtoast'] = {
        label = 'French Toast',
        description = "Contrary to this food's name, this dish actually doesn't come from France. Its name actually originated from an error on the menu of a business owned by Joseph French.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_pancakesblueberry'] = {
        label = 'Blueberry Pancakes',
        description = "In the morning, I'm making blueberry pancakes.",
        weight = 450,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 45 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
            usetime = 4000,
		},
        degrade = 10080
    },
    ['food_pancakesmaple'] = {
        label = 'Maple Pancakes',
        description = "Start your day off right with some classic maple pancakes.",
        weight = 500,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 45 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
            usetime = 4000,
		},
        degrade = 10080
    },
    ['food_pancakesrainbow'] = {
        label = 'Rainbow Pancakes',
        description = "It looks like a unicorn may have left you a little treat to eat.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_pannacotta'] = {
        label = 'Panna Cotta',
        description = "Decadence Incarnate.",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_pestochops'] = {
        label = 'Pesto Pork Chops',
        description = "Pesto! Porkfecto! Now you see me, now you don't!",
        weight = 550,
        usable = true,
        stack = true
    },
    ['food_hornedmelon'] = {
        label = 'Prosciutto e Melone',
        description = "A freshly picked melon, sliced to perfection and rolled up in a supple blanket of finely sliced swine, roasted to perfection.",
        weight = 550,
        usable = true,
        stack = true
    },
    ['food_popcorn'] = {
        label = 'Popcorn',
        description = "No movie session is complete without a bucket of popcorn.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_maccheese'] = {
        label = 'Macaroni & Cheese',
        description = "The ultimate comfort food, sure to make you lie on the floor wondering why you ate the entire dish.",
        weight = 600,
        usable = true,
        stack = true
    },
    ['food_ramen'] = {
        label = 'Pork Ramen',
        description = "A large bowl of piping hot pork ramen.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_raviolialfredo'] = {
        label = 'Alfredo Ravioli',
        description = "What are you alfredo of? It's ravi-only a bowl of pasta.",
        weight = 600,
        usable = true,
        stack = true
    },
    ['food_raviolibasil'] = {
        label = 'Basil Ravioli',
        description = "Basil? I hardly know her!",
        weight = 600,
        usable = true,
        stack = true
    },
    ['food_raviolialfredo2'] = {
        label = 'Chicken Alfredo Ravioli',
        description = "Ravioli filled with seasoned chicken in a garlic bechamel alfredo sauce.",
        weight = 600,
        usable = true,
        stack = true
    },
    ['food_sandwichblt'] = {
        label = 'BLT Sandwich',
        description = "Keep it simple with this BLT Sandwich!",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_sandwichhamswiss'] = {
        label = 'Ham & Swiss Sandwich',
        description = "A bit of Ham and Swiss between some bread slices, great for an on the go snack!",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_sandwichpbbanana'] = {
        label = 'PB & Banana Sandwich',
        description = "This magnificent creation is what happens when we put together two delicious treats together and serve it inbetween two perfect slices of bread.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_sandwichpbj'] = {
        label = 'PB & J Sandwich',
        description = "It's always an appropriate time for a PB & J sandwich.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_sandwichsalami'] = {
        label = 'Salami Sandwich',
        description = "A very simple sandwich to help keep your stomach happy.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_spaghetti'] = {
        label = 'Spaghetti & Meatballs',
        description = "Spaghetti & Meatballs",
        weight = 600,
        usable = true,
        stack = true
    },
    ['food_steakdinner'] = {
        label = 'Steak Dinner',
        description = "A fancy steak dinner cooked to the perfect temperature.",
        weight = 650,
        usable = true,
        stack = true
    },
    ['food_stickyrice'] = {
        label = 'Sticky Rice',
        description = "A bowl of sticky rice, great on its own or as a side to more dishes!",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_taco'] = {
        label = 'Taco',
        description = "A taco a day keeps the hunger at bay.",
        weight = 200,
        usable = true,
        stack = true
    },
    ['food_tortellini'] = {
        label = 'Tortellini',
        description = "Contrary to popular believe, Tortellini has nothing to do with turtles.",
        weight = 600,
        usable = true,
        stack = true
    },
    ['food_tiramisu'] = {
        label = 'Tiramisu',
        description = "I'll Tira-miss you.",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_tortabarozzi'] = {
        label = 'Torta Barozzi',
        description = "Gluten-free, but freely delicious.",
        weight = 300,
        usable = true,
        stack = true
    },
    ['food_waffles'] = {
        label = 'Waffles',
        description = "Waffles, made with eggs and love... probably.",
        weight = 350,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 0, hunger = 35 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
			prop = { model = `prop_donut_01`, pos = vec3(-0.01, -0.01, 0.00), rot = vec3(0.0,  0.5, 0.5) },
            usetime = 2500,
		},
        degrade = 10080
    },
    ['food_coffeetogo'] = {
        label = 'To-Go Coffee',
        description = "Coffee for the individual who has places to be! Or at the very least this cup is perfect for people who tend toward the clumsier side of things.",
        weight = 400,
        usable = true,
        stack = true,
        client = {
            status = { thirst = 40, hunger = 0 },
			anim = { dict = 'amb@world_human_aa_coffee@base', clip = 'base'  },
			prop = { model = `p_ing_coffeecup_02`, pos = vec3(0.11, 0.08, 0.03), rot = vec3(330.0, 150.0, 0.0) },
			usetime = 2500,
		},
        stack = 20,
        degrade = 7200
    },


---------------------------------
--- Mixology Cooking Section ----
---------------------------------
--	['food_milkcoconut'] = {
--        label = 'Coconut Milk',
--        description = "Coconut water would be a more accurate way to describe what coconut milk actually is.",
--        weight = 350,
--        usable = true,
--        stack = true
--	},
	['food_drink_goldengamble'] = {
        label = 'Golden Gamble',
        description = "A glass of liquid gold.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_winemulled'] = {
        label = 'Mulled Wine',
        description = "A warm holiday drink, sure to keep that winter chill at bay.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_ciderhard'] = {
        label = 'Hard Spiced Apple Cider',
        description = "Like your normal apple cider, with a bite.",
        weight = 350,
        usable = true,
        stack = true
    },
    ['food_ciderspiced'] = {
        label = 'Spiced Apple Cider',
        description = "A tall, hot glass of spiced apple cider.",
        weight = 300,
        usable = true,
        stack = true
    },
	['food_glass_beer'] = {
        label = 'Glass of Beer',
        description = "A nice cold glass of beer.",
        weight = 500,
        usable = true,
        stack = true
    },
	['food_glass_beerwater'] = {
        label = 'Glass of Beer',
        description = "Someone got a little cheap with this and watered it down.",
        weight = 500,
        usable = true,
        stack = true
    },
    ['food_glass_vodkarocks'] = {
        label = 'Vodka Shot',
        description = "A serving of vodka on the rocks.",
        weight = 250,
        usable = true,
        stack = true
    },
	['food_bottle_gin'] = {
        label = 'Gin',
        description = "A bottle of gin, now all you need is some seltzer.",
        weight = 1250,
        usable = true,
        stack = true
    },
	['food_glass_gin'] = {
        label = 'Glass of Gin',
        description = "A glass of Gin.",
        weight = 250,
        usable = true,
        stack = true
    },
	['food_bottle_rumdark'] = {
        label = 'Dark Rum',
        description = "A bottle of dark rum, not to be confused with red rum.",
        weight = 1250,
        usable = true,
        stack = true
    },
	['food_glass_rumdark'] = {
        label = 'Glass of Dark Rum',
        description = "A single serving of rum.",
        weight = 125,
        usable = true,
        stack = true
    },
	['food_bottle_whiskeybourbon'] = {
        label = 'Bourbon Whiskey',
        description = "A bottle of Bourbon, American made.",
        weight = 1250,
        usable = true,
        stack = true
    },
	['food_glass_whiskeyneat'] = {
        label = 'Whiskey Neat',
        description = "A single glass of whiskey. It's pretty neat when you leave the rocks outside.",
        weight = 250,
        usable = true,
        stack = true
    },
	['food_bottle_tequila'] = {
        label = 'Tequila',
        description = "Tequila is a type of mezcal that can only be made from Blue Weber agave plants.",
        weight = 1250,
        usable = true,
        stack = true
    },
	['food_glass_tequila'] = {
        label = 'Tequila Shot',
        description = "A single shot of Tequila. Goes great with a lime slice.",
        weight = 125,
        usable = true,
        stack = true
    },
	['food_bottle_mezcal'] = {
        label = 'Mezcal',
        description = "Stronger than Tequila, mezcal can be made using any combination of agave plant.",
        weight = 1250,
        usable = true,
        stack = true
    },
	['food_glass_mezcal'] = {
        label = 'Mezcal Shot',
        description = "A single shot of Mezcal.",
        weight = 125,
        usable = true,
        stack = true
    },
	['food_bottle_absinthe'] = {
        label = 'Absinthe',
        description = "A bottle of Absinthe.",
        weight = 1250,
        usable = true,
        stack = true
    },
	['food_glass_absinthe'] = {
        label = 'Glass of Absinthe',
        description = "A single serving of Absinthe.",
        weight = 125,
        usable = true,
        stack = true
    },
	['food_bottle_champagne'] = {
        label = 'Champagne',
        description = "A bottle of Champagne.",
        weight = 1250,
        usable = true,
        stack = true
    },
	['food_glass_champagne'] = {
        label = 'Glass of Champagne',
        description = "Perfect for a celebration or event. Cheers!",
        weight = 250,
        usable = true,
        stack = true
    },
	['food_bottle_prosecco'] = {
        label = 'Prosecco',
        description = "A bottle of Prosecco.",
        weight = 1250,
        usable = true,
        stack = true
    },
	['food_glass_prosecco'] = {
        label = 'Glass of Prosecco',
        description = "A single serving of Prosecco.",
        weight = 250,
        usable = true,
        stack = true
    },
	['food_bottle_sake'] = {
        label = 'Sake',
        description = "Sake is an alcoholic Japanese rice wine.",
        weight = 1250,
        usable = true,
        stack = true
    },
	['food_glass_sake'] = {
        label = 'Sake Cup',
        description = "A single serving of Japanese Sake.",
        weight = 250,
        usable = true,
        stack = true
    },
	['food_bottle_dangermauser'] = {
        label = 'Dangermauser',
        description = "Dangermauser, the german digestif made with 69 herbs and spices. No cats allowed at this rat party, go get your squeak on!",
        weight = 1250,
        usable = true,
        stack = true
    },
	['food_glass_dangermauser'] = {
       label = 'Dangermauser Shot',
       description = "Put a mouse in its grave, bottoms up!",
       weight = 125,
       usable = true,
       stack = true
    },
    ['food_drink_cocktailrainbow'] = {
        label = 'Rainbow Cocktail',
        description = "This colorful adult beverage puts the art in party, now all it needs is you!",
        weight = 350,
        usable = true,
        stack = true
    },
	['food_glass_winered'] = {
        label = 'Glass of Red Wine',
        description = "A glass of red wine.",
        weight = 250,
        usable = true,
        stack = true
    },
	['food_glass_winewhite'] = {
        label = 'Glass of White Wine',
        description = "A glass of white wine.",
        weight = 250,
        usable = true,
        stack = true
    },


-------------------------------------
--------- WAITING ON IMAGES ---------
------- Will categorize once --------
------- recipes/images are in -------
-------------------------------------


['food_skewermeatred'] = {
    label = 'Red Meat Skewer',
    description = "Perfectly quartered and proportioned meat, skillfully pierced, and seasoned like the summer.",
    weight = 400,
    usable = true,
    stack = true
},
['food_skewerfish'] = {
    label = 'Fish Skewer',
    description = "Crispy chunks of fish, glazed with soy sauce.",
    weight = 400,
    usable = true,
    stack = true
},
['food_skewertofu'] = {
    label = 'Tofu Skewer',
    description = "It's tofu time baby. Veg out or tarian it up, you decide.",
    weight = 400,
    usable = true,
    stack = true
},
['food_skewermeatwhitespicy'] = {
    label = 'Spicy White Meat Skewer',
    description = "A flavorful and spicy fire roasted skewer to tantilize your tastebuds. Made with white meat. Whether a winged creature of the skies, the seas, or landlocked, you can now fly this delicious treat directly into your stomach.",
    weight = 400,
    usable = true,
    stack = true
},
['food_jerky'] = {
    label = 'Plain Jerky',
    description = "Homemade meat candy.",
    weight = 400,
    usable = true,
    stack = true
},
['food_jerkyfish'] = {
    label = 'Plain Fish Jerky',
    description = "Some dried strips of fish.",
    weight = 400,
    usable = true,
    stack = true
},


['food_bulgogi'] = {
    label = 'Bulgogi',
    description = "Bulgogi? I hardly know ye! This savoury sweet marinated meat dish is sure to make your mouth water and your stomach extremely happy.",
    weight = 500,
    usable = true,
    stack = true
},
['food_steakpotato'] = {
    label = 'Steak and Potatoes',
    description = "A cast iron skillet packed full of generously cubed steak and potatoes. It has a very homey vibe.",
    weight = 500,
    usable = true,
    stack = true
},

['food_roast'] = {
    label = 'Roast',
    description = "It's nice to meat you, but you can leave the roast to me.",
    weight = 500,
    usable = true,
    stack = true
},
['food_tartaresteak'] = {
    label = 'Steak Tartare',
    description = "You can't ask for anything bluer than this red meat. This should really be eaten fresh.",
    weight = 350,
    usable = true,
    stack = true
},
['food_meatloaf'] = {
    label = 'Meat Loaf',
    description = "We're not quite sure what you put in here, but it's definitely meat that's been molded into the form of a loaf.",
    weight = 500,
    usable = true,
    stack = true
},
['food_hotdogbagel'] = {
    label = 'Pig in a Blanket',
    description = "Really it's the only way to confirm if a cop is cool or not.",
    weight = 350,
    usable = true,
    stack = true
},
['food_escargot'] = {
    label = 'Escargot',
    description = "Where is the car going, France perhaps?",
    weight = 500,
    usable = true,
    stack = true
},
['food_catfishstuffed'] = {
    label = 'Stuffed Catfish',
    description = "Catfish vaccuum their food into their mouths at high speed, will you continue the cycle?",
    weight = 500,
    usable = true,
    stack = true
},
['food_pikestuffed'] = {
    label = 'Stuffed Pike',
    description = "Pike are aggressive aquatic predators who, if given the chance, will consume frogs, snakes, small mammals, and even birds in addition to their typical all fish diet.",
    weight = 500,
    usable = true,
    stack = true
},
['food_salmonsteak'] = {
    label = 'Salmon Steak Dinner',
    description = "A juicy salmonid steak, watch out for the bones!",
    weight = 300,
    usable = true,
    stack = true
},
['food_salmonsteakgrilled'] = {
    label = 'Grilled Salmon Steak',
    description = "From water to fire. Flavor at every turn.",
    weight = 300,
    usable = true,
    stack = true
},
['food_tartaresalmon'] = {
    label = 'Salmon Avocado Tartare',
    description = "Raw as hell, but tastes like heaven. This should really be eaten fresh.",
    weight = 350,
    usable = true,
    stack = true
},
['food_fishrolls'] = {
    label = 'Fish Rolls',
    description = "Skin-on fillets of fish rolled up, filled with stuffing, and baked.",
    weight = 500,
    usable = true,
    stack = true
},
['food_crostiniroered'] = {
    label = 'Caviar Crostini',
    description = "I'd toast to this.",
    weight = 100,
    usable = true,
    stack = true
},
['food_fishfilletglazed'] = {
    label = 'Glazed Fillets',
    description = "Two skin-on fillets of white fish, pan fried and tossed in a simple sauce.",
    weight = 300,
    usable = true,
    stack = true
},
['food_fishfilletpanfried'] = {
    label = 'Panfried Fish',
    description = "A hearty fillet of white fish, flaky, light, and fried up with what is certainly a healthy amount of butter in a pan.",
    weight = 300,
    usable = true,
    stack = true
},
['food_fishfilletbakedmiso'] = {
    label = 'Miso Marinated Fillets',
    description = "Three baked fillets of fish, marinated and glazed in a miso based sauce.",
    weight = 300,
    usable = true,
    stack = true
},
['food_fishsteakbaked'] = {
    label = 'Baked Fish Steaks',
    description = "Three baked fish steaks, marinated and glazed in soy sauce.",
    weight = 300,
    usable = true,
    stack = true
},
['food_fishsteakbreaded'] = {
    label = 'Breaded Fish Steaks',
    description = "A veritable feast of fish. Watch out for the bones.",
    weight = 500,
    usable = true,
    stack = true
},
['food_fishhobo'] = {
    label = 'Hobo Fish',
    description = "A whole pansized fish cooked using an open flame and the power of determination, with not so subtle hints of desperation.",
    weight = 300,
    usable = true,
    stack = true
},
['food_fishdried'] = {
    label = 'Dried Fish',
    description = "A split-open fish, dried for an extended period of time in an attempt to extend how long it can pass as edible. Not to be confused with fish jerky.",
    weight = 300,
    usable = true,
    stack = true
},
['food_fishwholeroast'] = {
    label = 'Roasted Fish Dinner',
    description = "Can only be described as fall off the bone, melt in your mouth, and flavorfully charred perfection. Even better with a side of rice or vegetables.",
    weight = 650,
    usable = true,
    stack = true
},
['food_fishwhole'] = {
    label = 'Whole Fish',
    description = "A whole pansized fish, gutted and prepared by an experienced chef.",
    weight = 400,
    usable = true,
    stack = true
},
['food_lobstersteamed'] = {
    label = 'Steamed Lobster',
    description = "A most esteemed cuisine to be sure, fit only for the richest of souls.",
    weight = 650,
    usable = true,
    stack = true
},
['food_crabdinner'] = {
    label = 'Crab Dinner',
    description = "You had better take my advice, crab a few friends and go out to eat.",
    weight = 650,
    usable = true,
    stack = true
},
['food_crablegs'] = {
    label = 'Crab Legs',
    description = "Crabs are really just aquatic spiders if you think about it, but with the added purpose of being detritivores. Of course feeding mainly on decaying matter wouldn't stop this freak from grabbing a baby turtle and pulling it under the sand to speed things up.",
    weight = 300,
    usable = true,
    stack = true
},
['food_crayfishclaws'] = {
    label = 'Crayfish Claws',
    description = "Claw your way to victory no matter the price.",
    weight = 300,
    usable = true,
    stack = true
},
['food_crayfishplatter'] = {
    label = 'Crayfish Platter',
    description = "Get yourself some crawdads and corn kernels.",
    weight = 650,
    usable = true,
    stack = true
},
['food_fishburger'] = {
    label = 'Fish Burger',
    description = "A white fish fillet accompanied by mayo, lettuce, and tomato. Perfect for those pesky tarians.",
    weight = 500,
    usable = true,
    stack = true
},
['food_fishsticks'] = {
    label = 'Fish Sticks',
    description = "We've yet to find what tree these came from.",
    weight = 250,
    usable = true,
    stack = true
},
['food_fishchips'] = {
    label = 'Fish and Chips',
    description = "Innit just the best?",
    weight = 250,
    usable = true,
    stack = true
},
['food_soupmisosalmon'] = {
    label = 'Tofu Salmon Miso',
    description = "I wasn't just fishing for compliments, pescatarians rejoice!",
    weight = 350,
    usable = true,
    stack = true
},
['food_filletwhiteraw'] = {
    label = 'Raw Fish Fillet',
    description = "A cleaned fillet of a white fleshed fish, ready for all manner of cooking.",
    weight = 250,
    usable = true,
    stack = true
},
['food_steakwhiteraw'] = {
    label = 'Raw Fish Steak',
    description = "A sectioned off portion of raw bone-in white fish, soon to be flaky and delicious I'm sure.",
    weight = 250,
    usable = true,
    stack = true
},
['food_steaktunaraw'] = {
    label = 'Raw Tuna Steak',
    description = "A sectioned off portion of raw Tuna, ready for searing, mincing, slicing, marinading, you name it!",
    weight = 250,
    usable = true,
    stack = true
},
['food_fillettunaraw'] = {
    label = 'Tuna Slab',
    description = "The color of a Salmon or Trout's flesh is directly linked to the fish's diet and can vary from near-white to orange to red.",
    weight = 100,
    usable = true,
    stack = true
},

---- ILLEGAL FOOD ----

['food_soupturtle'] = {
    label = 'Turtle Soup',
    description = "How can something this tasty be so extremely illegal? Who really cares about a small risk of chelonitoxication.. if turtles didn't want to be eaten they shouldn't have been born with a built in bowl.",
    weight = 500,
    usable = true,
    stack = true
},
['food_sharkdinner'] = {
    label = 'Shark Dinner',
    description = "Illegal to possess as an estimated 73 million sharks are subjected to death by finning each year. A horribly cruel practice where sharks are caught en masse, definned while alive, and discarded back into the ocean where they slowly succumb to their injuries all for the sake of capitalistic consumerism.",
    weight = 650,
    usable = true,
    stack = true
},
['food_bayleaf'] = {
    label = 'Bay leaf',
    description = "Bay leaves originate from bay laurels and are the type of leaf used in the iconic ancient greek and roman laurel crowns.",
    weight = 10,
    usable = true,
    stack = true
},
['food_spices'] = {
    label = 'Spices',
    description = "A small variety of spices.",
    weight = 50,
    usable = true,
    stack = true
},
['food_bagelcreamcheese'] = {
    label = 'Creamcheese Bagel',
    description = "A toasted bagel with creamcheese.",
    weight = 100,
    usable = true,
    stack = true
},
['food_bagellox'] = {
    label = 'Lox Bagel',
    description = "I love it a lox, it's the key to my heart.",
    weight = 200,
    usable = true,
    stack = true
},
['food_beantoast'] = {
    label = 'Beans on Toast',
    description = "An English staple.",
    weight = 100,
    usable = true,
    stack = true
},
['food_gritsshrimp'] = {
    label = 'Shrimp and Grits',
    description = "Southern comfort food, naturally it's loaded with butter.",
    weight = 500,
    usable = true,
    stack = true
},
['food_froglegs'] = {
    label = 'Frog Legs',
    description = "Who's hopping mad now? I assure you it's no longer the frog.",
    weight = 300,
    usable = true,
    stack = true
},
['food_steaksharkraw'] = {
    label = 'Raw Shark Steak',
    description = "Meat from a protected shark species, this meat is illegal to possess. Thanks to movies and other popular shark media, the danger that a shark poses to society has been blown wildly out of proportion, directly leading to shark populations declining by 70%.",
    weight = 250,
    usable = true,
    stack = true
},
['food_tempurashrimp'] = {
    label = 'Shrimp Tempura',
    description = "A group of crunchy crustaceans. This dish is perfect as is, with a cup of dipping sauce.",
    weight = 250,
    usable = true,
    stack = true
},
['food_souphobo'] = {
    label = 'Campfire Soup',
    description = "A hearty meal to re-engergize and help keep you warm on your outdoor adventures.",
    weight = 350,
    usable = true,
    stack = true
},
['food_crostinipb'] = {
    label = 'Peanut Butter Crostini',
    description = "An extremely simple hors d'oeuvre perfect for any individual on a tight budget.",
    weight = 100,
    usable = true,
    stack = true
},
['food_crostinichocolate'] = {
    label = 'Chocolate Crostini',
    description = "Wait what time is it? You better not be chocolate to bread.",
    weight = 100,
    usable = true,
    stack = true
},
['food_skeweryakitori'] = {
    label = 'Yakitori',
    description = "How many of these can you eat in one sitting? Now's your chance to find out.",
    weight = 400,
    usable = true,
    stack = true
},
['food_sandwichbbq'] = {
    label = 'BBQ Sandwich',
    description = "Smokey sweet barbeque slathered meat on a toasted bun.",
    weight = 500,
    usable = true,
    stack = true
},
['food_enchiladas'] = {
    label = 'Enchiladas',
    description = "Not to be confused with the spiky mammal native to Australia and New Guinea. Look up Echidna facts on your own time.",
    weight = 400,
    usable = true,
    stack = true
},
['food_candykit'] = {
    label = '"Medical Kit"',
    description = "Something about this medkit seems... whimsical. Smells like citrus.",
    weight = 100,
    usable = true,
    stack = true
},

    --- catalic converters ---
    ['catalytic_converter'] = {
        label = 'Catalytic Converter',
        description = 'A catalytic converter is a device that converts harmful pollutants into less harmful substances.',
        weight = 100,
        usable = false,
        stack = true
    },
    ['blowtorch'] = {
        label = 'Blowtorch',
        description = 'A blowtorch is a device that uses a flame to heat up a metal to a high temperature.',
        weight = 100,
        usable = true,
        stack = true
    },


----------------------------------- [ FOOD.LUA END ]
------------------------------------[ WEAPONPARTS.LUA ]
['receiver_ceramicpistol'] = {
    label = 'Ceramic Pistol Receiver',
    description = "Not your grandma's ceramics. Although this pint-sized pistol is small enough to fit into her purse and won't set off a metal detector.",
    weight = 250,
},
-- WEAPON_COMBATPISTOL
['receiver_combatpistol'] = {
    label = 'Combat Pistol Receiver',
    description = "A compact, lightweight, semi-automatic pistol designed for law enforcement and personal defense. 12-round magazine with option to extend to 16 rounds.",
    weight = 250,
},
-- WEAPON_DOUBLEACTION
['receiver_doubleaction'] = {
    label = 'Double Action Revolver Receiver',
    description = "Because sometimes revenge is a dish best served six times, in quick succession, right between the eyes.",
    weight = 250,
},
-- WEAPON_HEAVYPISTOL
['receiver_heavypistol'] = {
    label = 'Heavy Pistol Receiver',
    description = "The heavyweight champion of the magazine fed, semi-automatic handgun world. Delivers a serious forearm workout every time",
    weight = 250,
},
-- WEAPON_PISTOL
['receiver_pistol'] = {
    label = 'Pistol Receiver',
    description = "Standard handgun. A 9mm caliber pistol with a magazine capacity of 12 rounds that can be extended to 16.",
    weight = 450,
},
-- WEAPON_PISTOL50
['receiver_pistol50'] = {
    label = 'Pistol .50 Receiver',
    description = "High-impact pistol that delivers immense power but with extremely strong recoil. Holds 9 rounds in magazine.",
    weight = 1000,
},
-- WEAPON_REVOLVER
['receiver_revolver'] = {
    label = 'Heavy Revolver Receiver',
    description = "A handgun with enough stopping power to drop a crazed rhino, and heavy enough to beat it to death if you're out of ammo.",
    weight = 1130,
},
-- WEAPON_SNSPISTOL
['receiver_snspistol'] = {
    label = 'SNS Pistol Receiver',
    description = "Like condoms or hairspray, this fits in your pocket for a night out in a Vinewood club. It's half as accurate as a champagne cork but twice as deadly",
    weight = 235,
},
-- WEAPON_VINTAGEPISTOL
['receiver_vintagepistol'] = {
    label = 'Vintage Pistol Receiver',
    description = "What you really need is a more recognizable gun. Stand out from the crowd at an armed robbery with this engraved pistol",
    weight = 50,
},
-- WEAPON_SERVICEPISTOL_9MM
['receiver_servicepistol_9mm'] = {
    label = 'Gock 17 Receiver',
    weight = 450,
},
-- WEAPON_SERVICEPISTOL_45
['receiver_servicepistol_45'] = {
    label = 'Gock 45 Receiver',
    weight = 450,
},
-- WEAPON_PISTOL_MK2
['receiver_pistol_mk2'] = {
    label = 'Pistol MK2 Receiver',
    description = "Balance, simplicity, precision: nothing keeps the peace like an extended barrel in the other guy's mouth.",
    weight = 450,
},
-- WEAPON_REVOLVER_MK2
['receiver_revolver_mk2'] = {
    label = 'Heavy Revolver MK2 Receiver',
    description = "If you can lift it, this is the closest you'll get to shooting someone with a freight train",
    weight = 750,
},
-- WEAPON_SNSPISTOL_MK2
['receiver_snspistol_mk2'] = {
    label = 'SNS Pistol MK2 Receiver',
    description = "The ultimate purse-filler: if you want to make Saturday Night really special, this is your ticket",
    weight = 235,
},
-- WEAPON_BULLPUPSHOTGUN
['receiver_bullpupshotgun'] = {
    label = 'Bullpup Shotgun Receiver',
    description = "More than makes up for its slow, pump-action rate of fire with its range and spread. Decimates anything in its projectile path.",
    weight = 1100,
},
-- WEAPON_COMBATSHOTGUN
['receiver_combatshotgun'] = {
    label = 'Combat Shotgun Receiver',
    description = "There's only one semi-automatic shotgun with a fire rate that sets the LSFD alarm bells ringing, and you're looking at it",
    weight = 4400,
},
-- WEAPON_DBSHOTGUN
['receiver_dbshotgun'] = {
    label = 'Double Barrel Shotgun Receiver',
    description = "Do one thing, do it well. Who needs a high rate of fire when your first shot turns the other guy into a fine mist?",
    weight = 1675,
},
-- WEAPON_PUMPSHOTGUN
['receiver_pumpshotgun'] = {
    label = 'Pump Shotgun Receiver',
    description = "Standard shotgun ideal for short-range combat. A high-projectile spread makes up for its lower accuracy at long range.",
    weight = 1700,
},
-- WEAPON_SAWNOFFSHOTGUN
['receiver_sawedoffshotgun'] = {
    label = 'Sawn Off Shotgun Receiver',
    description = "This single-barrel, sawed-off shotgun compensates for its low range and ammo capacity with devastating efficiency in close combat.",
    weight = 880,
},
-- WEAPON_PUMPSHOTGUN_MK2
['receiver_pumpshotgun_mk2'] = {
    label = 'Pump Shotgun MK2 Receiver',
    description = "Only one thing pumps more action than a pump action: watch out, the recoil is almost as deadly as the shot.",
    weight = 1500,
},
-- WEAPON_COMBATPDW
['receiver_combatpdw'] = {
    label = 'Combat PDW Receiver',
    description = "Who said personal weaponry couldn't be worthy of military personnel? Thanks to our lobbyists, not Congress. Integral suppressor.",
    weight = 1350,
},
-- WEAPON_MACHINEPISTOL
['receiver_machinepistol'] = {
    label = 'Machine Pistol Receiver',
    description = "This fully automatic is the snare drum to your twin-engine V8 bass: no drive-by sounds quite right without it.",
    weight = 700,
},
-- WEAPON_MICROSMG
['receiver_microsmg'] = {
    label = 'Micro SMG Receiver',
    description = "Combines compact design with a high rate of fire at approximately 700-900 rounds per minute.",
    weight = 2000,
},
-- WEAPON_MINISMG
['receiver_minismg'] = {
    label = 'Mini SMG Receiver',
    description = "Increasingly popular since the marketing team looked beyond spec ops units and started caring about the little guys in low income areas",
    weight = 1350,
},
-- WEAPON_SMG
['receiver_smg'] = {
    label = 'SMG Receiver',
    description = "This is known as a good all-round submachine gun. Lightweight with an accurate sight and 30-round magazine capacity.",
    weight = 1584,
},
-- WEAPON_SMG_MK2
['receiver_smg_mk2'] = {
    label = 'SMG Mk2 Receiver',
    description = "Lightweight, compact, with a rate of fire to die very messily for: turn any confined space into a kill box at the click of a well-oiled trigger.",
    weight = 1350,
},
-- WEAPON_ASSAULTSMG
['receiver_assaultsmg'] = {
    label = 'Assault SMG Receiver',
    description = "A high-capacity submachine gun that is both compact and lightweight.",
    weight = 1450,
},
-- WEAPON_ADVANCEDRIFLE
['receiver_advancedrifle'] = {
    label = 'Advanced Rifle Receiver',
    description = "The most lightweight and compact of the assault rifles, without compromising accuracy and rate of fire.",
    weight = 1580,
},
-- WEAPON_ASSAULTRIFLE
['receiver_assaultrifle'] = {
    label = 'Advanced Rifle Receiver',
    description = "The upper receiver for one of the most lightweight and compact of the assault rifles, without compromising accuracy and rate of fire.",
    weight = 1180,
},
-- WEAPON_CARBINERIFLE
['receiver_carbinerifle'] = {
    label = 'Carbine Rifle Receiver',
    description = "Combining long distance accuracy with a high-capacity magazine, the carbine rifle can be relied on to make the hit.",
    weight = 1600,
},
-- WEAPON_COMPACTRIFLE
['receiver_compactrifle'] = {
    label = 'Compact Rifle Receiver',
    description = "Half the size, all the power, double the recoil: there's no riskier way to say \"I'm compensating for something\".",
    weight = 1350,
},
-- WEAPON_BULLPUPRIFLE
['receiver_bullpuprifle'] = {
    label = 'Bullpup Rifle Receiver',
    description = "The latest Chinese import taking America by storm, this rifle is known for its balanced handling. Lightweight and very controllable in automatic fire",
    weight = 900,
},
-- WEAPON_HEAVYRIFLE
['receiver_heavyrifle'] = {
    label = 'Heavy Rifle Receiver',
    description = "The no-holds-barred 30-round answer to that eternal question, how do I get this guy off my back?",
    weight = 1350,
},
-- WEAPON_MILITARYRIFLE
['receiver_militaryrifle'] = {
    label = 'Military Rifle Receiver',
    description = "This immensely powerful assault rifle was designed for highly qualified, exceptionally skilled soldiers",
    weight = 1800,
},
-- WEAPON_SPECIALCARBINE
['receiver_specialcarbine'] = {
    label = 'Special Carbine Receiver',
    description = "Combining accuracy, maneuverability and low recoil, this is an extremely versatile assault rifle for any combat situation",
    weight = 1500,
},
-- WEAPON_TACTICALRIFLE
['receiver_tacticalrifle'] = {
    label = 'Tactical Rifle Receiver',
    description = "This season's must-have hardware for law enforcement, military personnel and anyone locked in a fight to the death with either law enforcement or military personnel.",
    weight = 1500,
},
-- WEAPON_ASSAULTRIFLE_MK2
['receiver_assaultrifle_mk2'] = {
    label = 'Assault Rifle MK2 Receiver',
    description = "The definitive revision of an all-time classic: all it takes is a little work, and looks can kill after all",
    weight = 1650,
},
-- WEAPON_BULLPUPRIFLE_MK2
['receiver_bullpuprifle_mk2'] = {
    label = 'Bullpup Rifle MK2 Receiver',
    description = "The latest Chinese import taking America by storm, this rifle is known for its balanced handling. Lightweight and very controllable in automatic fire",
    weight = 900,
},
-- WEAPON_CARBINERIFLE_MK2
['receiver_carbinerifle_mk2'] = {
    label = 'Carbine Rifle MK2 Receiver',
    description = "This is bespoke, artisan firepower: you couldn't deliver a hail of bullets with more love and care if you inserted them by hand",
    weight = 1500,
},
-- WEAPON_SPECIALCARBINE_MK2
['receiver_specialcarbine_mk2'] = {
    label = 'Special Carbine MK2 Receiver',
    description = "The jack of all trades just got a serious upgrade: bow to the master",
    weight = 670,
},

-------------
    --- Drugs ---
    -------------
    --- Ingredients Meth ---
    ['phosphoric_acid'] = {
        label = 'Phosphoric Acid',
        description = 'DANGER: Highly corrosive to body tissue.',
        weight = 125,
        usable = false,
        stack = true
    },
    ['propylene_glycol'] = {
        label = 'Propylene Glycol',
        description = 'Absorbs water, used as an antifreeze and has a sweet taste.',
        weight = 150,
        usable = false,
        stack = true
    },
    ['sodium_benzoate'] = {
        label = 'Sodium Benzoate',
        description = 'Commonly used as a food preservative.',
        weight = 100,
        usable = false,
        stack = true
    },
    ['bismuth'] = {
        label = 'Bismuth',
        description = 'Used in medicine and cosmetics.',
        weight = 175,
        usable = false,
        stack = true
    },
    -- ['baking_soda'] = {
    --     label = 'Baking Soda',
    --     description = 'Used in cooking and cleaning; reacts with acids.',
    --     weight = 200,
    --     usable = false,
    --     stack = 10,
    --     type = "Chemical"
    -- },
    ['acetone'] = {
        label = 'Acetone',
        description = 'DANGER: Highly flammable as a liquid and fumes.',
        weight = 100,
        usable = false,
        stack = true
    },
    -- ['toluene'] = {
    --     label = 'Toluene',
    --     description = 'DANGER: Flammable! Irritant!',
    --     weight = 600,
    --     usable = false,
    --     stack = 10,
    --     type = "Chemical"
    -- },

    --- In process ---
    ['meth_chemical_mix'] = {
        label = 'Chemical Mix',
        description = 'Mixture of various chemicals for meth production.',
        weight = 40,
        usable = false,
        stack = true
    },
    ['meth_cooked_base'] = {
        label = 'Cooked Meth Base',
        description = 'Base product for meth production, ready for crystallization.',
        weight = 40,
        usable = false,
        stack = true
    },
    ['meth_crystalized'] = {
        label = 'Crystalized Meth',
        description = 'Final product, ready for consumption or sale.',
        weight = 40,
        usable = false,
        stack = true,
    },

    --- Meth ---
    ['drug_meth'] = {
        label = 'Meth',
        description = 'Illicit drug known for its stimulant effects.',
        weight = 150,
        usable = true,
        stack = true
    },
    ['drug_meth_bagged'] = {
        label = 'Meth (Bagged)',
        description = 'Meth packaged for distribution.',
        weight = 20,
        usable = true,
        stack = true,
        degrade = 40320,
    },
    ['drug_meth_sale'] = {
        label = 'Meth Teenth',
        description = 'A teenth of meth, ready for sale.',
        weight = 2,
        usable = true,
        stack = true,
        degrade = 40320,
    },

    ['cold_medicine'] = {
        label = 'Cold Medicine',
        description = "Helpful when you're sick.",
        weight = 10,
        usable = false,
        stack = true,
        degrade = 40320,
    },

    ['card_harmony'] = {
        label = 'Keycard',
        description = 'Allows access to a secure area somewhere!',
        weight = 10,
        stack = false,
        usable = true
    },

    ----------------------------- STORAGE

    ['prop_storagebox'] = { --- slots = 20, weight = 35000,
        label = 'Storage Box',
        description = 'A Storage Box, placeable in the world',
        weight = 3900,
        rarity = "uncommon",
        stack = false,
        usable = true,
    },

    ['prop_txtstoragebox'] = { -- slots = 20, weight = 50000,
        label = 'Woven Chest',
        description = 'A Woven Chest, placeable in the world',
        weight = 6500,
        rarity = "uncommon",
        stack = false,
        usable = true,
    },

    ['prop_militarycrate'] = { -- slots = 50 weight = 150000,
        label = 'Military Crate',
        description = 'A Mlt. Crt., placeable in the world.',
        weight = 15000,
        rarity = "legendary",
        stack = false,
        usable = true,
    },
    ['prop_smallcrate'] = { -- slots = 35 weight = 75000,
        label = 'Small Military Crate',
        description = 'A Small Military Crate, placeable in the world.',
        weight = 7500,
        rarity = "epic",
        stack = false,
        usable = true,
    },

    ['prop_safe'] = {
        label = 'Safe', -- slots = 25, weight = 60000,
        description = 'A Safe, placeable in the world.',
        weight = 25000,
        rarity = "rare",
        stack = false,
        usable = true,
    },

    -- Fishing bait and rods
    ['chum'] = {
        label = 'Chum',
        description = 'A bucket of suspicious bait',
        weight = 300,
        rarity = "epic",
        stack = false,
        usable = false,
    },

    ['fishing_rod'] = {
        label = 'Fishing Rod',
        description = 'A Decent fishing rod used for well.. fishing I guess!',
        weight = 300,
        rarity = "common",
        stack = false,
        usable = true,
    },

    ['magnet_rod'] = {
        label = 'Magnet Rod',
        description = 'Used for magnet fishing to maybe find some treasures..',
        weight = 300,
        rarity = "rare",
        stack = false,
        usable = true,
    },

    ['magnet'] = {
        label = 'Magnet',
        description = 'A form of bait for certain fishing methods',
        weight = 300,
        rarity = "uncommon",
        stack = true,
        usable = false,
    },

    ['plugbait'] = {
        label = 'Plug Bait',
        description = 'A form of bait for certain fishing methods',
        weight = 30,
        rarity = "common",
        stack = true,
        usable = false,
    },

    ['softplasticbait'] = {
        label = 'Soft Plastic Bait',
        description = 'A form of bait for certain fishing methods',
        weight = 10,
        rarity = "common",
        stack = true,
        usable = false,
    },

    ['spinnerbait'] = {
        label = 'Spinner Bait',
        description = 'A form of bait for certain fishing methods',
        weight = 20,
        rarity = "common",
        stack = true,
        usable = false,
    },

    ['treasurechest'] = {
        label = 'Treasure Chest',
        description = 'Wonder what is inside this then?..',
        weight = 3000,
        rarity = "legendary",
        stack = false,
        usable = true,
    },

    ['worms'] = {
        label = 'Worms',
        description = 'Good cheap bait for specific fishing needs.',
        weight = 50,
        rarity = "common",
        stack = true,
        usable = false,
    },

    ['illegal_rod'] = {
        label = 'Illegal Fishing Rod',
        description = 'Blackmarket Fishing Rod.',
        weight = 50,
        rarity = "epic",
        stack = false,
        usable = true,
    },

    --------------------------------------- NEW FISHING ITEMS

    ['fish_crab'] = {
        label = "Dungeness Crab",
        type = "Crustacean",
        stack = 30,
        description = "A Dungeness Crab. Tastes pretty good.",
        weight = 500,
    },
    ['fish_lobster'] = {
        label = "Lobster",
        type = "Crustacean",
        stack = 30,
        description = "A Lobster. Did you know that they taste with their legs?",
        weight = 500,
    },
    ['fish_shrimp'] = {
        label = "Shrimp",
        type = "Crustacean",
        stack = 100,
        description = "HEY YOU! Yeah, YOU. Get over here you pathetic little shrimp. Don't try to scampi away!",
        weight = 25,
    },
    ['fish_snail'] = {
        label = "Snail",
        type = "Gastropod",
        stack = 100,
        description = "Its a snail. Slimy, slow and very tasty with garlic.",
        weight = 50,
    },
    ['fish_sturgeon'] = {
        label = "White Sturgeon",
        type = "Fish",
        stack = 10,
        illegal = true,
        description = "A White Sturgeon, an ancient beast. I AM A S(T)URGEON!! It is an extremely rare and difficult catch. It is a protected species in San Andreas.",
        weight = 1000,
    },
    ['fish_leopshark'] = {
        label = "Leopard Shark",
        type = "Shark",
        stack = 1,
        illegal = true,
        description = "A Leopard Shark. It is an extremely rare and difficult catch. It is a protected species in San Andreas.",
        weight = 2000,
    },
    ['fish_sawshark'] = {
        label = "Shortnose Sawshark",
        type = "Shark",
        stack = 1,
        illegal = true,
        description = "A Shortnose Sawshark. It is a extremely difficult catch. It is a protected species in San Andreas.",
        weight = 1500,
    },
    ['fish_thornguitar'] = {
        label = "Thornback Guitarfish",
        type = "Ray",
        stack = 5,
        illegal = true,
        description = "A Thornback Guitarfish. It is a very difficult catch. It is a protected species in San Andreas.",
        weight = 800,
    },
    ['fish_cownray'] = {
        label = "Cownose Ray",
        type = "Ray",
        stack = 1,
        illegal = true,
        description = "A Cownose Ray. It is an extremely difficult catch. It is a protected species in San Andreas.",
        weight = 1500,
    },
    ['fish_roundsray'] = {
        label = "Round Stingray",
        type = "Ray",
        stack = 1,
        illegal = true,
        description = "A Round Stingray. It is a very difficult catch. It is a protected species in San Andreas.",
        weight = 1500,
    },
    ['fish_pondturtle'] = {
        label = "Pond Turtle",
        type = "Turtle",
        stack = 5,
        illegal = true,
        description = "A Pond Turtle. It is a very difficult catch. It is a protected species in San Andreas.",
        weight = 500,
    },
    ['fish_bateagler'] = {
        label = "Bat Ray",
        type = "Ray",
        stack = 1,
        illegal = true,
        description = "A Bat Ray. It is an easy catch. It is a protected species in San Andreas.",
        weight = 1500,
    },
    ['fish_pike'] = {
        label = "Northern Pike",
        type = "Fish",
        stack = 1,
        description = "A Northern Pike. It is an extremely difficult catch.",
        weight = 1500,
    },
    ['fish_zander'] = {
        label = "Zander",
        type = "Fish",
        stack = 20,
        description = "A Zander. It is a very difficult catch.",
        weight = 500,
    },
    ['fish_mackerel'] = {
        label = "Mackerel",
        type = "Fish",
        stack = 20,
        description = "A Mackerel. It is a very easy catch.",
        weight = 500,
    },
    ['fish_altcrayfish'] = {
        label = "Crayfish",
        type = "Crustacean",
        stack = 20,
        description = "A nasty Crayfish. It looks like it was ill. It is a very easy catch.",
        weight = 500,
    },
    ['fish_commoncarp'] = {
        label = "Common Carp",
        type = "Fish",
        stack = 20,
        description = "A Common Carp. It is a common catch.",
        weight = 500,
    },
    ['fish_halibut'] = {
        label = "Halibut",
        type = "Fish",
        stack = 20,
        description = "A Halibut. It is a very difficult catch.",
        weight = 500,
    },
    ['fish_blacktipshark'] = {
        label = "Blacktip Shark",
        type = "Shark",
        stack = 1,
        description = "A Blacktip Shark. Yes you caught a shark. It is an extremely rare and difficult catch.",
        weight = 2000,
    },
    ['fish_steelhead'] = {
        label = "Steelhead",
        type = "Fish",
        stack = 20,
        description = "A Steelhead. It is a pretty difficult catch.",
        weight = 500,
    },
    ['fish_commonskate'] = {
        label = "Common Skate",
        type = "Ray",
        stack = 5,
        illegal = true,
        description = "A Common Skate. It is a pretty difficult catch. It is a protected species in San Andreas.",
        weight = 800,
    },
    ['fish_black_crappie'] = {
        label = "Black Crappie",
        type = "Fish",
        stack = 20,
        description = "A Black Crappie. It is a very easy catch.",
        weight = 500,
    },

    ['fish_haddock'] = {
        label = "Haddock",
        type = "Fish",
        stack = 20,
        description = "A Haddock. It is a pretty difficult catch.",
        weight = 500,
    },
    ['fish_goldentrout'] = {
        label = "Golden Trout",
        type = "Fish",
        stack = 20,
        description = "A Golden Trout. It is an easy catch.",
        weight = 500,
    },
    ['fish_cod'] = {
        label = "Pacific Cod",
        type = "Fish",
        stack = 20,
        description = "A Pacific Cod. It is an easy catch.",
        weight = 500,
    },
    ['fish_hake'] = {
        label = "Hake",
        type = "Fish",
        stack = 20,
        description = "A Hake. It is a pretty difficult catch.",
        weight = 500,
    },
    ['fish_yellowperch'] = {
        label = "Yellow Perch",
        type = "Fish",
        stack = 20,
        description = "A Yellow Perch. It is a pretty difficult catch.",
        weight = 500,
    },
    ['fish_thicktail_chub'] = {
        label = "Thicktail Chub",
        type = "Fish",
        stack = 20,
        description = "A Thicktail Chub. It is a very difficult catch. People thought this species had died out in the 50s until it mysteriously reappeared in San Andreas 50 years later.",
        weight = 500,
    },
    ['fish_catfish'] = {
        label = "Flathead Catfish",
        type = "Fish",
        stack = 20,
        description = "A Flathead Catfish. It is a very difficult catch.",
        weight = 500,
    },
    ['fish_altbream'] = {
        label = "Gilt-Head Bream",
        type = "Fish",
        stack = 20,
        description = "A nasty Gilt-Head Bream. A hardy little fish also known as Dorada. It looks like it was ill. It is an easy catch.",
        weight = 500,
    },
    ['fish_crayfish'] = {
        label = "Crayfish",
        type = "Crustacean",
        stack = 20,
        description = "A Crayfish. It is a very easy catch.",
        weight = 500,
    },
    ['fish_yellowfin_tuna'] = {
        label = "Yellowfin Tuna",
        type = "Fish",
        stack = 1,
        description = "A Yellowfin Tuna. It is an extremely difficult catch.",
        weight = 1500,
    },
    ['fish_altmoztilapia'] = {
        label = "Mozambique Tilapia",
        type = "Fish",
        stack = 20,
        description = "A nasty Mozambique Tilapia. It looks like it was ill. It is a very easy catch.",
        weight = 500,
    },
    ['fish_lmouthbass'] = {
        label = "Largemouth Bass",
        type = "Fish",
        stack = 5,
        description = "A Largemouth Bass. It is an extremely rare and difficult catch.",
        weight = 1000,
    },
    ['fish_black_croaker'] = {
        label = "Black Croaker",
        type = "Fish",
        stack = 20,
        description = "A Black Croaker. It is an extremely difficult catch.",
        weight = 500,
    },
    ['fish_pacificrockfish'] = {
        label = "Pacific Rockfish",
        type = "Fish",
        stack = 20,
        description = "A Pacific Rockfish, also called a Pacific Ocean Perch or Red Perch. It is a very easy catch.",
        weight = 500,
    },
    ['fish_bluegill'] = {
        label = "Blue Gill",
        type = "Fish",
        stack = 20,
        description = "A Blue Gill. It is a very easy catch.",
        weight = 500,
    },
    ['fish_skatrout'] = {
        label = "Skamania Steelhead",
        type = "Fish",
        stack = 20,
        description = "A Skamania Steelhead. An extremely rare and difficult catch.",
        weight = 500,
    },
    ['fish_rainbowtrout'] = {
        label = "Rainbow Trout",
        type = "Fish",
        stack = 20,
        description = "A Rainbow Trout. A quiet acrobatic fish. It is an easy catch.",
        weight = 500,
    },
    ['fish_browntrout'] = {
        label = "Brown Trout",
        type = "Fish",
        stack = 20,
        description = "A Brown Trout. It is an easy catch.",
        weight = 500,
    },
    ['fish_altbrowntrout'] = {
        label = "Brown Trout",
        type = "Fish",
        stack = 20,
        description = "A Brown Trout. It looks like it was ill. It is an easy catch.",
        weight = 500,
    },
    ['fish_alaskapollock'] = {
        label = "Alaska Pollock",
        type = "Fish",
        stack = 20,
        description = "An Alaska Pollock. In Germany the fish is sold deviously under the misleading name 'Alaska Sea Salmon'. If you buy fish sticks, its probably pollock. It is a pretty difficult catch.",
        weight = 500,
    },
    ['fish_prickleback'] = {
        label = "Prickleback",
        type = "Fish",
        stack = 20,
        description = "A Monkeyface Prickleback. No it's not an eel. It is an easy catch.",
        weight = 500,
    },
    ['fish_pumpkinseed'] = {
        label = "Pumpkinseed",
        type = "Fish",
        stack = 20,
        description = "A Pumpkinseed is also known as pond perch, punkie, common sunfish, sunny or kivver. It is a pretty difficult catch.",
        weight = 500,
    },
    ['fish_blackfin_tuna'] = {
        label = "Blackfin Tuna",
        type = "Fish",
        stack = 5,
        description = "A Blackfin Tuna. It is an easy catch.",
        weight = 900,
    },
    ['fish_anchovy'] = {
        label = "Northern Anchovy",
        type = "Fish",
        stack = 20,
        description = "A Northern Anchovy. It is a very easy catch.",
        weight = 500,
    },
    ['fish_moztilapia'] = {
        label = "Mozambique Tilapia",
        type = "Fish",
        stack = 20,
        description = "A Mozambique Tilapia. It is an easy catch.",
        weight = 500,
    },
    ['fish_white_crappie'] = {
        label = "White Crappie",
        type = "Fish",
        stack = 20,
        description = "A White Crappie. It is a very easy catch.",
        weight = 500,
    },
    ['fish_amurcatfish'] = {
        label = "Amur Catfish",
        type = "Fish",
        stack = 5,
        description = "An Amur Catfish. Native to east asia some must have been released here. It is an extremely rare and difficult catch.",
        weight = 1000,
    },
    ['fish_sockeye_salmon'] = {
        label = "Sockeye Salmon",
        type = "Fish",
        stack = 10,
        description = "A Sockeye Salmon. It is an extremely rare and difficult catch.",
        weight = 800,
    },
    ['fish_bream'] = {
        label = "Gilt-Head Bream",
        type = "Fish",
        stack = 20,
        description = "A Gilt-Head Bream. A hardy little fish also known as Dorada. It is a pretty difficult catch.",
        weight = 500,
    },
    ['fish_smouthbass'] = {
        label = "Smallmouth Bass",
        type = "Fish",
        stack = 20,
        description = "A Smallmouth Bass. It is a very easy catch.",
        weight = 500,
    },
    ['fish_salmon'] = {
        label = "Chinook Salmon",
        type = "Fish",
        stack = 20,
        description = "A Chinook Salmon. It is an easy catch.",
        weight = 500,
    },
    ['fish_bluemarlin'] = {
        label = "Blue Marlin",
        type = "Fish",
        stack = 1,
        description = "A Blue Marlih. It is an extremely rare and difficult catch.",
        weight = 1500,
    },

    ---------------------------- DA JEWELS

    ['jewelry_silverring'] = {
        label = "Silver Ring",
        type = "Jewelry",
        -- jewelry = 1000, -- Jewelry value
        description = "A Silver Ring. You could sell it at your closest pawn shop. But better not do it if it’s a family heirloom or something.",
        weight = 10,
        stack = false,
        rarity = "rare"
    },
    ['jewelry_goldring'] = {
        label = "Gold Ring",
        type = "Jewelry",
        -- jewelry = 2500, -- Jewelry value
        description = "A Gold Ring. You could sell it at your closest pawn shop. But better not do it if it’s a family heirloom or something.",
        weight = 20,
        stack = false,
        rarity = "rare"
    },
    ['jewelry_diamondring'] = {
        label = "Diamond Ring",
        type = "Jewelry",
        -- jewelry = 5000, -- Jewelry value
        description = "A Diamond Ring. You can wear it or sell them at your closest pawn shop.",
        weight = 30,
        stack = false,
        rarity = "epic"
    },
    ['jewelry_silverearrings'] = {
        label = "Silver Ear Rings",
        type = "Earrings",
        -- jewelry = 1500, -- Jewelry value
        description = "Silver Ear Rings. You can wear them or sell them at your closest pawn shop.",
        weight = 30,
        stack = false,
        rarity = "rare"
    },
    ['jewelry_goldearrings'] = {
        label = "Gold Ear Rings",
        type = "Earrings",
        -- jewelry = 3000, -- Jewelry value
        description = "Gold Ear Rings. You can wear them or sell them at your closest pawn shop.",
        weight = 35,
        stack = false,
        rarity = "rare"
    },
    ['jewelry_diamondearrings'] = {
        label = "Diamond Ear Rings",
        type = "Earrings",
        -- jewelry = 8000, -- Jewelry value
        description = "Diamond Ear Rings. You can wear them or sell them at your closest pawn shop.",
        weight = 45,
        stack = false,
        rarity = "epic"
    },
    ['jewelry_silverbracelet'] = {
        label = "Silver Bracelet",
        type = "Watch",
        -- jewelry = 2000, -- Jewelry value
        description = "A Silver Bracelet. You could sell it at your closest pawn shop. But better not do it if it’s a family heirloom or something.",
        weight = 150,
        stack = false,
        rarity = "rare"
    },
    ['jewelry_goldbracelet'] = {
        label = "Gold Bracelet",
        type = "Watch",
        -- jewelry = 4000, -- Jewelry value
        description = "A Gold Bracelet. You could sell it at your closest pawn shop. But better not do it if it’s a family heirloom or something.",
        weight = 150,
        stack = false,
        rarity = "rare"
    },
    ['jewelry_diamondbracelet'] = {
        label = "Diamond Bracelet",
        type = "Watch",
        -- jewelry = 8000, -- Jewelry value
        description = "A Diamond Bracelet. You could sell it at your closest pawn shop. But better not do it if it’s a family heirloom or something.",
        weight = 300,
        stack = false,
        rarity = "epic"
    },
    ['jewelry_silvernecklace'] = {
        label = "Silver Necklace",
        type = "Necklace",
        -- jewelry = 3000, -- Jewelry value
        description = "A Silver Necklace You could sell it at your closest pawn shop. But better not do it if it’s a family heirloom or something.",
        weight = 500,
        stack = false,
        rarity = "rare"
    },
    ['jewelry_goldnecklace'] = {
        label = "Gold Necklace",
        type = "Necklace",
        -- jewelry = 6000, -- Jewelry value
        description = "A Gold Necklace. You could sell it at your closest pawn shop. But better not do it if it’s a family heirloom or something.",
        weight = 800,
        stack = false,
        rarity = "epic"
    },
    ['jewelry_pearlnecklace'] = {
        label = "Pearl Necklace",
        type = "Necklace",
        -- jewelry = 10000, -- Jewelry value
        description = "A Pearl Necklace. You could sell it at your closest pawn shop. But better not do it if it’s a family heirloom or something.",
        weight = 900,
        stack = false,
        rarity = "epic"
    },
    ['jewelry_diamondnecklace'] = {
        label = "Diamond Necklace",
        type = "Necklace",
        -- jewelry = 12000, -- Jewelry value
        description = "A Diamond Necklace. You could sell it at your closest pawn shop. But better not do it if it’s a family heirloom or something.",
        weight = 1000,
        stack = false,
        rarity = "epic"
    },

    ['jewelry_silverwatch'] = {
        label = "Silver Watch",
        type = "Jewelry",
        -- jewelry = 3750, -- Jewelry value
        description = "A Silver Watch. You could sell it at your closest pawn shop. But better not do it if it’s a family heirloom or something.",
        weight = 110,
        stack = false,
        rarity = "rare"
    },
    ['jewelry_goldwatch'] = {
        label = "Gold Watch",
        type = "Jewelry",
        -- jewelry = 7500, -- Jewelry value
        description = "A Gold Watch. You could sell it at your closest pawn shop. But better not do it if it’s a family heirloom or something.",
        weight = 110,
        stack = false,
        rarity = "epic"
    },
    ['jewelry_diamondwatch'] = {
        label = "Diamond Watch",
        type = "Jewelry",
        -- jewelry = 15000, -- Jewelry value
        description = "A Diamond Watch. You could sell it at your closest pawn shop. But better not do it if it’s a family heirloom or something.",
        weight = 180,
        stack = false,
        rarity = "epic"
    },

    -- Crypto Mining Items
    ['serverrack'] = {
        label = 'Server Rack',
        weight = 30000,
        stack = true,
        close = true,
        description = 'I could build something cool with this..',
        client = {
            image = 'serverrack.webp'
        }
    },

    ['smallsafe'] = {
        label = 'Small Safe',
        weight = 15000,
        stack = true,
        close = true,
        description = 'A compact safe for secure storage.',
        client = {
            image = 'small_safe.png'
        }
    },

    ['largesafe'] = {
        label = 'Large Safe',
        weight = 30000,
        stack = true,
        close = true,
        description = 'A large safe for secure storage.',
        client = {
            image = 'prop_safe.png'
        }
    },

    ['lowendgpu'] = {
        label = 'Low-End GPU',
        weight = 500,
        stack = true,
        description = 'Budget performance..',
        client = {
            image = 'lowendgpu.webp'
        },
        degrade = 1
    },

    ['midrangegpu'] = {
        label = 'Mid-Range GPU',
        weight = 500,
        stack = true,
        description = 'Affordable performance..',
        client = {
            image = 'highendgpu.webp'
        },
        degrade = 1
    },

    ['highendgpu'] = {
        label = 'High-End GPU',
        weight = 500,
        stack = true,
        description = 'Not so affordable performance..',
        client = {
            image = 'highendgpu.webp'
        },
        degrade = 1
    },

    -- Criminal: Sign robbery items
    ['stopsign'] = {
        label = 'Stop Sign',
        weight = 5000,
        stack = false,
        close = true,
        description = 'A stolen road sign.'
    },
    ['walkingmansign'] = {
        label = 'Walking Man Sign',
        weight = 5000,
        stack = false,
        close = true,
        description = 'A stolen road sign.'
    },
    ['dontblockintersectionsign'] = {
        label = "Don't Block Intersection Sign",
        weight = 5000,
        stack = false,
        close = true,
        description = 'A stolen road sign.'
    },
    ['uturnsign'] = {
        label = 'U Turn Sign',
        weight = 5000,
        stack = false,
        close = true,
        description = 'A stolen road sign.'
    },
    ['noparkingsign'] = {
        label = 'No Parking Sign',
        weight = 5000,
        stack = false,
        close = true,
        description = 'A stolen road sign.'
    },
    ['leftturnsign'] = {
        label = 'Left Turn Sign',
        weight = 5000,
        stack = false,
        close = true,
        description = 'A stolen road sign.'
    },
    ['rightturnsign'] = {
        label = 'Right Turn Sign',
        weight = 5000,
        stack = false,
        close = true,
        description = 'A stolen road sign.'
    },
    ['notrespassingsign'] = {
        label = 'No Trespassing Sign',
        weight = 5000,
        stack = false,
        close = true,
        description = 'A stolen road sign.'
    },
    ['yieldsign'] = {
        label = 'Yield Sign',
        weight = 5000,
        stack = false,
        close = true,
        description = 'A stolen road sign.'
    },

    -- Placeable Moneywash Items
    ['oldmoneywash'] = {
        label = 'T100 Money Washer',
        weight = 15000,
        stack = false,
        close = true,
        description = 'A portable money washing machine. Slower but cheaper to operate.',
        client = {
            image = 'oldmoneywash.png'
        }
    },

    ['deluxemoneywash'] = {
        label = 'T2000 Money Washer',
        weight = 15000,
        stack = false,
        close = true,
        description = 'A premium portable money washing machine. Faster and more efficient.',
        client = {
            image = 'deluxemoneywash.png'
        }
    },

    -- Casino Items
    ['casino_chip'] = {
        label = 'Betting Chips',
        weight = 3,
        stack = true,
        close = false,
        description = 'Diamond Casino Chips',
        client = {
            image = 'casino_chip.png'
        }
    },

    ['casino_member'] = {
        label = 'Member Card',
        weight = 50,
        stack = false,
        close = false,
        description = 'Diamond Casino Membership Card',
        client = {
            image = 'casino_member.png'
        }
    },

    ['casino_vip'] = {
        label = 'V.I.P Pass',
        weight = 70,
        stack = false,
        close = false,
        description = 'Diamond Casino V.I.P ALL ACCESS Pass',
        client = {
            image = 'casino_vip.png'
        }
    },

	-- Weed Items
	['weedplant_seedm'] = {
		label = 'Male Weed Seed',
		weight = 1,
		stack = true,
		close = true,
		description = 'Male cannabis seed used for pollination.'
	},

	['weedplant_seedf'] = {
		label = 'Female Weed Seed',
		weight = 1,
		stack = true,
		close = true,
		description = 'Female cannabis seed used to grow bud-producing plants.'
	},

	['plant_tub'] = {
		label = 'Plant Tub',
		weight = 1000,
		stack = true,
		close = true,
		description = 'Plastic tub for planting and growing.'
	},

	['empty_watering_can'] = {
		label = 'Empty Watering Can',
		weight = 300,
		stack = true,
		close = true,
		description = 'Empty watering can. Fill it with water.'
	},

	['full_watering_can'] = {
		label = 'Full Watering Can',
		weight = 500,
		stack = true,
		close = true,
		description = 'Watering can filled with water.'
	},

	['weed_nutrition'] = {
		label = 'Weed Nutrition',
		weight = 200,
		stack = true,
		close = true,
		description = 'Plant nutrients to improve growth and health.'
	},

	['shears'] = {
		label = 'Shears',
		weight = 250,
		stack = false,
		close = true,
		description = 'Harvesting shears for trimming and cutting plants.'
	},

	['dry_skunk'] = {
		label = 'Skunk Bud',
		weight = 10,
		stack = true,
		close = true,
		description = 'Dried skunk cannabis bud.'
	},

	-- Meth Items
	['pseudoephedrine'] = {
		label = 'Pseudoephedrine',
		weight = 50,
		stack = true,
		close = true,
		description = 'Chemical precursor used for meth production.'
	},

    ['acetone'] = {
		label = 'Acetone',
		weight = 50,
		stack = true,
		close = true,
		description = 'Flammable liquid used for meth production.'
	},

	['lithium'] = {
		label = 'Lithium',
		weight = 50,
		stack = true,
		close = true,
		description = 'Reactive metal used during meth cooking.'
	},

	['red_phosphorus'] = {
		label = 'Red Phosphorus',
		weight = 50,
		stack = true,
		close = true,
		description = 'Chemical used during meth production.'
	},

    ['tripwire'] = {
        label = 'Tripwire',
        weight = 500,
    },

	['liquid_meth'] = {
		label = 'Liquid Meth',
		weight = 200,
		stack = true,
		close = true,
		description = 'Unfinished meth mixture ready for tray processing.'
	},

	['baking_tray'] = {
		label = 'Baking Tray',
		weight = 750,
		stack = false,
		close = true,
		description = 'Tray used to set liquid meth before freezing.'
	},

	['meth_tray'] = {
		label = 'Meth Tray',
		weight = 600,
		stack = true,
		close = true,
		description = 'Prepared meth tray ready to be frozen.'
	},

	['frozen_meth_tray'] = {
		label = 'Frozen Meth Tray',
		weight = 600,
		stack = true,
		close = true,
		description = 'Frozen meth tray ready to be smashed and bagged.'
	},

	['big_meth_bag'] = {
		label = 'Bag of Meth',
		weight = 250,
		stack = true,
		close = true,
		description = 'Bag of processed meth.'
	},

	-- Coke Items
	['coke_leaf'] = {
		label = 'Coke Leaf',
		weight = 10,
		stack = true,
		close = true,
		description = 'Coca leaves used for cocaine processing.'
	},

	['gasoline'] = {
		label = 'Gasoline',
		weight = 200,
		stack = true,
		close = true,
		description = 'Flammable chemical used during cocaine processing.'
	},

	['sodium_bicarbonate'] = {
		label = 'Sodium Bicarbonate',
		weight = 50,
		stack = true,
		close = true,
		description = 'Cutting agent used during cocaine processing.'
	},

	['coke_box'] = {
		label = 'Coke Box',
		weight = 500,
		stack = true,
		close = true,
		description = 'Box of processed coca ready for pouring.'
	},

	['coke_raw'] = {
		label = 'Raw Coke',
		weight = 100,
		stack = true,
		close = true,
		description = 'Raw cocaine that still needs cleaning.'
	},

	['coke_pure'] = {
		label = 'Pure Coke',
		weight = 100,
		stack = true,
		close = true,
		description = 'Cleaned cocaine ready for packaging.'
	},

	['coke_figureempty'] = {
		label = 'Empty Coke Figure Mold',
		weight = 800,
		stack = false,
		close = true,
		description = 'Empty mold used to press cocaine into a figure.'
	},

	['coke_figure'] = {
		label = 'Coke Figure',
		weight = 1000,
		stack = true,
		close = true,
		description = 'Pressed cocaine figure ready for sale.'
	},

	-- Moonshine Items
	['moonshine_still'] = {
		label = 'Moonshine Still',
		weight = 5000,
		stack = false,
		close = true,
		description = 'Portable still used to cook moonshine.'
	},

	['moonshine'] = {
		label = 'Moonshine',
		weight = 300,
		stack = true,
		close = true,
		description = 'Homemade alcohol distilled from a still.'
	},
    ['slimjim'] = {
		label = 'Slim Jim',
		weight = 300,
		stack = true,
		close = true,
		description = 'Used for unlucking vehicles'
	},

	['sugar'] = {
		label = 'Sugar',
		weight = 100,
		stack = true,
		close = true,
		description = 'Fermentation ingredient used for moonshine recipes.'
	},

	['yeast'] = {
		label = 'Yeast',
		weight = 100,
		stack = true,
		close = true,
		description = 'Fermentation ingredient used for moonshine recipes.'
	},

    ["fleeca_case"] = {
    label = "Fleeca Bank Case",
    weight = 2000,
    stack = true,
    close = true,
    description = "A mysterious case from a Fleeca Bank heist. Contains random loot.",
    consume = 0,
    client = {
        image = "case_1.png",
    },
    server = {
        export = 'cases.useFleeca_case',
    }
},

["house_case"] = {
    label = "House Robbery Case",
    weight = 2000,
    stack = true,
    close = true,
    description = "A case filled with items from house burglaries. Contents unknown.",
    consume = 0,
    client = {
        image = "case_2.png",
    },
    server = {
        export = 'cases.useHouse_case',
    }
},

["chopshop_case"] = {
    label = "Chop Shop Case",
    weight = 2500,
    stack = true,
    close = true,
    description = "A case containing random car parts from the chop shop.",
    consume = 0,
    client = {
        image = "case_3.png",
    },
    server = {
        export = 'cases.useChopshop_case',
    }
},

["jewelry_case"] = {
    label = "Jewelry Store Case",
    weight = 1500,
    stack = true,
    close = true,
    description = "A luxury case from Vangelico's. May contain valuable jewelry.",
    consume = 0,
    client = {
        image = "case_4.png",
    },
    server = {
        export = 'cases.useJewelry_case',
    }
},

["pacific_case"] = {
    label = "Pacific Bank Case",
    weight = 3000,
    stack = true,
    close = true,
    description = "A high-security case from the Pacific Standard vault. Extremely valuable.",
    consume = 0,
    client = {
        image = "case_5.png",
    },
    server = {
        export = 'cases.usePacific_case',
    }
},

["casino_case"] = {
    label = "Casino Heist Case",
    weight = 2500,
    stack = true,
    close = true,
    description = "A case stolen from the Diamond Casino vault. Contains premium loot.",
    consume = 0,
    client = {
        image = "case_6.png",
    },
    server = {
        export = 'cases.useCasino_case',
    }
},

    ['container_cutter'] = {
		label = 'Container Cutter',
		weight = 100,
		stack = true,
		close = true,
		description = 'Tool used to cut containers'
	},

    ['boosting_vpn'] = {
		label = 'Boosting VPN',
		weight = 100,
		stack = true,
		close = true,
		description = 'VPN used for boosting activities'
	},

    ['ket'] = {
		label = 'Ketamine',
		weight = 100,
		stack = true,
		close = true,
		description = 'Ketamine for recreational use'
	},

    ['id_card'] = {
      label = 'Identification Card',
      rarity = 1,
    },
    ['driver_license'] = {
      label = 'Drivers License',
      rarity = 1,
    },
    ['weaponlicense'] = {
      label = 'Weapon License',
      rarity = 2,
    },
    ['hunterlicense'] = {
      label = 'Hunting License',
      rarity = 2,
    },
    ['lawyerpass'] = {
      label = 'Lawyer Pass',
      rarity = 2,
    },
    ['policebadge'] = {
      label = 'Police Badge',
      rarity = 2,
    },
    ['ambulancebadge'] = {
      label = 'Ambulance ID',
      rarity = 2,
    },
    ['highwaysbadge'] = {
      label = 'Highways  ID',
      rarity = 2,
    },

    ["stolen_package"] = {
        label = "Stolen Package",
        weight = 100,
        stack = false,
        close = false,
        description = "Could be valuable?",
        server = {
            export = 'pettycrimes.stolen_package'
        },
    },

	-- Grave Robbing Items
	['gravebook'] = {
		label = 'Old Book',
		weight = 200,
		stack = true,
		description = 'An old book found in a grave.',
		client = {
			image = 'gravebook.webp',
		},
	},

	['gravebowl'] = {
		label = 'Ancient Bowl',
		weight = 150,
		stack = true,
		description = 'A weathered bowl from a grave.',
		client = {
			image = 'gravebowl.webp',
		},
	},

	['gravebrokenpot'] = {
		label = 'Broken Pot',
		weight = 100,
		stack = true,
		description = 'A broken ceramic pot found in a grave.',
		client = {
			image = 'gravebrokenpot.webp',
		},
	},

	['gravebrokenwatch'] = {
		label = 'Broken Watch',
		weight = 50,
		stack = true,
		description = 'A broken timepiece from a grave.',
		client = {
			image = 'gravebrokenwatch.webp',
		},
	},

	['gravecan'] = {
		label = 'Rusty Can',
		weight = 75,
		stack = true,
		description = 'An old rusted can from a grave.',
		client = {
			image = 'gravecan.webp',
		},
	},

	['gravecloth'] = {
		label = 'Tattered Cloth',
		weight = 50,
		stack = true,
		description = 'A piece of old cloth from a grave.',
		client = {
			image = 'gravecloth.webp',
		},
	},

	['gravedogbones'] = {
		label = 'Dog Bones',
		weight = 200,
		stack = true,
		description = 'Bones from a dog found in a grave.',
		client = {
			image = 'gravedogbones.webp',
		},
	},

	['gravehorseshoe'] = {
		label = 'Old Horseshoe',
		weight = 300,
		stack = true,
		description = 'A weathered horseshoe from a grave.',
		client = {
			image = 'gravehorseshoe.webp',
		},
	},

	['gravehumanbones'] = {
		label = 'Human Bones',
		weight = 500,
		stack = true,
		description = 'Human bones found in a grave.',
		client = {
			image = 'gravehumanbones.webp',
		},
	},

	['gravehumanbones2'] = {
		label = 'Human Bones (Fragment)',
		weight = 300,
		stack = true,
		description = 'Fragment of human bones from a grave.',
		client = {
			image = 'gravehumanbones2.webp',
		},
	},

	['graveloveletter'] = {
		label = 'Love Letter',
		weight = 10,
		stack = true,
		description = 'An old love letter found in a grave.',
		client = {
			image = 'graveloveletter.webp',
		},
	},

	['graveoldlamp'] = {
		label = 'Old Lamp',
		weight = 400,
		stack = true,
		description = 'An antique lamp from a grave.',
		client = {
			image = 'graveoldlamp.webp',
		},
	},

	['graveoldnote'] = {
		label = 'Old Note',
		weight = 5,
		stack = true,
		description = 'A handwritten note from a grave.',
		client = {
			image = 'graveoldnote.webp',
		},
	},

	['graverustykey'] = {
		label = 'Rusty Key',
		weight = 25,
		stack = true,
		description = 'A rusted key found in a grave.',
		client = {
			image = 'graverustykey.webp',
		},
	},

	['graveshoe'] = {
		label = 'Old Shoe',
		weight = 200,
		stack = true,
		description = 'A worn shoe from a grave.',
		client = {
			image = 'graveshoe.webp',
		},
	},

	['gravesodacan'] = {
		label = 'Soda Can',
		weight = 50,
		stack = true,
		description = 'An old soda can from a grave.',
		client = {
			image = 'gravesodacan.webp',
		},
	},

	['graverustynail'] = {
		label = 'Rusty Nail',
		weight = 10,
		stack = true,
		description = 'A rusted nail from a grave.',
		client = {
			image = 'rustynail.webp',
		},
	},

	-- Rare Grave Robbing Items
	['gravecoin'] = {
		label = 'Ancient Coin',
		weight = 5,
		stack = true,
		description = 'A rare ancient coin found in a grave.',
		client = {
			image = 'gravecoin.webp',
		},
	},

	['gravegoblet'] = {
		label = 'Golden Goblet',
		weight = 300,
		stack = true,
		description = 'A valuable golden goblet from a grave.',
		client = {
			image = 'gravegoblet.webp',
		},
	},

	['gravegoldring'] = {
		label = 'Gold Ring',
		weight = 10,
		stack = true,
		description = 'A valuable gold ring found in a grave.',
		client = {
			image = 'gravegoldring.webp',
		},
	},

	['gravenecklace'] = {
		label = 'Ancient Necklace',
		weight = 50,
		stack = true,
		description = 'A precious necklace from a grave.',
		client = {
			image = 'gravenecklace.webp',
		},
	},

	['gravewatch'] = {
		label = 'Antique Watch',
		weight = 100,
		stack = true,
		description = 'A valuable antique watch from a grave.',
		client = {
			image = 'gravewatch.webp',
		},
	},

    ['delivery_package'] = {
		label = 'Delivery Package',
		weight = 100,
		stack = true,
		description = 'A mysterious package delivered to your doorstep.',
		client = {
			image = 'delivery_package.webp',
		},
	},

    ["hb_classic_burger"] = {
    label = "Classic Burger",
    weight = 1,
    client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
},
["hb_spicy_burger"] = {
    label = "Spicy Burger",
    weight = 1,
    client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
},
["hb_cheesy_burger"] = {
    label = "Cheesy Burger",
    weight = 1,
    client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
},
["hb_bacon_burger"] = {
    label = "Bacon Burger",
    weight = 1,
    client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
},
["hb_double_burger"] = {
    label = "Double Burger",
    weight = 1,
    client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
},
["hb_milkshake"] = {
    label = "Milkshake",
    weight = 1,
    client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		},
},
["hb_lemonade"] = {
    label = "Lemonade",
    weight = 1,
    stack = true,
    close = true,
},
["hb_iced_coffee"] = {
    label = "Iced Coffee",
    weight = 1,
    client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		},
},
["hb_smoothie"] = {
    label = "Smoothie",
    weight = 1,
    client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		},
},
["hb_energy_drink"] = {
    label = "Energy Drink",
    weight = 1,
    client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		},
},
["hb_classic_fries"] = {
    label = "Classic Fries",
    weight = 1,
    client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
},
["hb_cheesy_fries"] = {
    label = "Cheesy Fries",
    weight = 1,
    client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
},
["hb_spicy_fries"] = {
    label = "Spicy Fries",
    weight = 1,
    client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
},
["hb_bacon_fries"] = {
    label = "Bacon Fries",
    weight = 1,
    client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
},
["hb_loaded_fries"] = {
    label = "Loaded Fries",
    weight = 1,
    client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
},
["hb_cola"] = {
    label = "Cola",
    weight = 1,
    client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		},
},
["hb_root_beer"] = {
    label = "Root Beer",
    weight = 1,
    client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		},
},
["hb_orange_soda"] = {
    label = "Orange Soda",
    weight = 1,
    client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		},
},
["hb_grape_soda"] = {
    label = "Grape Soda",
    weight = 1,
    client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		},
},
["hb_lemonlime"] = {
    label = "Lemon-Lime",
    weight = 1,
    client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		},
},
["hb_bun"] = {
    label = "Burger Bun",
    weight = 1,
    stack = true,
    close = true,
},
["hb_sauce"] = {
    label = "Horny Sauce",
    weight = 1,
    stack = true,
    close = true,
},
["hb_jalapeno_relish"] = {
    label = "Jalapeno Relish",
    weight = 1,
    stack = true,
    close = true,
},
["hb_melted_cheddar"] = {
    label = "Melted Cheddar",
    weight = 1,
    stack = true,
    close = true,
},
["hb_crispy_bacon"] = {
    label = "Crispy Bacon",
    weight = 1,
    stack = true,
    close = true,
},
["hb_double_beef_patty"] = {
    label = "Double Beef Patty",
    weight = 1,
    stack = true,
    close = true,
},
["hb_bbq_sauce"] = {
    label = "Special BBQ Sauce",
    weight = 1,
    stack = true,
    close = true,
},
["hb_milk"] = {
    label = "Milk",
    weight = 1,
    stack = true,
    close = true,
},
["hb_chocolate_syrup"] = {
    label = "Chocolate Syrup",
    weight = 1,
    stack = true,
    close = true,
},
["hb_fresh_lemon_juice"] = {
    label = "Fresh Lemon",
    weight = 1,
    stack = true,
    close = true,
},
["hb_mint_infusion"] = {
    label = "Mint Infusion",
    weight = 1,
    stack = true,
    close = true,
},
["hb_coffee"] = {
    label = "Coffee",
    weight = 1,
    stack = true,
    close = true,
},
["hb_caramel_drizzle"] = {
    label = "Caramel Drizzle",
    weight = 1,
    stack = true,
    close = true,
},
["hb_mixed_berries"] = {
    label = "Mixed Berries",
    weight = 1,
    stack = true,
    close = true,
},
["hb_honey"] = {
    label = "Honey",
    weight = 1,
    stack = true,
    close = true,
},
["hb_caffeine_base"] = {
    label = "Caffeine Base",
    weight = 1,
    stack = true,
    close = true,
},
["hb_citrus_blend"] = {
    label = "Citrus Blend",
    weight = 1,
    stack = true,
    close = true,
},
["hb_potato_fries"] = {
    label = "Potato Fries",
    weight = 1,
    stack = true,
    close = true,
},
["hb_sea_salt"] = {
    label = "Sea Salt & Pepper",
    weight = 1,
    stack = true,
    close = true,
},
["hb_melted_cheese"] = {
    label = "Melted Cheese",
    weight = 1,
    stack = true,
    close = true,
},
["hb_sriracha"] = {
    label = "Sriracha",
    weight = 1,
    stack = true,
    close = true,
},
["hb_crispy_bacon"] = {
    label = "Crispy Bacon",
    weight = 1,
    stack = true,
    close = true,
},
["hb_sour_cream_chives"] = {
    label = "Sour Cream & Chives",
    weight = 1,
    stack = true,
    close = true,
},
["hb_carbonated_water"] = {
    label = "Carbonated Water",
    weight = 1,
    stack = true,
    close = true,
},
["hb_cola_flavor"] = {
    label = "Cola Flavoring",
    weight = 1,
    stack = true,
    close = true,
},
["hb_root_beer_extract"] = {
    label = "Root Beer Extract",
    weight = 1,
    stack = true,
    close = true,
},
["hb_orange_syrup"] = {
    label = "Orange Syrup",
    weight = 1,
    stack = true,
    close = true,
},
["hb_grape_syrup"] = {
    label = "Grape Syrup",
    weight = 1,
    stack = true,
    close = true,
},
["hb_fresh_lemon"] = {
    label = "Fresh Lemon",
    weight = 1,
    stack = true,
    close = true,
},
["hb_icecubes"] = {
    label = "Ice Cubes",
    weight = 1,
    stack = true,
    close = true,
},
["hb_waterbottle"] = {
    label = "Water Bottle",
    weight = 1,
    stack = true,
    close = true,
},
["hb_emptycup"] = {
    label = "Empty Cup",
    weight = 1,
    stack = true,
    close = true,
},

  ["engine_oil"] = {
    label = "Engine Oil",
    weight = 1000,
  },
  ["tyre_replacement"] = {
    label = "Tyre Replacement",
    weight = 1000,
  },
  ["clutch_replacement"] = {
    label = "Clutch Replacement",
    weight = 1000,
  },
  ["air_filter"] = {
    label = "Air Filter",
    weight = 100,
  },
  ["spark_plug"] = {
    label = "Spark Plug",
    weight = 1000,
  },
  ["brakepad_replacement"] = {
    label = "Brakepad Replacement",
    weight = 1000,
  },
  ["suspension_parts"] = {
    label = "Suspension Parts",
    weight = 1000,
  },
  -- Engine Items
  ["i4_engine"] = {
    label = "I4 Engine",
    weight = 1000,
  },
  ["v6_engine"] = {
    label = "V6 Engine",
    weight = 1000,
  },
  ["v8_engine"] = {
    label = "V8 Engine",
    weight = 1000,
  },
  ["v12_engine"] = {
    label = "V12 Engine",
    weight = 1000,
  },
  ["turbocharger"] = {
    label = "Turbocharger",
    weight = 1000,
  },
  -- Electric Engines
  ["ev_motor"] = {
    label = "EV Motor",
    weight = 1000,
  },
  ["ev_battery"] = {
    label = "EV Battery",
    weight = 1000,
  },
  ["ev_coolant"] = {
    label = "EV Coolant",
    weight = 1000,
  },
  -- Drivetrain Items
  ["awd_drivetrain"] = {
    label = "AWD Drivetrain",
    weight = 1000,
  },
  ["rwd_drivetrain"] = {
    label = "RWD Drivetrain",
    weight = 1000,
  },
  ["fwd_drivetrain"] = {
    label = "FWD Drivetrain",
    weight = 1000,
  },
  -- Tuning Items
  ["slick_tyres"] = {
    label = "Slick Tyres",
    weight = 1000,
  },
  ["semi_slick_tyres"] = {
    label = "Semi Slick Tyres",
    weight = 1000,
  },
  ["offroad_tyres"] = {
    label = "Offroad Tyres",
    weight = 1000,
  },
  ["drift_tuning_kit"] = {
    label = "Drift Tuning Kit",
    weight = 1000,
  },
  ["ceramic_brakes"] = {
    label = "Ceramic Brakes",
    weight = 1000,
  },
  -- Cosmetic Items
  ["lighting_controller"] = {
    label = "Lighting Controller",
    weight = 100,
    client = {
      event = "jg-mechanic:client:show-lighting-controller",
    }
  },
  ["stancing_kit"] = {
    label = "Stancer Kit",
    weight = 100,
    client = {
      event = "jg-mechanic:client:show-stancer-kit",
    }
  },
  ["cosmetic_part"] = {
    label = "Cosmetic Parts",
    weight = 100,
  },
  ["respray_kit"] = {
    label = "Respray Kit",
    weight = 1000,
  },
  ["vehicle_wheels"] = {
    label = "Vehicle Wheels Set",
    weight = 1000,
  },
  ["tyre_smoke_kit"] = {
    label = "Tyre Smoke Kit",
    weight = 1000,
  },
  ["bulletproof_tyres"] = {
    label = "Bulletproof Tyres",
    weight = 1000,
  },
  ["extras_kit"] = {
    label = "Extras Kit",
    weight = 1000,
  },
  -- Nitrous & Cleaning Items
  ["nitrous_bottle"] = {
    label = "Nitrous Bottle",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:use-nitrous-bottle",
    }
  },
  ["empty_nitrous_bottle"] = {
    label = "Empty Nitrous Bottle",
    weight = 1000,
  },
  ["nitrous_install_kit"] = {
    label = "Nitrous Install Kit",
    weight = 1000,
  },
  ["cleaning_kit"] = {
    label = "Cleaning Kit",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:clean-vehicle",
    }
  },
  ["repair_kit"] = {
    label = "Repair Kit",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:repair-vehicle",
    }
  },
  ["duct_tape"] = {
    label = "Duct Tape",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:use-duct-tape",
    }
  },
  -- Performance Item
  ["performance_part"] = {
    label = "Performance Parts",
    weight = 1000,
  },
  -- Mechanic Tablet Item
  ["mechanic_tablet"] = {
    label = "Mechanic Tablet",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:use-tablet",
    }
  },
  -- Gearbox
  ["manual_gearbox"] = {
    label = "Manual Gearbox",
    weight = 1000,
  },

}
