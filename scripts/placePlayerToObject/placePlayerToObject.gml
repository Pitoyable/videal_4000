// placePlayerToOject( object, player )
var theObject = argument[0];
var thePlayer = argument[1];

var diffX = abs( thePlayer.x - theObject.x );
var diffY = abs( thePlayer.y - theObject.y );

with ( thePlayer ) {
	var sWidth = sprite_width;
	var sHeight = sprite_height;
	
	if isPlaced == 0 {
		if diffX > diffY {
			sprite_index = sPlayer_push;
		
			y = theObject.bbox_bottom - ( sHeight / 2 );
		
			if x > theObject.x {
				image_xscale = -1;
				x = theObject.bbox_right + (abs(sWidth) / 2);

			} else {
				image_xscale = 1;
				x = theObject.bbox_left - (sWidth / 2);
			}
			isPlaced = 1;
		} else {
			sprite_index = sPlayer_push_down;
		
			x = ( theObject.bbox_left + theObject.bbox_right ) / 2;

			if y > theObject.y {
				y = theObject.bbox_bottom + (sHeight / 2);

			} else {
				y = theObject.bbox_top - (sHeight / 2);
			}
			isPlaced = 1;
		}
	}
}
