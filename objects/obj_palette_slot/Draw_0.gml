/// @description Displays highlight if appropriate
if (global.selected == id) {
	draw_set_color(c_yellow);
	draw_rectangle(x,y,x+2*global.grid_size,y+2*global.grid_size, true);
}

draw_sprite_ext(sigil.sprite_index,sigil.image_index,x,y, 2, 2, 0, c_white, 1);