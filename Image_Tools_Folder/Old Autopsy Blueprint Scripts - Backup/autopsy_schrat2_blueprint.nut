this.autopsy_schrat2_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.autopsy2_schrat";
		this.m.Type = this.Const.Items.ItemType.Usable;
		this.m.PreviewCraftable = this.new("scripts/items/autopsy_schrat2_item");
		this.m.Cost = 120;
		local ingredients = [
			{
				Script = "scripts/items/misc/corpse_schrat2_item",
				Num = 1
			},
		];
		this.init(ingredients);
		local skills = [
			{
				Scripts = [
					"scripts/skills/perks/perk_legend_potion_brewer"
				]
			}
		];
		this.initSkills(skills);
	}

	function onCraft( _stash )
	{
		if (this.Math.rand(1, 100) <= 30)
			{
				_stash.add(this.new("scripts/items/misc/anatomist/schrat_mutagen_item"));
			}
		if (this.Math.rand(1, 100) <= 70)
			{
				_stash.add(this.new("scripts/items/loot/ancient_amber_item"));
			}
		if (this.Math.rand(1, 100) <= 50)
			{
				_stash.add(this.new("scripts/items/misc/anatomist/legend_ancient_green_wood_item"));
			}	
		if (this.Math.rand(1, 100) <= 50)
			{
				_stash.add(this.new("scripts/items/loot/glowing_resin_item"));
			}
		if (this.Math.rand(1, 100) <= 50)
			{
				_stash.add(this.new("scripts/items/loot/heart_of_the_forest_item"));
			}			
	}

});

