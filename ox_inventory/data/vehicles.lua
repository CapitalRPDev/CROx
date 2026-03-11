return {
	-- 0	vehicle has no storage
	-- 1	vehicle has no trunk storage
	-- 2	vehicle has no glovebox storage
	-- 3	vehicle has trunk in the hood
	Storage = {
		[`jester`] = 3,
		[`adder`] = 3,
		[`osiris`] = 1,
		[`pfister811`] = 1,
		[`penetrator`] = 1,
		[`autarch`] = 1,
		[`bullet`] = 1,
		[`cheetah`] = 1,
		[`cyclone`] = 1,
		[`voltic`] = 1,
		[`reaper`] = 3,
		[`entityxf`] = 1,
		[`t20`] = 1,
		[`taipan`] = 1,
		[`tezeract`] = 1,
		[`torero`] = 3,
		[`turismor`] = 1,
		[`fmj`] = 1,
		[`infernus`] = 1,
		[`italigtb`] = 3,
		[`italigtb2`] = 3,
		[`nero2`] = 1,
		[`vacca`] = 3,
		[`vagner`] = 1,
		[`visione`] = 1,
		[`prototipo`] = 1,
		[`zentorno`] = 1,
		[`trophytruck`] = 1,
		[`trophytruck2`] = 1,
	},

	-- slots, maxWeight; default weight is 8000 per slot
	glovebox = {
		[0] = {5, 15000},		-- Compact
		[1] = {5, 15000},		-- Sedan
		[2] = {5, 15000},		-- SUV
		[3] = {5, 15000},		-- Coupe
		[4] = {5, 15000},		-- Muscle
		[5] = {5, 15000},		-- Sports Classic
		[6] = {5, 15000},		-- Sports
		[7] = {3, 15000},		-- Super
		[8] = {2, 5000},		-- Motorcycle
		[9] = {5, 15000},		-- Offroad
		[10] = {5, 15000},		-- Industrial
		[11] = {5, 15000},		-- Utility
		[12] = {10, 30000},		-- Van
		[14] = {5, 15000},		-- Boat
		[15] = {5, 15000},		-- Helicopter
		[16] = {15, 15000},	-- Plane
		[17] = {5, 15000},		-- Service
		[18] = {15, 15000},		-- Emergency
		[19] = {5, 15000},		-- Military
		[20] = {10, 15000},		-- Commercial (trucks)
		models = {
			--[`xa21`] = {11, 88000}
			[`tug`] = {60, 120000},
			[`marquis`] = {25, 50000},
			[`phantom`] = {40, 100000},
			[`phantom3`] = {50, 110000},
			[`saspimperialev`] = {50, 110000},
			[`bcsosteed`] = {50, 110000},
		}
	},

	trunk = {
		[0] = {20, 60000},		-- Compact
		[1] = {40, 100000},		-- Sedan
		[2] = {50, 110000},		-- SUV
		[3] = {30, 90000},		-- Coupe
		[4] = {40, 100000},		-- Muscle
		[5] = {30, 90000},		-- Sports Classic
		[6] = {30, 90000},		-- Sports
		[7] = {5, 30000},		-- Super
		--[8] = {5, 40000},		-- Motorcycle
		[9] = {40, 100000},		-- Offroad
		[10] = {50, 110000},	-- Industrial
		[11] = {40, 100000},	-- Utility
		[12] = {60, 120000},	-- Van
		-- [14] -- Boat
		-- [15] -- Helicopter
		-- [16] -- Plane
		[17] = {40, 100000},	-- Service
		[18] = {40, 100000},	-- Emergency
		[19] = {40, 100000},	-- Military
		[20] = {60, 120000},	-- Commercial
		models = {
			--[`xa21`] = {11, 10000}
			[`mule`] = {80, 240000},
			["mule"] = {80, 240000},

			[`mule2`] = {80, 240000},
			["mule2"] = {80, 240000},

			[`mule3`] = {80, 240000},
			["mule3"] = {80, 240000},

			[`mule4`] = {80, 240000},
			["mule4"] = {80, 240000},

			[`mule5`] = {80, 240000},
			["mule5"] = {80, 240000},

			[`nmule`] = {80, 220000},
			["nmule"] = {80, 220000},

			[`stockade`] = {60, 160000},
			["stockade"] = {60, 160000},

			[`stockade3`] = {60, 160000},
			["stockade3"] = {60, 160000},

			[`pounder`] = {100, 320000},
			["pounder"] = {100, 320000},

			[`pounder2`] = {100, 320000},
			["pounder2"] = {100, 320000},

			[`benson`] = {90, 280000},
			["benson"] = {90, 280000},

			[`biff`] = {70, 160000},
			["biff"] = {70, 160000},

			[`scrap`] = {70, 160000},
			["scrap"] = {70, 160000},

			[`ratloader`] = {60, 120000},
			["ratloader"] = {60, 120000},

			[`dloader`] = {60, 120000},
			["dloader"] = {60, 120000},

			[`dloader2`] = {60, 120000},
			["dloader2"] = {60, 120000},

			[`brigham2`] = {60, 120000},
			["brigham2"] = {60, 120000},

			[`picador`] = {50, 110000},
			["picador"] = {50, 110000},

			[`yosemite`] = {50, 110000},
			["yosemite"] = {50, 110000},

			[`yosemite2`] = {50, 110000},
			["yosemite2"] = {50, 110000},

			[`yosemite3`] = {50, 110000},
			["yosemite3"] = {50, 110000},

			[`slamvan`] = {50, 110000},
			["slamvan"] = {50, 110000},

			[`slamvan2`] = {60, 120000},
			["slamvan2"] = {60, 120000},

			[`slamvan3`] = {50, 110000},
			["slamvan3"] = {50, 110000},

			[`yankee`] = {80, 240000},
			["yankee"] = {80, 240000},

			[`steed`] = {80, 240000},
			["steed"] = {80, 240000},

			[`bcsosteed`] = {120, 360000},
			["bcsosteed"] = {120, 360000},

			[`saspimperialev`] = {120, 360000},
			["saspimperialev"] = {120, 360000}
		},
	}
}
