/// moveObject( player );
var player = argument[0];
var playerNumber = player.playerNumber;

playersLinked[playerNumber, 0] = player;

player.linkTo = id;

placePlayerToObject( id, player );