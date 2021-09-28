/// @description Display Player Stats & Enviroment Text

//Player Essentials
draw_text(400,200,"Stamina: " + string(global.plrStamina));

//Debug Text
if keyboard_check(vk_f9)
{
	draw_text(400,220,"Stamina Delay: " + string(global.plrStaminaRechargeDelay));
}
else
{
	
}