/// @description Display Player Stats & Enviroment Text

draw_set_font(fGUI);
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
	draw_text(400,220,"Stamina Delay: " + string(global.plrStaminaRechargeDelay));
	if instance_exists(objPlayer)
	{
		scrOutlinedText(400,240,c_black, c_white, "Run T/F: " + string(objPlayer.run));
	}
	scrOutlinedText(400,260,c_black, c_white, "Mouse X: " + string(mouse_x));
	scrOutlinedText(400,280,c_black, c_white, "Mouse Y: " + string(mouse_y));
}
else
{
	
}