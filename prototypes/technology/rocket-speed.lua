
require("config")
require("common")

local minlevel = 6
local maxlevel = 25

for i=minlevel,maxlevel do
	data:extend({
		createupgrade(i, {
			name_prefix = "rocket-speed-",
			icon = "__base__/graphics/technology/rocket-speed.png",
			pack_r = 1 + ord(7 <= i),		-- Red science
			pack_g = 1 + ord(9 <= i),		-- Green science
			pack_b = 1 + ord(11 <= i),		-- Blue science
			pack_a = 1,						-- Alien science
			time = i * 10,
			count = math.floor(CountFactor * 100 * 2 ^ (i / 3)),
			modifier = 0.30,
			modifiertype = "gun-speed",
			neededscience = "rocketry",
			ammo_category = "rocket",
			stageusage = false,
			order = "e-j-f" -- Order in science-screen.
		})
	})
end
