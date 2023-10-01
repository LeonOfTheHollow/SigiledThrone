/// @description Provision components
show_debug_message("Building toolbox...");
for (var _i=0; _i<array_length(global.sigils_unlocked); ++_i) {
    var _row = floor(_i / 2);
    var _col = _i mod 2;
    show_debug_message(string(_row) + " " + string(_col));
    var _p = instance_create_layer(x + _col * 2 * global.grid_size, _row * 2 * global.grid_size, "Interactables", obj_palette_slot);
    var _prototype_sigil = instance_create_layer(_p.x, _p.y, "Interactables", global.sigils_unlocked[_i]);
    _prototype_sigil.visible = false;
    _p.sigil = _prototype_sigil;
}

scoreboard = instance_create_layer(x,y+10*global.grid_size,"Interactables",obj_scoreboard);