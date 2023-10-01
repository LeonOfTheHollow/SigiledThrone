/// @description Insert description here
switch (affinity) {
	case MAGIC_AFFINITIES.GROWTH:
		image_blend = c_lime;
	break;
	case MAGIC_AFFINITIES.FIRE:
		image_blend = c_red;
	break;
	case MAGIC_AFFINITIES.VOID:
		image_blend = c_purple;
	break;
	case MAGIC_AFFINITIES.WATER:
		image_blend = c_aqua;
	break;
	default:
		image_blend = c_white;
	break;
	}

if (sigil == noone) {
	draw_self();	
}

if (locked) {
	draw_set_color(image_blend);
	draw_sprite_ext(spr_node_lock, oscillator, x, y, 1, 1, 0, image_blend, 1);
}

if (global.selected == id) {
	for (var _i=0;_i<array_length(neighbors);_i++) {
		var _nn = neighbors[_i];
		draw_line_color(x+16,y+16,_nn.x+16,_nn.y+16,image_blend,_nn.image_blend);
	}
}

// draw_sprite_ext(spr_node_power,clamp(node_power,0,7),x+16,y+16,1.2,1.2,rotation,c_white,1);