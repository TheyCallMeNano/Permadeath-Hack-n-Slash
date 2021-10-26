/// @description 
if global.midTransition = false
{
	draw_set_font(fClassDesc);
	draw_set_halign(fa_center);
	scrOutlinedText(x+100,y+5,c_black,c_white,string(desc));
	draw_set_halign(fa_left);
	draw_set_font(fGUI);
}