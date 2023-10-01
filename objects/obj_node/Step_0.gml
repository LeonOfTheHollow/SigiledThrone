/// @description  basic affinity-based behavior could go here
// (affinities might also be conditionals elsewhere)

rotation += 1;
if rotation > 359 {
	rotation = 0;	
}


switch (affinity) {
	case MAGIC_AFFINITIES.WATER:
		// apply_flow_rules();
	break;
	default:
		// Other affinities might go here in the future
	break;
}
