/// @description A slot to hold a sigil.

orbiters = [];
rotation = irandom(360);

apply = function(_sigil) {
	// STRETCH: we could maybe scale up the sigil to fill a bigger space when possible
	show_debug_message("has these neighbors:"+string(neighbors));
	if (sigil != noone) {
		instance_destroy(_sigil);	
	} else if (locked && _sigil.object_index != obj_sig_c) { // if other effects "bypass lock", they should check here)
		instance_destroy(_sigil);
	} else {
		sigil = _sigil;
		sigil.etch(id);
		global.current_puzzle.calculate_power();
	}
}

magic_power = function() {
	return array_length(orbiters);
}

priority = function() {
	if sigil == noone {
		return 0;	
	} else {
		return sigil.serial_number;	
	}
}

spawn_mp = function() {
	var _mp = instance_create_layer(x,y,"MagicPoints",obj_magic_point, {current_node: id});
	array_push(orbiters, _mp);
}

consume_mp = function() {
	if (array_length(orbiters)>0) {
		_mp_to_eat = array_pop(orbiters);
		instance_destroy(_mp_to_eat);	
	}	
}

apply_flow_rules = function() {
	var _empty_neighbors = [];
	for (var _i=0;_i<array_length(neighbors);_i++) {
		var _nn = neighbors[_i];
		if (_nn.locked) {
			// skip	
		} else if (_nn.sigil != noone) {
			// sigilled - pull
			var _orbiter_count = array_length(_nn.orbiters);
			for (var _j=0;_j<_orbiter_count;_j++) {
				_nn.orbiters[_j].transfer_to(self);
			}
		} else {
			// empty - count for redistribution
			array_push(_empty_neighbors, _nn);
		}
	}
	
	if (array_length(_empty_neighbors) > 0) {	
		var _receiver_count = array_length(_empty_neighbors);
		var _allotment = floor(array_length(orbiters)/_receiver_count);
		for (var _i=0;_i<_receiver_count;_i++) {
			var _receiver = _empty_neighbors[_i];
			for (var _j=0;_j<_allotment;_j++) {
				transfer_oldest_mp(id,_receiver);
			}
		}
	}
	
}

alarm[0] = 15;