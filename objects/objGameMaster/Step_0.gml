/// @description Draw Inventory
if keyboard_check(vk_tab) && global.gamePaused = false && room != ClassSelection
{
	instance_create_layer(objCamera.x-100,objCamera.y-100,"Mouse",objInventory);
	audio_play_sound(sndOpen,1,0);
}