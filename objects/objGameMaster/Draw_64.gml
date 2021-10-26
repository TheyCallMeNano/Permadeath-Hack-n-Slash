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
		scrOutlinedText(0,0,c_black,c_white,"Stamina Delay: " + string(global.plrStaminaRechargeDelay));
		if instance_exists(objPlayer)
		{
			scrOutlinedText(0,20,c_black, c_white, "Run T/F: " + string(objPlayer.run));
		}
		scrOutlinedText(0,40,c_black, c_white, "Mouse X: " + string(mouse_x));
		scrOutlinedText(0,60,c_black, c_white, "Mouse Y: " + string(mouse_y));
		scrOutlinedText(0,80,c_black,c_white,"Class Int: " + string(global.class));
		scrOutlinedText(0,100,c_black,c_white,"Class Name: " + string(global.className));
	}
	else
	{
	
	}
}
else
{
	
}