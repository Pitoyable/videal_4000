/// moveObject( player );
var player = argument[0];
var playerNumber = player.playerNumber;

playersLinked[playerNumber, 0] = player;

player.linkTo = id;

var playersLinkedNumber = 0;
	
for ( var i = 0; i < 2; i++ ) {
	if ( playersLinked[i, 0] != 0 ) {
		playersLinkedNumber++;
	}
}

placePlayerToObject( id, player );

// Si on a le nombre nécessaire de joueur pour bouger
if playersLinkedNumber == playersToMove {
	var left = player.left;
	var right = player.right;
	var up = player.up;
	var down = player.down;
	
	show_debug_message( left );
	show_debug_message( right );
	
	var diffX = abs( x - player.x );
	var diffY = abs( y - player.y );
	
	// Si besoin que d'un joueur pour bouger
	if playersToMove == 1 {
		
		// Gauche Droite
		if diffX > diffY { 
			show_debug_message( "gauche droite" );
			if keyboard_check( left ) || keyboard_check( right ) {
				// Bouge l'object ainsi que le joueur
				show_debug_message( "1 seul gauche ou droite" );
			} 
		} else { // Haut Bas
			show_debug_message( "haut bas" );
			if keyboard_check( up ) || keyboard_check( down ) {
				// Bouge l'object ainsi que le joueur
				show_debug_message( "1 seul haut ou bas" );
			} 
		}
	} else if playersToMove == 2 { // S'il faut deux persos pour le faire bouger
		var player2;
		
		for ( var j = 0; j < 2; j++ ) {
			if j != playerNumber {
				player2 = playersLinked[j, 0];
			}
		}
		
		var left2 = player2.left;
		var right2 = player2.right;
		var up2 = player2.up;
		var down2 = player2.down;
		
		 // Si les deux personnages sont au même endroit
		 // A droite ou gauche
		if player2.x == player.x {
			if ( keyboard_check( left ) && keyboard_check( left2 ) ) || ( keyboard_check( right ) && keyboard_check( right2 ) ) {
				// bouge l'object ainsi que les deux persos gauche ou droite
			}
		} else if player2.y == player.y { // Si les deux persos sont au même endroit haut ou bas
			if ( keyboard_check( up ) && keyboard_check( up2 ) ) || ( keyboard_check( down ) && keyboard_check( down2 ) ) {
				// bouge l'object ainsi que les deux persos gauche ou droite
			}
		}
	}

}
