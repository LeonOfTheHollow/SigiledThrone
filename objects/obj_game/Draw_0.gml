/// @description Insert description here

if room == Menu {
	for (var _i=0;_i<array_length(available_puzzles);_i++) {
		draw_set_color(c_white);
		var _t = available_puzzles[_i];
		if global.scores[_i] > 0 {
			_t += (" "+string(global.scores[_i]));
		}
		draw_text(global.grid_size*10,global.grid_size*4+global.grid_size*2*_i, _t);
	}
}