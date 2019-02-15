var theObject = id;
var playersLinkedNumber = 0;
	
for ( var i = 0; i < 2; i++ ) {
	if ( playersLinked[i, 0] != 0 ) {
		playersLinkedNumber++;
	}
}

if playersLinkedNumber == playersToMove && playersToMove != 0 {
	isOnMove = 1;
} else {
	isOnMove = 0;
}

if isOnMove == 1 {
	var player; 
	var mvspeed = 2;
	var collisionSpeed = mvspeed + 2;	
	
	for ( var i = 0; i < 2; i++ ) {
		if playersLinked[i, 0] != 0 {
			player = playersLinked[i, 0];
			break;
		}
	}
		
	var playerNumber = player.playerNumber;
	
	var left = player.left;
	var right = player.right;
	var up = player.up;
	var down = player.down;
	
	var diffX = abs( x - player.x );
	var diffY = abs( y - player.y );
	
	// Si besoin que d'un joueur pour bouger
	if playersToMove == 1 {
		// Gauche Droite
		if diffX > diffY { 
			show_debug_message( "gauche droite" );
			if keyboard_check( left ) {
				show_debug_message( "1 seul gauche" );
				if x < player.x {
					if !place_free( x - collisionSpeed, y ) {
						while place_free( x - 1, y ) {
							x -= 1;
							player.x -= 1;
						}
					} else {
						x -= mvspeed;
						player.x -= mvspeed;
					}
				} else {
					with ( player ) {
						if !place_free( x - collisionSpeed, y ) {
							while place_free( x - 1, y ) {
								x -= 1;
								theObject.x -= 1;
							}
						} else {
							x -= mvspeed;
							theObject.x -= mvspeed;
						}
					}
				}
			} 
			if keyboard_check( right ) {
				show_debug_message( "1 seul droite" );
				if x > player.x {
					if !place_free( x + collisionSpeed, y ) {
						while place_free( x + 1, y ) {
							x += 1;
							player.x += 1;
						}
					} else {
						x += mvspeed;
						player.x += mvspeed;
					}
				} else {
					with ( player ) {
						if !place_free( x + collisionSpeed, y ) {
							while place_free( x + 1, y ) {
								x += 1;
								theObject.x += 1;
							}
						} else {
							x += mvspeed;
							theObject.x += mvspeed;
						}
					}
				}
			} 
		} else { // Haut Bas
			show_debug_message( "haut bas" );
			if keyboard_check( up ) {
				show_debug_message( "1 seul haut" );
				if y < player.y {
					if !place_free( x, y - collisionSpeed ) {
						while place_free( x, y - 1 ) {
							y -= 1;
							player.y -= 1;
						}
					} else {
						y -= mvspeed;
						player.y -= mvspeed;
					}
				} else {
					with ( player ) {
						if !place_free( x, y - collisionSpeed ) {
							while place_free( x, y - 1 ) {
								y -= 1;
								theObject.y -= 1;
							}
						} else {
							y -= mvspeed;
							theObject.y -= mvspeed;
						}
					}
				}
			} 
			if keyboard_check( down ) {
				show_debug_message( "1 seul bas" );
				if y > player.y {
					if !place_free( x, y + collisionSpeed ) {
						while place_free( x, y + 1 ) {
							y += 1;
							player.y += 1;
						}
					} else {
						y += mvspeed;
						player.y += mvspeed;
					}
				} else {
					with ( player ) {
						if !place_free( x, y + collisionSpeed ) {
							while place_free( x, y + 1 ) {
								y += 1;
								theObject.y += 1;
							}
						} else {
							y += mvspeed;
							theObject.y += mvspeed;
						}
					}
				}
			} 
		}
	} else if playersToMove == 2 { // S'il faut deux persos pour le faire bouger
		var player2;
		
		for ( var j = 0; j < 2; j++ ) {
			if j != playerNumber {
				player2 = playersLinked[j, 0];
				break;
			}
		}
		
		var left2 = player2.left;
		var right2 = player2.right;
		var up2 = player2.up;
		var down2 = player2.down;
		
		player2.solid = 0;
		
		// Si les deux personnages sont au même endroit
		// A droite ou gauche
		if player2.x == player.x && diffX > diffY {
			if keyboard_check( left ) && keyboard_check( left2 ) {
				show_debug_message( "2 gauche" );
				if x < player.x {
					if !place_free( x - collisionSpeed, y ) {
						while place_free( x - 1, y ) {
							x -= 1;
							player.x -= 1;
							player2.x -= 1;
						}
					} else {
						x -= mvspeed;
						player.x -= mvspeed;
						player2.x -= mvspeed;
					}
				} else {
					with ( player ) {
						if !place_free( x - collisionSpeed, y ) {
							while place_free( x - 1, y ) {
								x -= 1;
								player2.x -= 1;
								theObject.x -= 1;
							}
						} else {
							x -= mvspeed;
							player2.x -= mvspeed;
							theObject.x -= mvspeed;
						}
					}
				}
			}
			if keyboard_check( right ) && keyboard_check( right2 ) {
				show_debug_message( "2 droite" );
				if x > player.x {
					if !place_free( x + collisionSpeed, y ) {
						while place_free( x + 1, y ) {
							x += 1;
							player.x += 1;
							player2.x += 1;
						}
					} else {
						x += mvspeed;
						player.x += mvspeed;
						player2.x += mvspeed;
					}
				} else {
					with ( player ) {
						if !place_free( x + collisionSpeed, y ) {
							while place_free( x + 1, y ) {
								x += 1;
								player2.x += 1;
								theObject.x += 1;
							}
						} else {
							x += mvspeed;
							player2.x += mvspeed;
							theObject.x += mvspeed;
						}
					}
				}
			}
		} else if player2.y == player.y && diffX < diffY { // Si les deux persos sont au même endroit haut ou bas
			if keyboard_check( up ) && keyboard_check( up2 ) {
				show_debug_message( "2 haut" );
				if y < player.y {
					if !place_free( x, y - collisionSpeed ) {
						while place_free( x, y - 1 ) {
							y -= 1;
							player.y -= 1;
							player2.y -= 1;
						}
					} else {
						y -= mvspeed;
						player.y -= mvspeed;
						player2.y -= mvspeed;
					}
				} else {
					with ( player ) {
						if !place_free( x, y - collisionSpeed ) {
							while place_free( x, y - 1 ) {
								y -= 1;
								player2 -= 1;
								theObject.y -= 1;
							}
						} else {
							y -= mvspeed;
							player2 -= mvspeed;
							theObject.y -= mvspeed;
						}
					}
				}
			}
			if keyboard_check( down ) && keyboard_check( down2 ) {
				show_debug_message( "2 bas" );
				if y > player.y {
					if !place_free( x, y + collisionSpeed ) {
						while place_free( x, y + 1 ) {
							y += 1;
							player.y += 1;
							player2.y += 1;
						}
					} else {
						y += mvspeed;
						player.y += mvspeed;
						player2.y += mvspeed;
					}
				} else {
					with ( player ) {
						if !place_free( x, y + collisionSpeed ) {
							while place_free( x, y + 1 ) {
								y += 1;
								player2 += 1;
								theObject.y += 1;
							}
						} else {
							y += mvspeed;
							player2 += mvspeed;
							theObject.y += mvspeed;
						}
					}
				}
			}
		}
	}
}
