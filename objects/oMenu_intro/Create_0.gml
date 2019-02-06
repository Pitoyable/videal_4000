menu_x = surface_get_width(application_surface)/2;
menu_y = surface_get_height(application_surface)/2;
button_h = 32;

// buttons
button[0] = "Room1";
button[1] = "Room dialogue";
button[2] = "Options";
button[3] = "Quitter";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;