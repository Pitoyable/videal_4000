/// movePlayer( mvspeed, left, right, up , down );
var mvspeed = argument[0];
var left = argument[1];
var right = argument[2];
var up = argument[3];
var down = argument[4];

key_left = keyboard_check( left );
key_right = keyboard_check( right );
key_up = keyboard_check( up );
key_down = keyboard_check( down );

// Profondeur
depth = 1;
var offsetSpriteUp = sprite_height - ( bbox_bottom - bbox_top );
	
if !place_free( x, y - offsetSpriteUp ) {
	depth = -100;
}
// ----------

// Déplacements et collisions 
var collisionSpeed = mvspeed + 2;

if key_right {
	if !place_free( x + collisionSpeed, y ) {
		while place_free( x + 1, y ) {
			x += 1;
		}
	} else {
		x += mvspeed;
		image_xscale = 1;
	}
}
if key_left {
	if !place_free( x - collisionSpeed, y ) {
		while place_free( x - 1, y ) {
			x -= 1;
		}
	} else {
		x -= mvspeed;
		image_xscale = -1;
	}
} 
if key_down {
	if !place_free( x, y + collisionSpeed ) {
		while place_free( x, y + 1 ) {
			y += 1;
		}
	} else {
		y += mvspeed;
	}
}
if key_up {	
	if !place_free( x, y - collisionSpeed ) {
		while place_free( x, y - 1 ) {
			y -= 1;
		}
	} else {
		y -= mvspeed;
	}
}
// -------------------