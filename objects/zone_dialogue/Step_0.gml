event_inherited();
reset_dialogue_defaults();

var pousser=1;
var marge=10;
var joueur=obj_player;
var joueur2=obj_player2;
/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
	
//repousser vers le bas

//joueur1
if place_meeting(x,y,joueur) 
{
	if (joueur.y<zone_dialogue.bbox_bottom && joueur.y>zone_dialogue.bbox_bottom-marge &&  joueur.x>=zone_dialogue.bbox_left+marge/2 && joueur.x<=zone_dialogue.bbox_right-marge/2)
	{
	joueur.y+=pousser;
	}	
//repousser vers le haut
	else if (joueur.y>zone_dialogue.bbox_top && joueur.y<zone_dialogue.bbox_top+marge && joueur.x>=zone_dialogue.bbox_left+marge/2 && joueur.x<=zone_dialogue.bbox_right-marge/2)
	{
	joueur.y-=pousser;
	}
	
//repousser vers la droite
	else if (joueur.x<zone_dialogue.bbox_right && joueur.x>zone_dialogue.bbox_right-marge  && joueur.y>=zone_dialogue.bbox_top+marge/2 && joueur.y<=zone_dialogue.bbox_bottom-marge/2)
	{
	joueur.x+=pousser;
	}
//repousser vers la gauche
	else if (joueur.x>zone_dialogue.bbox_left && joueur.x<zone_dialogue.bbox_left+marge  && joueur.y>=zone_dialogue.bbox_top+marge/2 && joueur.y<=zone_dialogue.bbox_bottom-marge/2)
	{
	joueur.x-=pousser;
	}
}

//joueur2
if place_meeting(x,y,joueur2) 
{
	if (joueur2.y<zone_dialogue.bbox_bottom && joueur2.y>zone_dialogue.bbox_bottom-marge &&  joueur2.x>=zone_dialogue.bbox_left+marge/2 && joueur2.x<=zone_dialogue.bbox_right-marge/2)
	{
	joueur2.y+=pousser;
	}	
//repousser vers le haut
	else if (joueur2.y>zone_dialogue.bbox_top && joueur2.y<zone_dialogue.bbox_top+marge && joueur2.x>=zone_dialogue.bbox_left+marge/2 && joueur2.x<=zone_dialogue.bbox_right-marge/2)
	{
	joueur2.y-=pousser;
	}
	
//repousser vers la droite
	else if (joueur2.x<zone_dialogue.bbox_right && joueur2.x>zone_dialogue.bbox_right-marge  && joueur2.y>=zone_dialogue.bbox_top+marge/2 && joueur2.y<=zone_dialogue.bbox_bottom-marge/2)
	{
	joueur2.x+=pousser;
	}
//repousser vers la gauche
	else if (joueur2.x>zone_dialogue.bbox_left && joueur2.x<zone_dialogue.bbox_left+marge  && joueur2.y>=zone_dialogue.bbox_top+marge/2 && joueur2.y<=zone_dialogue.bbox_bottom-marge/2)
	{
	joueur2.x-=pousser;
	}
}



if  (joueur.x>=zone_dialogue.bbox_left+marge/2 && joueur.x<=zone_dialogue.bbox_right-marge/2 && joueur.y>=zone_dialogue.bbox_top+marge/2 && joueur.y<=zone_dialogue.bbox_bottom-marge/2) || (joueur2.x>=zone_dialogue.bbox_left+marge/2 && joueur2.x<=zone_dialogue.bbox_right-marge/2 && joueur2.y>=zone_dialogue.bbox_top+marge/2 && joueur2.y<=zone_dialogue.bbox_bottom-marge/2) {

	 reset_dialogue_defaults();

	switch(choice_variable)
		{
		case -1:
		#region 
			var i = 0;
			myText[i]		= "pas par la !";
			mySpeaker[i]	= obj_examplechar;
			create_dialogue(myText[i],mySpeaker[i],-1)
		
		#endregion
		test=0;
		}

}

