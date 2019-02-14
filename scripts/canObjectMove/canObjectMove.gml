// canObjectMove( id );
var inst = argument[0];

with (inst) {
	var objLinkTo = playersLinked;
	var playersLinkedNumber = 0;
	
	for ( var i = 0; i < 2; i++ ) {
		if ( objLinkTo[i, 0] != 0 ) {
			playersLinkedNumber++;
		}
	}
	
	if playersLinkedNumber < playersToMove { return true }
	else { return false }
}
