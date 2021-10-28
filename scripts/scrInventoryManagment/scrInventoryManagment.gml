function InventorySearch(rootObj,itemType)
{
	for (var i = 0; i < INVENTORY_SLOTS; i +=1)
	{
		if (rootObj.inventory[i] == itemType)
		{
			return(i);
		}
	}
	return(-1);
}

function InventoryRemove(rootObj,itemType)
{
	var slot = InventorySearch(rootObj,itemType);
	if(slot != -1)
	{
		with(rootObj) inventory[slot] = -1;
		return true;
	}
	else return false;
}

function InventoryAdd(rootObj,itemType)
{
	var slot = InventorySearch(rootObj,-1);
	if(slot != -1)
	{
		with(rootObj) inventory[slot] = itemType;
		return true;
	}
	else return false;
}

function InventorySwap(objFrom,slotFrom,objTo,slotTo)
{
	var itemFrom = objFrom.inventory[slotFrom];
	objFrom.inventory[slotFrom] = objTo.inventory[slotTo];
	objTo.inventory[slotTo] = itemFrom;
}