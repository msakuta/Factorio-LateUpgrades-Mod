
require("config")
require("common")

local maxlevels = 25

for i=6,maxlevels do
	data:extend({
		createupgrade(i, {
			name_prefix = "rocket-damage-",
			icon = "__base__/graphics/technology/rocket-damage.png",
			pack_r = 1 + ord(7 <= i),		-- Red science
			pack_g = 1 + ord(9 <= i),		-- Green science
			pack_b = 1 + ord(11 <= i),		-- Blue science
			pack_a = 1,						-- Alien science
			time = i * 10,
			count = CountFactor * math.floor(100 * 2 ^ (i / 3)),
			modifier = 0.40,
			modifiertype = "ammo-damage",
			neededscience = "rocketry",
			ammo_category = "rocket",
			stageusage = false,
			order = "e-j-a" -- Order in science-screen.
		})
	})
end