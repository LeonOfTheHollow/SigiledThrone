/// @description Insert description here
global.current_puzzle = id;

nodes = [];
sigil_counter = 0;
mp_counter = 0;

for (var _i = 0; _i < instance_number(obj_node); ++_i;)
{
    array_push(nodes,instance_find(obj_node,_i));
}
show_debug_message("Collected nodes in the puzzle...");
show_debug_message(string(nodes));
calculate_power = function() {
	var _total = instance_number(obj_magic_point);
	obj_scoreboard.artifact_power = _total;
}

calculate_affinity = function() {
	// calculate the most common affinity here	
}