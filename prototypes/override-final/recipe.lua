local common = require("common")

if data.raw.recipe["superconductor"] then
	if not data.raw.recipe["superconductor"].additional_categories then
		data.raw.recipe["superconductor"].additional_categories = {}
	end
	table.insert(data.raw.recipe["superconductor"].additional_categories, "fulgoran-cryogenics")
end
if data.raw.recipe["sulfuric-acid"] then
	if not data.raw.recipe["sulfuric-acid"].additional_categories then
		data.raw.recipe["sulfuric-acid"].additional_categories = {}
	end
	table.insert(data.raw.recipe["sulfuric-acid"].additional_categories, "fulgoran-cryogenics")
end
if data.raw.recipe["plastic-bar"] then
	if not data.raw.recipe["plastic-bar"].additional_categories then
		data.raw.recipe["plastic-bar"].additional_categories = {}
	end
	table.insert(data.raw.recipe["plastic-bar"].additional_categories, "fulgoran-cryogenics")
end
if data.raw.recipe["lithium"] then
	if not data.raw.recipe["lithium"].additional_categories then
		data.raw.recipe["lithium"].additional_categories = {}
	end
	table.insert(data.raw.recipe["lithium"].additional_categories, "fulgoran-cryogenics")
end
if data.raw.recipe["battery"] then
	if not data.raw.recipe["battery"].additional_categories then
		data.raw.recipe["battery"].additional_categories = {}
	end
	table.insert(data.raw.recipe["battery"].additional_categories, "fulgoran-cryogenics")
end
if data.raw.recipe["ammonia-rocket-fuel"] then
	if not data.raw.recipe["ammonia-rocket-fuel"].additional_categories then
		data.raw.recipe["ammonia-rocket-fuel"].additional_categories = {}
	end
	table.insert(data.raw.recipe["ammonia-rocket-fuel"].additional_categories, "fulgoran-cryogenics")
end
if data.raw.recipe["fusion-power-cell"] then
	if not data.raw.recipe["fusion-power-cell"].additional_categories then
		data.raw.recipe["fusion-power-cell"].additional_categories = {}
	end
	table.insert(data.raw.recipe["fusion-power-cell"].additional_categories, "fulgoran-cryogenics")
end

if data.raw.recipe["plutonium-239-recycling"] then
	data.raw.recipe["plutonium-239-recycling"].energy_required = 1 -- Dropping the energy of the U->Pu dummy recipe affects this for some reason
end

--== Relaxations ==--

if data.raw.recipe["recycler"] then
	PlanetsLib.relax_surface_conditions(data.raw.recipe["recycler"], {
		property = "magnetic-field",
		max = 120,
	})
end

if data.raw.recipe["cryogenic-plant"] then
	PlanetsLib.relax_surface_conditions(data.raw.recipe["cryogenic-plant"], {
		property = "pressure",
		min = 5,
	})
end

--== Restrictions ==--

if data.raw.recipe["lab"] then
	PlanetsLib.restrict_surface_conditions(data.raw.recipe["lab"], common.AMBIENT_RADIATION_MAX)
end

if data.raw.recipe["accumulator"] then
	PlanetsLib.restrict_surface_conditions(data.raw.recipe["accumulator"], common.AMBIENT_RADIATION_MAX)
end

if data.raw.recipe["nuclear-reactor"] then
	PlanetsLib.restrict_surface_conditions(data.raw.recipe["nuclear-reactor"], common.AMBIENT_RADIATION_MAX)
end

if data.raw.recipe["fusion-reactor"] then
	PlanetsLib.restrict_surface_conditions(data.raw.recipe["fusion-reactor"], common.AMBIENT_RADIATION_MAX)
end

if data.raw.recipe["fusion-generator"] then
	PlanetsLib.restrict_surface_conditions(data.raw.recipe["fusion-generator"], common.AMBIENT_RADIATION_MAX)
end

if data.raw.recipe["fusion-power-cell"] then
	PlanetsLib.restrict_surface_conditions(data.raw.recipe["fusion-power-cell"], common.AMBIENT_RADIATION_MAX)
end

if data.raw.recipe["boiler"] then
	PlanetsLib.restrict_surface_conditions(data.raw.recipe["boiler"], common.TEN_PRESSURE_MIN)
end

if data.raw.recipe["steam-engine"] then
	PlanetsLib.restrict_surface_conditions(data.raw.recipe["steam-engine"], common.TEN_PRESSURE_MIN)
end

if data.raw.recipe["rocket-fuel"] then
	PlanetsLib.restrict_surface_conditions(data.raw.recipe["rocket-fuel"], common.AMBIENT_RADIATION_MAX)
end
