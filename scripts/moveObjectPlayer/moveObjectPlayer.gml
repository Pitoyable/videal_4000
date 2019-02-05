/// moveObject( 0, 1, 2, 3 );
oPress_enter.visible = 0;
oPress_enter.x = -100;
oPress_enter.y = 100;

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
nearestInst.linkTo = id;
nearestInst.isOnMove = 1;

if diffX > diffY {
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
}