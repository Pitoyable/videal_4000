// showActionBtn( object )
var actionBtn = argument[0];

actionBtn.visible = true;
var playerBboxH = bbox_bottom - bbox_top;
var diffSpriteBox = sprite_height - playerBboxH;
var spriteY = bbox_top - diffSpriteBox - actionBtn.sprite_height;
	
actionBtn.y = spriteY;
actionBtn.x = x;