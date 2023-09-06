//picks room layout
room_template = scrRoomlayout();

//creates the room
if(create){
	for (var y_ = 0; y_ < 17; y_ += 1) {
		for (var x_ = 0; x_ < 30; x_ += 1) {
            
		    if string_char_at(room_template, x_ + (y_ * 30) + 1) = 1 {
		        instance_create_layer(x_ * 64 + other.x - 32*29, y_ * 64 + other.y - 32*16, "Walls", objTile)
		    }  
		}
	}
	global.roomcurrent++;
	create = false;
}

if(place_meeting(x + distancex, y, objFloorplan)) rightc = false; else rightc = true;
if(place_meeting(x - distancex, y, objFloorplan)) leftc = false; else leftc = true;
if(place_meeting(x, y - distancey, objFloorplan)) upc = false; else upc = true;
if(place_meeting(x, y + distancey, objFloorplan)) downc = false; else downc = true;

if (global.roomcurrent >= roommax && count = 1){	//fills in outside passages
	life = false;
	if(rightc){
		show_debug_message("R");
		for (var y_ = 0; y_ < 17; y_ += 1) {
			for (var x_ = 0; x_ < 30; x_ += 1) {
				if string_char_at("000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001000000000000000000000000000001", x_ + (y_ * 30) + 1) = 1 {
				    instance_create_layer(x_ * 64 + other.x - 32*29, y_ * 64 + other.y - 32*16, "Walls", objTile)
				}
			}
		}
	}
	if(leftc){
		show_debug_message("L");
		for (var y_ = 0; y_ < 17; y_ += 1) {
			for (var x_ = 0; x_ < 30; x_ += 1) {
				if string_char_at("100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000100000000000000000000000000000", x_ + (y_ * 30) + 1) = 1 {
				    instance_create_layer(x_ * 64 + other.x - 32*29, y_ * 64 + other.y - 32*16, "Walls", objTile)
				}
			}
		}
	}
	if(upc){
		show_debug_message("U");
		for (var y_ = 0; y_ < 17; y_ += 1) {
			for (var x_ = 0; x_ < 30; x_ += 1) {
				if string_char_at("111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000", x_ + (y_ * 30) + 1) = 1 {
				    instance_create_layer(x_ * 64 + other.x - 32*29, y_ * 64 + other.y - 32*16, "Walls", objTile)
				}
			}
		}
	}
	if(downc){
		show_debug_message("D");
		for (var y_ = 0; y_ < 17; y_ += 1) {
			for (var x_ = 0; x_ < 30; x_ += 1) {
				if string_char_at("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111", x_ + (y_ * 30) + 1) = 1 {
				    instance_create_layer(x_ * 64 + other.x - 32*29, y_ * 64 + other.y - 32*16, "Walls", objTile)
				}
			}
		}
	}
	count = 0;
}


if(life = true && timer <= 0){
	life = false;
	choice = false;
	while(!choice){	//while loop determines if there is another floor plan object above or below it
		pdirection = irandom_range(1,5)
		switch(pdirection){
			case 1: if(x + distancex > room_width) choice = false;
					else choice = rightc;
				break;
			case 2: if(x - distancex < 0) choice = false;
					else choice = leftc;
				break;
			case 3: if(y - distancex < 0) choice = false;
					else choice = upc;
				break;
			case 4: if(y + distancex > room_height) choice = false;
					else choice = downc;
				break;
			case 5: var inst = instance_find(objFloorplan, irandom(instance_number(objFloorplan) - 1));
					inst.choice = false;
					inst.life = true;
					pdirection = 0;
					choice = true;
				break;
		}
	}
	switch(pdirection){	//creates the floorplan child object a set distance the same size as a room
		case 1: instance_create_layer(other.x + distancex, other.y, "Triggers", objFloorplanchild);
			break;
		case 2: instance_create_layer(other.x - distancex, other.y, "Triggers", objFloorplanchild);
			break;
		case 3: instance_create_layer(other.x, other.y - distancey, "Triggers", objFloorplanchild);
			break;
		case 4: instance_create_layer(other.x, other.y + distancey, "Triggers", objFloorplanchild);
			break;
	}
}
timer--;