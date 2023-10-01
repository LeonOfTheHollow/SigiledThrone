// Constants for orbit
var target_orbit_distance = 25;
var rotation_speed = 10;

var node_center_x = current_node.x+16;
var node_center_y = current_node.y+16;

// Calculate distance from current_node
var dx = x - node_center_x;
var dy = y - node_center_y;
var current_distance = point_distance(x, y, node_center_x, node_center_y);

// If not at target orbit distance, move towards it
if (abs(current_distance - target_orbit_distance) > 1) {
    var move_speed = 3;  // speed to move towards the target orbit
    var angle_to_node = point_direction(node_center_x, node_center_y, x, y);
    var target_x = node_center_x + cos(degtorad(angle_to_node)) * target_orbit_distance;
    var target_y = node_center_y + sin(degtorad(angle_to_node)) * target_orbit_distance;
    
    x += (target_x - x) * move_speed * orbit_speed;
    y += (target_y - y) * move_speed * orbit_speed;
    
    // Reset the orbit angle when moving toward the target
    current_orbit_angle = angle_to_node;
} else {
    // If already at target orbit distance, orbit the current_node
    current_orbit_angle += orbit_speed * 360;
    
    // Keep the angle in the range [0, 360]
    current_orbit_angle = current_orbit_angle mod 360;
    
    x = node_center_x + cos(degtorad(current_orbit_angle)) * target_orbit_distance;
    y = node_center_y + sin(degtorad(current_orbit_angle)) * target_orbit_distance;
	
}

// always rotate

current_rotary_angle += rotation_speed;
current_rotary_angle = current_rotary_angle mod 360;
	
image_angle = current_rotary_angle;

if current_node != current_owner {
	array_push(ownership_history, "Changed hands from "+string(current_owner)+" to "+string(current_node));
	current_owner = current_node;
}