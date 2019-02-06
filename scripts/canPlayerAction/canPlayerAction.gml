// canPlayerAction()
// Le personnage peut il intéragir avec son environnement ?
if distance_to_object( oInteract ) < 15 {
	var nearestInst = instance_nearest(x, y, oMovable );
	
	if linkTo == "" && movingObject == 0
	{
		var canObjMove = canObjectMove( nearestInst ); 
		
		if canObjMove == true {
			return nearestInst;
		}
	}
}
return false;