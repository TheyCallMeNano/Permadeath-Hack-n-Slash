/// @description Movement and Gameplay Vars
// Temporary placement, will move to a generic controller object later

spd = 2;
baseSpd = 2;
sprinting = 4;
hp = 100;

left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));

moveX = 0;
moveY = 0;