var canAction = canPlayerAction();

if movingObject == 1 {

	moveObjectPlayer( left, right, up, down );
 
	if keyboard_check_pressed( vk_enter ) {
		show_debug_message( "Désactivé" );
		stopActionPlayer();
	}
	
} else if movingObject == 0 {
	
	if active == 1 {
		if keyboard_check( vk_shift ) mvspeed = 5 else mvspeed = 3.5;
		
		movePlayer( mvspeed, left, right, up, down );
		
		
		// Le joueur peut intéragir avec un objet
		if canAction != 0 {
			showActionBtn( actionBtn );
			if keyboard_check_pressed( vk_enter ) {
				show_debug_message( "Activé" );
				movingObject = 1;
			}
		} else {
			hideActionBtn( actionBtn );
		}
	}
}