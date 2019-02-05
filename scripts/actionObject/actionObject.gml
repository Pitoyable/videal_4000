if distance_to_object( oInteract ) < 15 {
	oPress_enter.visible = true;
	var playerBboxH = bbox_bottom - bbox_top;
	var diffSpriteBox = sprite_height - playerBboxH;
	var spriteY = bbox_top - diffSpriteBox - oPress_enter.sprite_height;
	
	oPress_enter.y = spriteY;
	oPress_enter.x = x;
	return true;
} else {
	oPress_enter.visible = false;
	return false;
}