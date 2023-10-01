/// @description Insert description here

switch(room) {
	case AmuletPuzzle:
		if artifact_power > global.scores[0] {
			global.scores[0] = artifact_power;	
		}
	break;
	case TabletPuzzle:
		if artifact_power > global.scores[0] {
			global.scores[1] = artifact_power;	
		}
	break;
	case ScepterPuzzle:
		if artifact_power > global.scores[0] {
			global.scores[2] = artifact_power;	
		}
	break;
	default:
	
	break;
}