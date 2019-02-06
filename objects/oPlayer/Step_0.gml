var canAction = actionObject();

if movingObject == 1 {
	
	moveObjectPlayer( left, right, up, down );
	
	if keyboard_check_pressed( vk_enter ) {
		show_debug_message( "Désactivé" );
		movingObject = 0;
		isPlaced = 0;
		linkTo.isOnMove = 0;
		sprite_index = sPlayer;
	}
	
} else if movingObject == 0 {
	
	if active == 1 {
		// Run ---
		if keyboard_check( vk_shift ) mvspeed = 5 else mvspeed = 3.5;
		// --------
		
		movePlayer( mvspeed, left, right, up, down );
		
		if canAction == 1 {
			if keyboard_check_pressed( vk_enter ) {
				show_debug_message( "Activé" );
				movingObject = 1;
			}
		}
	}
}