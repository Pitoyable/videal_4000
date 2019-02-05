if	active == 1 {	
	// Run ---
	if keyboard_check( vk_shift ) mvspeed = 5 else mvspeed = 3.5;
	// --------
	
	movePlayer( mvspeed, ord("Q"), ord("D"), ord("Z"), ord("S") );
}

