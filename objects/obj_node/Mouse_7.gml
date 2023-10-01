/// @description 

var _previous_selection = global.selected;

if _previous_selection == id {
	global.selected = noone;
} else if (_previous_selection == noone) {
	global.selected = id;
} else if (_previous_selection.object_index == obj_palette_slot) {
	var _new_sigil = instance_create_layer(x,y,"Interactables",_previous_selection.sigil.object_index);
	apply(_new_sigil);	
	global.selected = id;
} else {
	global.selected = id;
}
