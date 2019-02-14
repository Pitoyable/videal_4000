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
<<<<<<< HEAD

=======
 
>>>>>>> bfbbbe4688b03271ee65ff6a570537a9c0b2cd08
