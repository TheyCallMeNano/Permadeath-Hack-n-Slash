/// @description 
draw_sprite_stretched(sprInventory,0,x-4,y-5,12+rowLength*50,12+(((INVENTORY_SLOTS-1) div rowLength)+1)*50);

for(var i = 0; i < INVENTORY_SLOTS; i += 1)
{
	var xx = x + (i mod rowLength) * 50 + 2;
	var yy = y + (i div rowLength) * 50 + 2;
	var hover = (objMouse.inventoryHover == id) && (objMouse.slotHover == i);
	draw_sprite(sprSlot,hover,xx,yy);
	if(inventory[i] != -1)
	{
		var alpha = 1.0;
		if(objMouse.inventoryDrag == id) && (objMouse.slotDrag == i)
		{
			alpha = 0.5;
		}
		draw_set_alpha(alpha);
		draw_sprite(sprItems,inventory[i],xx,yy);
		draw_set_alpha(1.0);
	}
}