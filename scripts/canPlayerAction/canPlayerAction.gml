// canPlayerAction()
// Le personnage peut il intéragir avec son environnement ?
if distance_to_object( oInteract ) < 15 {
	var aObj = instance_nearest(x, y, oMovable );
	
	if linkTo == ""
	{
		var canObjMove = canObjectMove( aObj ); 
		
		if canObjMove == true {
			return aObj;
		}
	}
}
return false;