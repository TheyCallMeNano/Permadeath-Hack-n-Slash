/// @description Assign the movement animations and check class

#region ANIMATION STATE

	//Class Rouge
	if left && global.class = 1
	{
		image_xscale = -1;
		sprite_index = sprRougeWalk;
	}
	else if right && global.class = 1
	{
		image_xscale = 1;
		sprite_index = sprRougeWalk;
	}
	else if up && global.class = 1
	{
		sprite_index = sprRougeWalk;
	}
	else if down && global.class = 1
	{
		sprite_index = sprRougeWalk;
	}
	else if global.class = 1
	{
		sprite_index = sprRouge;
	}

	//Class Titan
	if left && global.class = 2
	{
		image_xscale = -1;
		sprite_index = sprTitanWalk;
	}
	else if right && global.class = 2
	{
		image_xscale = 1;
		sprite_index = sprTitanWalk;
	}
	else if up && global.class = 2
	{
		sprite_index = sprTitanWalk;
	}
	else if down && global.class = 2
	{
		sprite_index = sprTitanWalk;
	}
	else if global.class = 2
	{
		sprite_index = sprTitan;
	}

#endregion ANIMATION STATE
	
draw_self();
