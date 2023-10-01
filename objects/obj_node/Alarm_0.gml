/// @description Slowly tick oscillator, use as source of truth for drawing multi-frame fx
oscillator += 1;
if oscillator > 2 {
	oscillator = 0;
}

alarm[0] = 15;