/// @description A modestly complex sigil. Amplifies and transfers magic power.
// Water. Market. Exchange.

event_inherited();

etch = function(_node) {
	_node.affinity = MAGIC_AFFINITIES.WATER;
	EtchCallback();
}