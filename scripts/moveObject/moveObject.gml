/// moveObject( 0, 1, 2, 3 );

var left = argument[0];
var right = argument[1];
var up = argument[2];
var down = argument[3];

var mvspeed = 2;
var collisionSpeed = mvspeed + 2;

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