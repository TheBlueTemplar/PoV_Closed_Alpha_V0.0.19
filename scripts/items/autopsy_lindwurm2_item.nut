this.autopsy_lindwurm2_item <- this.inherit("scripts/items/misc/anatomist/anatomist_potion_item", {
	m = {},
	function create()
	{
		this.anatomist_potion_item.create();
		this.m.ID = "misc.autopsy_lindwurm2_item";
		this.m.Name = "Stollwurm Autopsy";
		this.m.Description = "Attempt to extract useful items from this stollwurm corpse.";
		this.m.IconLarge = "";
		this.m.Icon = "consumables/autopsy_lindwurm2.png";
		this.m.Value = 500;
	}

	function getTooltip()
	{
		local result = [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			}
		];
		

		if (this.getIconLarge() != null)
		{
			result.push({
				id = 3,
				type = "image",
				image = this.getIconLarge(),
				isLarge = true
			});
		}
		else
		{
			result.push({
				id = 3,
				type = "image",
				image = this.getIcon()
			});
		}

		result.push({
			id = 11,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Acquire [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] blood.\n[color=" + this.Const.UI.Color.PositiveValue + "]75%[/color] chance."
		});
		result.push({
			id = 11,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Acquire [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] scales.\n[color=" + this.Const.UI.Color.PositiveValue + "]75%[/color] chance."
		});
		result.push({
			id = 11,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Acquire [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] bones.\n[color=" + this.Const.UI.Color.PositiveValue + "]75%[/color] chance."
		});
		result.push({
			id = 11,
			type = "text",
			icon = "ui/icons/mutagen_shard_icon.png",
			text = " Acquire [color=" + this.Const.UI.Color.PositiveValue + "]1[/color] lindwurm mutagen.\n[color=" + this.Const.UI.Color.PositiveValue + "]40%[/color] chance."
		});
		
		return result;
		
	}

	

	

});