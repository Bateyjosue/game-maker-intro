if (finished) {
    // keep the player frozen (optional)
    x_speed = 0;
    y_speed = 0;
    exit;
}

x_speed = 0;
y_speed += grav;

// Move player
if keyboard_check(vk_right){
	x_speed = movement_speed;
} else if keyboard_check(vk_left){
	x_speed = -movement_speed;
}

// Update layer position
move_and_collide(x_speed, y_speed, oSolid);

if(place_meeting(x, y+1, oSolid)){
	if(keyboard_check_pressed(vk_up)){
		y_speed=-7;
		//x_speed = movement_speed + 2;
	} else {
		y_speed=0;
	}
}


if(place_meeting(x, y, oSpike)){
	room_restart();
}


if(y > room_height or y< 0 or x > room_width or x < 0){
	room_restart();
}

if(keyboard_check(vk_right)){
	x_speed = movement_speed;
	image_xscale = -1;
	
} else if keyboard_check(vk_left){
	x_speed = -movement_speed;
	image_xscale = 1;
}