function EtchCallback(){
	with (obj_node) {
		// Sigil checks
		if (sigil != noone) {
			// Seedling
			if (sigil.object_index == obj_sig_e) {
	            spawn_mp();
	        }
		}
		// Affinity checks
		if (affinity != MAGIC_AFFINITIES.NONE) {
			if (affinity == MAGIC_AFFINITIES.WATER) {
				apply_flow_rules();	
			}
		}
    }
}