/// @description Inventory Definitions

#macro INVENTORY_SLOTS 12
rowLength = 4;
inventory = array_create(INVENTORY_SLOTS, -1);
randomize();
global.gamePaused = true;