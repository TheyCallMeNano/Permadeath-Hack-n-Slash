/// @description Logic Application

//Update Destination
if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update Object Pos
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//Camera Collisions
x = clamp(x,viewWHalf,room_width-viewWHalf);
y = clamp(y,viewHHalf,room_height-viewHHalf);

//Apply Screenshake
x += random_range(-shakeRemain,shakeRemain);
y += random_range(-shakeRemain,shakeRemain);

shakeRemain = max(0,shakeRemain-((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(cam,x-viewWHalf,y-viewHHalf);

layer_sequence_x(global.sequenceLayer,x-viewWHalf);
layer_sequence_y(global.sequenceLayer,y-viewHHalf);