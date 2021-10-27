/// @description 
if keyboard_check(vk_escape)
{
	Log("Destroying!");
	instance_destroy(self);
	global.gamePaused = false;
}