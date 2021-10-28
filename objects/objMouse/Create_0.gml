/// @description 

inventoryHover = -1;
slotHover = -1;
inventoryDrag = -1;
slotDrag = -1;
itemDrag = -1;

mouseOver = function()
{
	slotHover = -1;
	inventoryHover = -1;
	
	var mx = mouse_x;
	var my = mouse_y;
	
	with(objInventory)
	{
		if (point_in_rectangle(mx,my,x-4,y-5,x-4 + 12+rowLength*50,y-5 + 12+(((INVENTORY_SLOTS) div rowLength)+1)*36))
		{
			for(var i = 0; i < INVENTORY_SLOTS; i += 1)
			{
				var xx = x + (i mod rowLength) * 50 + 2;
				var yy = y + (i div rowLength) * 50 + 2;
				if(point_in_rectangle(mx,my,xx,yy,xx+45,yy+45))
				{
					other.slotHover = i;
					other.inventoryHover = id;
				}
			}
		}
	}
}

stateFree = function()
{
	mouseOver();
	if(mouse_check_button(mb_left)) && (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1)
	{
		state = stateDrag;
		itemDrag = inventoryHover.inventory[slotHover];
		inventoryDrag = inventoryHover;
		slotDrag = slotHover;
	}
}

stateDrag = function()
{
	mouseOver();
	if(!mouse_check_button(mb_left))
	{
		if(slotHover != -1) 
		{
			InventorySwap(inventoryDrag,slotDrag,inventoryHover,slotHover);
		}
	state = stateFree;
	itemDrag = -1;
	inventoryDrag = -1;
	slotDrag = -1;
	}
}

state = stateFree;