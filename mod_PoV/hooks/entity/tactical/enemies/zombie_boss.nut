::TLW.HooksMod.hook("scripts/entity/tactical/enemies/zombie_boss", function ( q )
{

	q.onInit = @(__original) function()
	{
		__original()

		// Corpse Drop
		if (!::MSU.isKindOf(this.actor, "player")) 
		{
			//IDK WTF THIS FILE IS AND WHO TIS ABOUT
			this.actor.m.OnDeathLootTable.push(::TLW.CorpseDrop.getCorpseDrop(actor, ::TLW.Corpse.SkeletonBoss));
	  	}
	}

});