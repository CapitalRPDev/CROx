if not lib then return end

local createBlip = require 'modules.utils.client'.CreateBlip

local rawShopData = lib.load('data.shops')
local shopDefs = rawShopData and rawShopData.Shops or rawShopData or {}

local ShopZones = {}
local ShopPrompts = {}

local function hasShopAccess(shop)
	return not shop.groups or client.hasGroup(shop.groups)
end

-- Evaluate a shop condition in a safe, flexible way.
-- - nil:     treated as allowed
-- - boolean: true/false directly
-- - function: called; return truthy to allow, falsy to block
local function passesCondition(condition)
	if condition == nil then
		return true
	end

	if type(condition) == 'boolean' then
		return condition
	end

	if type(condition) == 'function' then
		local ok, result = pcall(condition)

		if not ok then
			print(('[ox_inventory] shop condition error: %s'):format(result))
			return false
		end

		return result and true or false
	end

	-- Any other type is treated as "no extra restriction"
	return true
end

local function wipeShops()
	for zoneName, zone in pairs(ShopZones) do
		if type(zone.id) == 'number' then
			exports.qbx_core:RemoveZoneById(zone.id)
		end
	end

	for _, prompt in pairs(ShopPrompts) do
		exports.qbx_core:HidePromptGroup(prompt)
	end

	ShopZones = {}
	ShopPrompts = {}
end

local function refreshShops()
	wipeShops()

	for shopType, shopData in pairs(shopDefs ) do
		local label = shopData.label or shopType
		local groups = shopData.groups or shopData.jobs
		local blipInfo = shopData.blipInfo or shopData.blip
		local condition = shopData.condition
		if not hasShopAccess({ groups = groups }) then
			goto skipShop
		end

		
		if blipInfo and shopData.locations then
			for _, loc in ipairs(shopData.locations) do
				local center = loc.center or loc.coords or loc.loc
				if center then
					createBlip(blipInfo, center)
				end
			end
		end

		if not shopData.locations then goto skipShop end

		for index, loc in ipairs(shopData.locations) do
			local center = loc.center or loc.coords or loc.loc
			if center then
				local opts = loc.options or {}

				
				local prompt = exports.qbx_core:CreatePromptGroup({
					{
						Id = ('shop-%s-%s'):format(shopType, index),
						Complete = function()
							exports.qbx_core:HidePromptGroup(prompt)
							client.openInventory('shop', { id = index, type = shopType })
						end,
						Title = label,
						Description = '',
						AutoComplete = true,
						Icon = 'fa-solid fa-basket-shopping',
						Text = 'Open Shop'
					}
				})

				ShopPrompts[('shop-%s-%s'):format(shopType, index)] = prompt

				
				local zoneId
				
				
				local length = loc.length or 2.0
				local width = loc.width or 2.0

				local zoneName = ('shop-%s-%s'):format(shopType, index)

				zoneId = exports.qbx_core:AddBoxZone(
					zoneName,
					center,
					length,
					width,
					{
						heading = opts.heading or 90.0,
						minZ = opts.minZ or (center.z - 1.0),
						maxZ = opts.maxZ or (center.z + 1.0),
						data = { shopType = shopType, index = index }
					}
				)

				ShopZones[zoneName] = { id = zoneId and zoneId.id or nil }

				exports.qbx_core:AddPolyZoneEnterHandler(
					zoneName,
					function(data)
						-- Always create zones. Only control the prompt via access + condition.
						if not hasShopAccess({ groups = groups }) then return end
						if not passesCondition(condition) then return end

						exports.qbx_core:ShowPromptGroup(prompt)
					end
				)

				exports.qbx_core:AddPolyZoneExitHandler(
					zoneName,
					function(data)
						exports.qbx_core:HidePromptGroup(prompt)
					end
				)
			end
		end

		::skipShop::
	end
end

return {
	refreshShops = refreshShops,
	wipeShops = wipeShops,
}
