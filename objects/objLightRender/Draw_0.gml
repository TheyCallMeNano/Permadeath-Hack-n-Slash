/// @description Draw the surface on to the game

if (surface_exists(lightingSurface) == false)
{
	lightingSurface = surface_create(1366,768);
}

surface_set_target(lightingSurface);

draw_clear_alpha(c_black,0.85);

with(objLightingCutout)
{
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
	gpu_set_blendmode(bm_normal);
}
with(objLightingPlr)
{
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1);
	gpu_set_blendmode(bm_normal);
}
with(objLightingMouse)
{
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, intensity);
	gpu_set_blendmode(bm_normal);
}

surface_reset_target();

draw_surface(lightingSurface,0,0);