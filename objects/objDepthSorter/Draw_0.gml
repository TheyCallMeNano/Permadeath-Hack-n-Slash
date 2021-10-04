/// @description Draw Inst's in correct depth based off of lowest Y

//Resize Grid
var dGrid = depthGrid;
var instNum = instance_number(objParentDepth);

ds_grid_resize(dGrid,2,instNum);

//Add Inst Info to depthGrid
var yy = 0;
with(objParentDepth)
{
	dGrid[# 0,yy] = id;
	dGrid[# 1,yy] = y;
	yy ++;
}

//Sort grid- lowest Y at the top
ds_grid_sort(dGrid,1,true);

//Loop through the grid & draw inst's
yy = 0;
var inst;
repeat(instNum)
{
	//Grab inst ID's
	var inst = dGrid[# 0, yy];
	
	//Draw Inst
	with(inst)
	{
		event_perform(ev_draw,0);
	}
	yy++;
}