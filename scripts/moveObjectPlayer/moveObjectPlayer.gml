/// moveObject( 0, 1, 2, 3 );
var left = argument[0];
var right = argument[1];
var up = argument[2];
var down = argument[3];

var nearestInst = instance_nearest(x, y, oMovable );

var diffX = abs( x - nearestInst.x );
var diffY = abs( y - nearestInst.y );

var mvspeed = 2;
var collisionSpeed = mvspeed + 2;

linkTo = nearestInst;
var objectLinkTo = nearestInst.linkTo;
for (var i = 0; i < 2; i++) {
    if objectLinkTo[i] == id { break; }
}

show_debug_message( objectLinkTo );
nearestInst.linkTo = objectLinkTo;

hideActionBtn( actionBtn );

/* if diffX > diffY {
	// Gauche droite
	if isPlaced != 1 {
		sprite_index = sPlayer_push;

		var sWidth = sprite_width;
		var sHeight = sprite_height;

		y = nearestInst.bbox_bottom - ( sHeight / 2 );

		if x > nearestInst.x {
			image_xscale = -1;
			x = nearestInst.bbox_right + (abs(sWidth) / 2);

		} else {
			image_xscale = 1;
			x = nearestInst.bbox_left - (sWidth / 2);
		}
		isPlaced = 1;
	}

	// GAUCHE
	if keyboard_check( left ) {
		if x < nearestInst.x {
			if !place_free( x - collisionSpeed, y ) {
				while place_free( x - 1, y ) {
					x -= 1;
					nearestInst.x -= 1;
				}
			} else {
				x -= mvspeed;
				nearestInst.x -= mvspeed;
			}
		}
	}

	// DROITE
	if keyboard_check( right ) {
		if x > nearestInst.x {
			if !place_free( x + collisionSpeed, y ) {
				while place_free( x + 1, y ) {
					x += 1;
					nearestInst.x += 1;
				}
			} else {
				x += mvspeed;
				nearestInst.x += mvspeed;
			}
		}
	}
} else {
	// Haut / bas
	if isPlaced != 1 {
		sprite_index = sPlayer_push_down;

		var sWidth = sprite_width;
		var sHeight = sprite_height;

		x = ( nearestInst.bbox_left + nearestInst.bbox_right ) / 2;

		if y > nearestInst.y {
			y = nearestInst.bbox_bottom + (sHeight / 2);

		} else {
			y = nearestInst.bbox_top - (sHeight / 2);
		}
		isPlaced = 1;
	}

	// HAUT
	if keyboard_check( up ) {
		if y < nearestInst.y {
			if !place_free( x, y - collisionSpeed ) {
				while place_free( x, y - 1 ) {
					y -= 1;
					nearestInst.y -= 1;
				}
			} else {
				y -= mvspeed;
				nearestInst.y -= mvspeed;
			}
		}
	}
	// BAS
	if keyboard_check( down ) {
		if y > nearestInst.y {
			if !place_free( x, y + collisionSpeed ) {
				while place_free( x, y + 1 ) {
					y += 1;
					nearestInst.y += 1;
				}
			} else {
				y += mvspeed;
				nearestInst.y += mvspeed;
			}
		}
	}
} */
