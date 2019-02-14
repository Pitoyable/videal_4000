if isOnMove == 1 {
	
	
} else {
	var playersLinkedNumber = 0;
	
	for ( var i = 0; i < 2; i++ ) {
		if ( playersLinked[i, 0] != 0 ) {
			playersLinkedNumber++;
		}
	}

	if playersLinkedNumber == playersToMove {
		isOnMove = 1;
	} else {
		isOnMove = 0;
	}
}

