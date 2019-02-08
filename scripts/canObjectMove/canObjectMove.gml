// canObjectMove( id );
var inst = argument[0];

with (inst) {
	var objLinkTo = linkTo;
	var nbrLinkTo = array_length_1d( objLinkTo );

	if nbrLinkTo < playersToMove { return true }
	else { return false }
}
