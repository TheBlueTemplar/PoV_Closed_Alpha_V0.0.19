this.pov_autopsy_ghoul_blueprint <- this.inherit("scripts/crafting/blueprint", {
	m = {},
	function create()
	{
		this.blueprint.create();
		this.m.ID = "blueprint.pov_autopsy_ghoul";
		this.m.Type = this.Const.Items.ItemType.Usable;
		this.m.PreviewCraftable = this.new("scripts/items/pov_autopsy_ghoul_item");
		this.m.Cost = 110;
		local ingredients = [
			{
				Script = "scripts/items/misc/pov_corpse_ghoul_item",
				Num = 1
			},
		];
		this.init(ingredients);
		local skills = [
			{
				Scripts = [
							"scripts/skills/perks/perk_legend_field_triage"
							]
			}
		];
		this.initSkills(skills);
	}

	function onCraft( _stash )
	{
		if (this.Math.rand(1, 100) <= 6)
			{
				_stash.add(this.new("scripts/items/misc/anatomist/pov_ghoul_mutagen_item"));
			}
		if (this.Math.rand(1, 100) <= 30)
			{
				_stash.add(this.new("scripts/items/misc/ghoul_teeth_item"));
			}
		if (this.Math.rand(1, 100) <= 30)
			{
				_stash.add(this.new("scripts/items/misc/ghoul_horn_item"));
			}
		if (this.Math.rand(1, 100) <= 30)
			{
				_stash.add(this.new("scripts/items/misc/ghoul_brain_item"));
			}
		if (this.Math.rand(1, 100) <= 30)
			{
				_stash.add(this.new("scripts/items/loot/growth_pearls_item"));
			}

	}

});

