/// @description 
stateWaitTime += 1;
stuckCheck += 1;

moveX = 0;
moveY = 0;

moveX = (horizontal1 - horizontal2) * spd;
moveY = (vertical1 - vertical2) * spd;

if stuckCheck = 240
{
	if x = xPrev && y = yPrev
	{
		instance_destroy();
		if instance_exists(objEnemySpawner)
		{
			objEnemySpawner.enemyCurrent -= 1;
		}
	}
	stuckCheck = 0
}

if stateWaitTime = 120
{
	horizontal1 = irandom_range(0,1);
	horizontal2 = irandom_range(0,1);
	vertical1 = irandom_range(0,1);
	vertical2 = irandom_range(0,1);
	stateWaitTime = 0;
}

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


if hp = 0 || hp < 0
{
	if instance_exists(objEnemySpawner)
	{
		objEnemySpawner.enemyCurrent -= 1;
	}
	instance_destroy();
}