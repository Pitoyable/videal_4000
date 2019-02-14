//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "Fais attention, elle n'est pas loin...";
		mySpeaker[i]	= id;
	// myScripts[i]	= [create_instance_layer, 170,120,"Instances",obj_emote];
		
		//Line 1
		i++;
		myText[i]		= "Je pense qu'il faut qu'on s'en aille au plus vite";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= "Oui, cet endroit me file les chocottes..";
		mySpeaker[i]	= obj_player;
		
		//Line 3
		i++;
		myText[i]		= "La porte de la cave est verouillee, ";
		mySpeaker[i]	= id;

		i++;
		myText[i]		= "On doit pouvoir trouver quelque-chose pour l'ouvrir";
		mySpeaker[i]	= id;

		i++;
		myText[i]		= "Allons de ce cote !";
		mySpeaker[i]	= obj_player;

/*
		//Line 7
		i++;
		myText[i]		= ["(sarcastically) Blue is the best colour.", "Green is the best colour."];
		myTypes[i]		= 1;
		myNextLine[i]	= [8,9];
		myScripts[i]	= [[change_variable, id, "choice_variable", "blue"], [change_variable, id, "choice_variable", "green"]];
		mySpeaker[i]	= obj_player;

		//Line 8
		i++;
		myText[i]		= "Exactly! Thank you!";
		myEmotion[i]	= 0;
		myEmote[i]		= 0;
		myNextLine[i]	= -1;
		mySpeaker[i]	= id;

		//Line 9
		i++;
		myText[i]		= "Nooooooooooooooooooooooo!";
		myTextSpeed[i]	= [1,1, 6,0.3, 10,1];
		myEmotion[i]	= 2;
		myEmote[i]		= 9;
		mySpeaker[i]	= id;
		
*/
/*
		#endregion
	break;
	
	case "green":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "I can't believe you like green better...";
		myTextSpeed[i]	= [1, 0.3];
		myEmotion[i]	= 2;
		myEmote[i]		= 9;
		mySpeaker[i]	= id;
		myTextCol[i]	= [26,c_lime, 31,c_white];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "blue":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "Hey there, fellow blue lover!";
		myTextSpeed[i]	= [1,1, 10,0.5];
		myEmotion[i]	= 1;
		myEmote[i]		= 0;
		mySpeaker[i]	= id;
		myTextCol[i]	= [19,c_aqua, 23,c_white];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
*/
}
