/// @description Define Conditions
visible = false;

stateWaitTime = 0;
state = 0;

//Temp Enemy Health
hp = 75;

//Movement Vars
moveX = 0;
moveY = 0;
spd = 0.8;
horizontal1 = irandom_range(0,1);
horizontal2 = irandom_range(0,1);
vertical1 = irandom_range(0,1);
vertical2 = irandom_range(0,1);
stuckCheck = 0;

xPrev = x;
yPrev = y;