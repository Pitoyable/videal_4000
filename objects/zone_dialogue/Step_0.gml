event_inherited();
reset_dialogue_defaults();

if place_meeting(x-10,y+10 ,obj_player)
{

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

	}
}