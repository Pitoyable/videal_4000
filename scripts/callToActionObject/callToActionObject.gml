// callToActionObject( player.id, object.id )
var player = argument[0];
var object = argument[1];

with (object) {
	script_execute( actionToCall, player );
}