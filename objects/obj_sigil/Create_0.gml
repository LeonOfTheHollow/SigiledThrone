/// @description Sigil creation callbacks
// remember, this happens even if the Sigil is rejected by the node
// or used for something other than painting

serial_number = global.current_puzzle.sigil_counter++;

image_index = irandom(2);