x += (xTo - x)/12;
y += (yTo - y)/12;

if ( follow != noone )
{
	if oPlayer.active == 1 && oPlayer2.active == 1
	{
		xTo = ( oPlayer.x + oPlayer2.x ) / 2;
		yTo = ( oPlayer.y + oPlayer2.y ) / 2;
	}
	else 
	{
		if !oPlayer.active == 1
		{
			follow = oPlayer2;
		}	
		else
		{
			follow = oPlayer;
		}
		xTo = follow.x;
		yTo = follow.y;
	}
}

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0,1,0);
camera_set_view_mat( camera, vm );

if oPlayer.active == 1 && oPlayer2.active == 1
{
	xPlayer = oPlayer.x;
	yPlayer = oPlayer.y;

	xPlayer2 = oPlayer2.x;
	yPlayer2 = oPlayer2.y;

	xPlayersGap = abs( xPlayer - xPlayer2 );
	yPlayersGap = abs( yPlayer - yPlayer2 );
	
	if xPlayersGap > 340 or yPlayersGap > 240 
	{
		var newX = xPlayersGap + 160;
		var newY = yPlayersGap + 160;
		var coef = newX / newY;
	
		if coef != 1.33
		{
			if coef > 1.33
			{
				newY = newX / 1.33;
			}
			else 
			{
				newX = newY * 1.33;
			}
		}
		show_debug_message( coef );
		
		xTo = ( xPlayer + xPlayer2 ) / 2;
		yTo = ( yPlayer + yPlayer2 ) / 2;

		var pm = matrix_build_projection_ortho( newX, newY, -1000, 10000 );
		camera_set_proj_mat( camera, pm );

		var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0,1,0);
		camera_set_view_mat( camera, vm );
	}
}



