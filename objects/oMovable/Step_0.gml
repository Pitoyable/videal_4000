if isOnMove == 1 {
	moveObject();
}

if array_length_1d( linkTo ) < 1 {
	isOnMove = 0;
} else {
	isOnMove = 1;
}
