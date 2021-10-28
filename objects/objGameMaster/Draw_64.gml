/// @description Display Player Stats & Enviroment Text

draw_set_font(fGUI);
if global.midTransition = false
{
	//Player Essentials
	if instance_exists(objPlayer)
	{
		if !objPlayer.run || global.plrStamina > 0
		{
			scrOutlinedText(400,600,c_black,c_white,"Stamina: " + string(global.plrStamina));
		}
		else if objPlayer.run && global.plrStamina = 0
		{
			scrOutlinedText(400,600,c_black,c_red,"Stamina: " + string(global.plrStamina));
		}
	}

	//Debug Text
	if keyboard_check(vk_f9)
	{
		//Time until stamina recharges
		scrOutlinedText(0,0,c_black,c_white,"Stamina Delay: " + string(global.plrStaminaRechargeDelay));
		
		if instance_exists(objPlayer)
		{
			//Check if running
			scrOutlinedText(0,20,c_black, c_white, "Run T/F: " + string(objPlayer.run));
		}
		//Mouse X & Y
		scrOutlinedText(0,40,c_black, c_white, "Mouse X: " + string(mouse_x));
		scrOutlinedText(0,60,c_black, c_white, "Mouse Y: " + string(mouse_y));
		
		//Class Int & Name
		scrOutlinedText(0,80,c_black,c_white,"Class Int: " + string(global.class));
		scrOutlinedText(0,100,c_black,c_white,"Class Name: " + string(global.className));
		
		if instance_exists(objEnemySpawner)
		{
			//Chance to spawn enemy and current enemy count
			scrOutlinedText(0,120,c_black,c_white,"Enemy Spawn Chance: " + string(objEnemySpawner.enemySpawn));
			scrOutlinedText(0,140,c_black,c_white,"Enemy Amount: " + string(objEnemySpawner.enemyCurrent));
		}
	}
	else
	{
	
	}
}
else
{
	
}