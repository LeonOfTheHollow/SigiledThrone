/// @description One of the most basic sigil types. Provides some magic power.
// Growth. Wood. Forest. Seedling.

event_inherited();

etch = function(_node) {
	if (_node.affinity == MAGIC_AFFINITIES.FIRE) {
		_node.spawn_mp();
	}
	_node.affinity = MAGIC_AFFINITIES.GROWTH;
	for (var _i=0;_i<array_length(_node.neighbors);_i++) {
		var _nn = _node.neighbors[_i];
		if !_nn.locked {
			_nn.spawn_mp();
			_nn.affinity = MAGIC_AFFINITIES.GROWTH;
		}
	}
	EtchCallback();
}