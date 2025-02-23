local common = require("common")

-- if settings.startup["cerys-dynamic-lighting"].value then -- although turning this off fixes a 2.0.35 crash on minimal graphics settings, it's not checked here so that players can change it midgame
data:extend({
	{
		type = "sprite",
		name = "cerys-solar-light",
		filename = "__Cerys-Moon-of-Fulgora__/graphics/entity/solar-light.png",
		priority = "no-atlas",
		width = common.SOLAR_IMAGE_SIZE,
		height = common.SOLAR_IMAGE_SIZE,
		draw_as_light = true,
	},
	{
		type = "sprite",
		name = "cerys-solar-light-inverted",
		filename = "__Cerys-Moon-of-Fulgora__/graphics/entity/solar-light.png",
		priority = "no-atlas",
		width = common.SOLAR_IMAGE_SIZE,
		height = common.SOLAR_IMAGE_SIZE,
		draw_as_light = true,
		invert_colors = true,
	},
})
-- end

data:extend({
	{
		type = "sprite",
		name = "cerys-solar-wind-particle",
		filename = "__Cerys-Moon-of-Fulgora__/graphics/entity/solar-wind-particle.png",
		priority = "extra-high-no-scale",
		width = 32,
		height = 32,
		flags = { "no-crop" },
		mipmap_count = 1,
		scale = 0.6,
		draw_as_glow = true,
		blend_mode = "additive",
	},

	{
		type = "sprite",
		name = "fulgora-background",
		filename = "__Cerys-Moon-of-Fulgora__/graphics/sharper-planets/fulgora.png",
		priority = "extra-high-no-scale",
		width = 2048,
		height = 2048,
		flags = { "no-crop" },
		mipmap_count = 1,
		scale = 4,
	},
	{
		type = "sprite",
		name = "radiative-tower-base-ice",
		filename = "__Cerys-Moon-of-Fulgora__/graphics/entity/radiative-tower/back-ice.png",
		priority = "extra-high",
		width = 988,
		height = 962,
		shift = util.by_pixel(58, -38),
		mipmap_count = 1,
		scale = 0.22,
	},
	{
		type = "sprite",
		name = "radiative-tower-tower-shadow-1",
		filename = "__Cerys-Moon-of-Fulgora__/graphics/entity/radiative-tower/tower-shadow-1.png",
		width = 988,
		height = 962,
		shift = util.by_pixel(58, -38),
		mipmap_count = 1,
		scale = 0.22,
		draw_as_shadow = true,
	},
	{
		type = "sprite",
		name = "radiative-tower-tower-shadow-2",
		filename = "__Cerys-Moon-of-Fulgora__/graphics/entity/radiative-tower/tower-shadow-2.png",
		width = 988,
		height = 962,
		shift = util.by_pixel(58, -38),
		mipmap_count = 1,
		scale = 0.22,
		draw_as_shadow = true,
	},
})
