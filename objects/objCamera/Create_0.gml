/// @description Camera Properties

global.sequenceLayer = noone;

cam = view_camera[0];

follow = objPlayer;
viewWHalf = camera_get_view_width(cam) * 0.5;
viewHHalf = camera_get_view_height(cam) * 0.5;

xTo = xstart;
yTo = ystart;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;