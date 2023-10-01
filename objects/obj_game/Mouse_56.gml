/// @description 
if (room == Menu) {
	show_debug_message("Processing a click on the menu screen");
    for (var _i = 0; _i < array_length(available_puzzles); _i++) {
        var text_y = global.grid_size * 4 + global.grid_size * 2 * _i;
        
        // Check if the mouse Y position is within the vertical bounds of the text
        if (mouse_y >= text_y && mouse_y <= text_y + global.grid_size) {
            // Switch to the corresponding room
            var target_room = available_puzzles[_i];  // Assuming room names are stored in available_puzzles
            switch(target_room) {
				case "AMULET":
					room_goto(AmuletPuzzle);
				break;
				case "TABLET":
					room_goto(TabletPuzzle);
				break;
				case "STAFF":
					room_goto(ScepterPuzzle);
				break;
			}
            break;  // Exit the loop once a match is found
        }
    }
}