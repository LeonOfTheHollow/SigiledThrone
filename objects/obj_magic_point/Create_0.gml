/// @description One "chip" of magic - always bound to a node.
serial_number = global.current_puzzle.mp_counter++;

image_index = irandom(2);

ownership_history = [];
current_owner = current_node;
array_push(ownership_history, "Spawned from "+string(current_node));

transfer_to = function(node) {
	array_push(ownership_history, "Got a transfer application to "+string(node));
	if (!node.locked && !current_node.locked) {
		remove_element(current_node.orbiters, id);
		array_push(node.orbiters, id);
		current_node = node;
		show_debug_message("Just transferred an MP to node: "+string(current_node));
	} else {
		show_debug_message("Tried to transfer_to a node, but either the originator or target was locked.");	
	}
	array_push(ownership_history, "After application, owner was "+string(current_node));
}