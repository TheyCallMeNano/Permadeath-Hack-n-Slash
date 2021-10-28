/// @description 
if keyboard_check(vk_escape)
{
	Log("Destroying!");
	SaveInventory();
	instance_destroy(self);
	global.gamePaused = false;
	audio_play_sound(sndClose,1,0);
}