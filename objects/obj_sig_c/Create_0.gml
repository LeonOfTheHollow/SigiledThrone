/// @description One of the most basic sigil types. Provides no magic power, but nullifies effects.
// Stone. Boredom. Nothing ever happens.

event_inherited();

etch = function(_node) {
	_node.sprite_index = noone;
	_node.locked = false;
	_node.affinity = MAGIC_AFFINITIES.VOID;
	for (var _i=0;_i<array_length(_node.orbiters);_i++) {
		_node.consume_mp();
	}
	for (var _i=0;_i<array_length(_node.neighbors);_i++) {
		var _nn = _node.neighbors[_i];
		_nn.locked = false;
		_nn.affinity = MAGIC_AFFINITIES.NONE;
	}
	EtchCallback();
}