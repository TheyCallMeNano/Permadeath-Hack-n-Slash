// @desc
function SaveGame()
{
	global.gamePaused = true;
	//Create save map
	var map = ds_map_create();
	
	//Vars to save
	map[? "Room"] = room;
	map[? "Class Int"] = global.class;
	map[? "Class Name"] = global.className;
	map[? "Health"] = global.plrHP;
	map[? "Max Stamina"] = global.plrMaxStamina;
	map[? "Stamina"] = global.plrStamina;
	map[? "Stamina Recharge"] = global.plrStaminaRecharge;
	map[? "Recharge Delay"] = global.plrStaminaRechargeDelay;
	map[? "Recharge Time"] = global.plrStaminaDelayTime;
	map[? "Base DMG"] = global.baseDMG;
	
	var inst = objInventory;
	instance_create_layer(0,0,"Instances",inst);
	map[? "Inventory"] = inst.inventory;
	instance_destroy(inst);
	global.gamePaused = false;
	
	//Save all to string
	var string_ = json_encode(map);
	SaveStringToFile("SaveData " + string(global.gameSaveSlot) + ".phns", string_);
	Log(string_);
	
	//Delete DS
	ds_map_destroy(map);
	Log("Game Saved!");
}

function SaveInventory()
{
	//Create save map
	var map = ds_map_create();
	
	//Vars to save
	var inst = objInventory;
	map[? "Inventory"] = inst.inventory;
	
	//Save all to string
	var string_ = json_encode(map);
	SaveStringToFile("SaveData " + string(global.gameSaveSlot) + ".phns", string_);
	Log(string_);
	
	//Delete DS
	ds_map_destroy(map);
	Log("Game Saved!");
}

function SaveStringToFile(filename,string_)
{
	var buffer = buffer_create(string_byte_length(string_)+1, buffer_fixed, 1);
	buffer_write(buffer, buffer_string, string_);
	buffer_save(buffer, filename);
	buffer_delete(buffer);
}