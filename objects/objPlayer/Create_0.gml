/// @description Movement and Gameplay Vars
// Temporary placement, will move to a generic controller object later
visible = false;

spd = 2;
baseSpd = 2;
fatiguedSpd = 1.5;
sprinting = 4;

left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
run = keyboard_check(vk_shift);

moveX = 0;
moveY = 0;

if global.class = 1
{
	global.plrHP = 95;
	global.plrMaxStamina = 150;
	global.plrStamina = 150;
	global.plrStaminaRecharge = 0.75;
	global.plrStaminaDelayTime = 100;
}