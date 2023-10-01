function Scripts(){

}

// Removes the first occurrence of 'element' from 'arr'
function remove_element(arr, element) {
    var index = -1;
    
    // Find the index of the element
    for (var i = 0; i < array_length(arr); i++) {
        if (arr[i] == element) {
            index = i;
            break;
        }
    }
    
    // If the element was not found, return
    if (index == -1) return;
    
    // Shift elements left to overwrite the element at 'index'
    for (var i = index; i < array_length(arr) - 1; i++) {
        arr[i] = arr[i + 1];
    }
    
    // Resize the array
    array_resize(arr, array_length(arr) - 1);
}

function find_oldest_mp(mp_array) {
	var _oldest_yet = 999999;
	var _result = noone;
	for (var _i=0;_i<array_length(mp_array);_i++) {
		var _mp = mp_array[_i];
		if (_mp.serial_number < _oldest_yet) {
			_oldest_yet = _mp.serial_number;	
			_result = _mp
		}
	}
	return _result;
}

function find_newest_mp(mp_array) {
	var _newest_yet = 0;
	var _result = noone;
	for (var _i=0;_i<array_length(mp_array);_i++) {
		var _mp = mp_array[_i];
		if (_mp.serial_number > _newest_yet) {
			_newest_yet = _mp.serial_number;	
			_result = _mp
		}
	}
	return _result;
}

function transfer_oldest_mp(A, B) {
    // Find the oldest MP from A's orbiters
	show_debug_message("About to pick an MP to transfer");
	show_debug_message(string(A));
	show_debug_message(string(A.orbiters));
    var oldest_mp = find_oldest_mp(A.orbiters);
    if (oldest_mp != noone) {
		// Transfer ownership from A to B
		show_debug_message("Handing off from tranfer_oldest_mp to transfer_to");
		oldest_mp.transfer_to(B);
	} else {
		show_debug_message("Tried to transfer_oldest_mp, but failed to find one.");	
	}
}