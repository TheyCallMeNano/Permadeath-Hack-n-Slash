/// @description 
draw_sprite_stretched(sprInventory,0,x-4,y-5,12+rowLength*50,12+(((INVENTORY_SLOTS-1) div rowLength)+1)*50);

for(var i = 0; i < INVENTORY_SLOTS; i += 1)
{
	var xx = x + (i mod rowLength) * 50 + 2;
	var yy = y + (i div rowLength) * 50 + 2;
	draw_sprite(sprSlot,0,xx,yy)
	if(inventory[i] != -1)
	{
		draw_sprite(sprItems,inventory[i],xx,yy);
	}
}