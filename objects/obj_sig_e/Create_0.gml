/// @description A moderately complex sigil type. Provides increasing magic power.
// Patience. Planning. Growth.

event_inherited();

etch = function(_node) {
	EtchCallback();
	for (var _i=0;_i<array_length(_node.neighbors);_i++) {
		var _nn = _node.neighbors[_i];
		_nn.locked = true;
	}
}