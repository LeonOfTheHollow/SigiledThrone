/// @description Project away from each other on random opposing vectors

if (current_orbit_angle > other.current_orbit_angle) {
	orbit_speed = clamp(orbit_speed + 0.002,0.001,0.009);
	other.orbit_speed = clamp(other.orbit_speed - 0.002,0.001,0.009);
} else {
	other.orbit_speed = clamp(orbit_speed + 0.002,0.001,0.009);
	orbit_speed = clamp(orbit_speed - 0.002,0.001,0.009);
}