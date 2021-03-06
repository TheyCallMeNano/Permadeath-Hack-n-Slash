//@desc Manage Transistions
global.midTransition = false;
global.roomTarget = -1;

function TransitionPlaceSequence(_type)
{
	if(layer_exists("Transition")) layer_destroy("Transition");
	var _lay = layer_create(-9999,"Transition");
	layer_sequence_create(_lay,objCamera.x-320,objCamera.y-240,_type);
	global.sequenceLayer = layer_sequence_create(_lay,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),_type);
}

function TransitionStart(_roomTarget, _typeOut, _typeIn)
{
	if(!global.midTransition)
	{
		global.midTransition = true;
		global.gamePaused = true;
		global.roomTarget = _roomTarget;
		TransitionPlaceSequence(_typeOut);
		layer_set_target_room(_roomTarget);
		TransitionPlaceSequence(_typeIn);
		layer_reset_target_room();
		return true;
	}
	else return false;
}

function TransitionChangeRoom()
{
	room_goto(global.roomTarget);
}

function TransitionFinished()
{
	layer_sequence_destroy(self.elementID);
	global.gamePaused = false;
	global.midTransition = false;
}