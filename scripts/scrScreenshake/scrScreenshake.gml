// @desc ScreenShake(magnitude, frames)
// @arg Magnitude sets strength of shake
// @arg Frames sets length of shake in frames

function ScreenShake()
{
	with(global.iCamera)
	{
		if(argument0 > shakeRemain)
		{
			shakeMagnitude = argument0;
			shakeRemain = shakeMagnitude;
			shakeLength = argument1;
		}
	}
}