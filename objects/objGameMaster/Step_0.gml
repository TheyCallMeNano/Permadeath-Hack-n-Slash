/// @description Draw Inventory
if keyboard_check(vk_tab) && global.gamePaused = false && room != ClassSelection
{
	instance_create_layer(683,384,"Instances",objInventory);
}