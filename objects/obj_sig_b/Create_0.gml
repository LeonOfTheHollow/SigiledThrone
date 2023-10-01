/// @description One of the most basic sigil types. Increases magic power but locks slots.
// Flame. Harvest. Endings.

event_inherited();

etch = function(_node) {
	_node.locked = true;
	_node.affinity = MAGIC_AFFINITIES.FIRE;
	var _temp = [];
	for (var _i=0;_i<array_length(_node.orbiters);_i++) {
		array_push(_temp, instance_create_layer(_node.x,_node.y,"Interactables",obj_magic_point, {current_node: _node}));
	}
	_node.orbiters = array_concat(_node.orbiters, _temp);
	
	for (var _i=0;_i<array_length(_node.neighbors);_i++) {
		var _nn = _node.neighbors[_i];
		_nn.consume_mp();
		_nn.affinity = MAGIC_AFFINITIES.FIRE;
	}
	EtchCallback();
}