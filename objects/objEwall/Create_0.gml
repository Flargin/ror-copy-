//healhbar
hp = 3000;
hp_max = hp;

healthbar_width = sprite_width;
healthbar_height = 7;

//damage
dmg = 500
dmgtake = 0;
bulletdmg = 0;
clr = 2;
clrp = 0;
shootcd = 0;

//automatic placement
if(place_meeting(x, y-64, objTile)){ 
	image_angle = 180; 
	y -= 64;
}
else if(place_meeting(x+1, y, objTile)){
	image_angle = 90;
	x += 32;
}

else if(place_meeting(x-1, y, objTile)){
	image_angle = 270;
	x -= 32;
}