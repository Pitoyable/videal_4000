/// moveObject( player );
var player = argument[0];
var playerNumber = player.playerNumber;

playersLinked[playerNumber, 0] = player;
playersLinked[playerNumber, 1] = playerNumber;

player.linkTo = id;

var playersLinkedNumber = 0;
	
for ( var i = 0; i < 2; i++ ) {
	if ( playersLinked[i, 0] != 0 ) {
		playersLinkedNumber++;
	}
}

if playersLinkedNumber == playersToMove {
	
}
/*var left = linkTo[0].left;
var right = linkTo[0].right;
var up = linkTo[0].up;
var down = linkTo[0].down;

var mvspeed = 2;
var collisionSpeed = mvspeed + 2;

var diffX = abs( x - linkTo[0].x );
var diffY = abs( y - linkTo[0].y );

if array_length_1d( linkTo ) < playersToMove {
	return;
} else {
	if diffX > diffY {
		// GAUCHE
		if keyboard_check( left ) {
			if x < linkTo.x {
				if !place_free( x - collisionSpeed, y ) {
					while place_free( x - 1, y ) {
						x -= 1;
						linkTo.x -= 1;
					}
				} else {
					x -= mvspeed;
					linkTo.x -= mvspeed;
				}
			}
		}

		// DROITE
		if keyboard_check( right ) {
			if x > linkTo.x {
				if !place_free( x + collisionSpeed, y ) {
					while place_free( x + 1, y ) {
						x += 1;
						linkTo.x += 1;
					}
				} else {
					x += mvspeed;
					linkTo.x += mvspeed;
				}
			}
		}
	} else {
		// HAUT
		if keyboard_check( up ) {
			if y < linkTo.y {
				if !place_free( x, y - collisionSpeed ) {
					while place_free( x, y - 1 ) {
						y -= 1;
						linkTo.y -= 1;
					}
				} else {
					y -= mvspeed;
					linkTo.y -= mvspeed;
				}
			}
		}

		// BAS
		if keyboard_check( down ) {
			if y > linkTo.y {
				if !place_free( x, y + collisionSpeed ) {
					while place_free( x, y + 1 ) {
						y += 1;
						linkTo.y += 1;
					}
				} else {
					y += mvspeed;
					linkTo.y += mvspeed;
				}
			}
		}
	}
}
