// Initialize variables
var tally_width = 12;
var tally_height = 32;
var tally_gap = 2;  // Gap between individual tallies
var group_gap = 10; // Gap between each group of five tallies
var max_width = 128; // Maximum width of the UI element

var current_x = x;
var current_y = y;
var slash_x = x; // To keep track of where the next slash should appear

// Loop to draw tallies
for (var _i=0;_i<artifact_power;_i++) {
    // Determine whether it's time for a "slash" (every 5 tallies)
    var is_slash = ((_i % 5) == 4);
    
    // Randomize the image index for hand-drawn feel
    var random_index = irandom(2); // Assuming you have 3 hand-drawn variants (0, 1, 2)

    // If it's a slash, overlay it on the last 4 tallies
    if (is_slash) {
        draw_sprite(spr_tally_slash, 0, slash_x, current_y);
        current_x += group_gap; // Add a gap after the slash
    } else {
		if (current_x + tally_width > x + max_width) {
	        current_x = x;
	        current_y += tally_height + 5; // Move down by one tally height plus a small gap
	        slash_x = x; // Reset for the new row
	    }
        draw_sprite(spr_tally, 0, current_x, current_y);
		if ((_i % 5) == 0) {
			slash_x = current_x; // Update where the next slash should be
		}
		current_x += tally_width + tally_gap;
    }
}
