// canObjectMove( id );
var inst = argument[0];

var playersToMove = inst.playersToMove;
var objLinkTo = inst.linkTo;
var nbrLinkTo = array_length_1d( objLinkTo );

if playersToMove == 1 && nbrLinkTo < 1 { return true }
if playersToMove == 2 && nbrLinkTo < 2 { return true }

return false;