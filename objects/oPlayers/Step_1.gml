var canAction = canPlayerAction();

if movingObject == 1 {
 
	if keyboard_check_pressed( actionKey ) {
		show_debug_message( "Désactivé" );
		stopActionPlayer();
	}
	
} else if movingObject == 0 {
	
	if active == 1 {
		if keyboard_check( runKey ) mvspeed = 5 else mvspeed = 3.5;
		
		movePlayer( mvspeed, left, right, up, down );
		
		// Le joueur peut intéragir avec un objet
		if canAction != 0 {
			showActionBtn( actionBtn );
			
			if keyboard_check_pressed( actionKey ) {
				show_debug_message( "Activé" );
				callToActionObject( id, canAction );
				movingObject = 1;
			}
		} else {
			hideActionBtn( actionBtn );
		}
	}
}