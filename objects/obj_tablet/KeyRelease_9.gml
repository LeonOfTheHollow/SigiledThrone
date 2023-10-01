/// @description Print a debug report of the current nodes

for (var _i=0;_i<array_length(nodes);_i++) {
	show_debug_message(string(nodes[_i]));
	show_debug_message("MP in Node: "+string(array_length(nodes[_i].orbiters)));
}