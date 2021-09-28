/// @description Create movement

left = keyboard_check(vk_left) || keyboard_check(ord("A"));
right = keyboard_check(vk_right) || keyboard_check(ord("D"));
down = keyboard_check(vk_down) || keyboard_check(ord("S"));
up = keyboard_check(vk_up) || keyboard_check(ord("W"));
run = keyboard_check(vk_shift);

if run
{
	spd = abs((run*sprinting));
}
else
{
	spd = baseSpd;
}

moveX = 0;
moveY = 0;

#region MOVEMENT FUNCTIONS
moveX = (right - left) * spd;
if (moveX == 0)
{
	moveY = (down - up) * spd;
}
#endregion MOVEMENT FUNCITONS

#region COLLISIONS
//Horizontal Checks
if(moveX != 0)
{
	if(place_meeting(x+moveX,y,objCollisionGeneric))
	{
		repeat(abs(moveX))
		{
			if(!place_meeting(x+sign(moveX),y,objCollisionGeneric))
			{
				x += sign(moveX);
			}
			else
			{
				break;
			}
		}
		moveX = 0;
	}
	if(place_meeting(x+moveX,y,objCollisionHalfY))
	{
		repeat(abs(moveX))
		{
			if(!place_meeting(x+sign(moveX),y,objCollisionHalfY))
			{
				x += sign(moveX);
			}
			else
			{
				break;
			}
		}
		moveX = 0;
	}
	if(place_meeting(x+moveX,y,objCollisionHalfX))
	{
		repeat(abs(moveX))
		{
			if(!place_meeting(x+sign(moveX),y,objCollisionHalfX))
			{
				x += sign(moveX);
			}
			else
			{
				break;
			}
		}
		moveX = 0;
	}
}

//Vertical Checks
if(moveY != 0)
{
	if(place_meeting(x,y+moveY,objCollisionGeneric))
	{
		repeat(abs(moveY))
		{
			if(!place_meeting(x,y+sign(moveY),objCollisionGeneric))
			{
				y += sign(moveY);
			}
			else
			{
				break;
			}
		}
		moveY = 0;
	}
	if(place_meeting(x,y+moveY,objCollisionHalfY))
	{
		repeat(abs(moveY))
		{
			if(!place_meeting(x,y+sign(moveY),objCollisionHalfY))
			{
				y += sign(moveY);
			}
			else
			{
				break;
			}
		}
		moveY = 0;
	}
	if(place_meeting(x,y+moveY,objCollisionHalfX))
	{
		repeat(abs(moveY))
		{
			if(!place_meeting(x,y+sign(moveY),objCollisionHalfX))
			{
				y += sign(moveY);
			}
			else
			{
				break;
			}
		}
		moveY = 0;
	}
}

#endregion COLLISIONS

x += moveX;
y += moveY;

//Debug & Testing
