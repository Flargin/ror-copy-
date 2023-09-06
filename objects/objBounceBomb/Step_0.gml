var dmgScale = sqrt(dmg/dmgBase);
image_yscale = dmgScale;
image_xscale = dmgScale;
//physics
y += yVel;

if(count != 3) yVel += grav - (((10 - 0.6*count)*bounce));

if (place_meeting(x, y, objTile)){
	while(place_meeting(x, y, objTile) && yVel != 0){
		y -= sign(yVel);
	}
	if(yVel > 0){
		bounce = 1;
	}
	switch(count){
		case 0: image_index = 0; break;
		case 1: image_index = 1; break;
		case 2: image_index = 2; break;
		case 3: 
			sprite_index = sprExplosion;
		break;
	}
	if(yVel < 0 && sprite_index == sprExplosion){
		yVel = 0;
		y -= 64
		image_yscale *= -1;
	}
	if(yVel < 0) yVel = -yVel;
	else yVel = 0;
}
else bounce = 0;

//bounce countdown
if(place_meeting(x, y + yVel, objTile) && count != 3) count++;
if(yVel > 0){

}
if(image_index > image_number - 1 && count == 3) instance_destroy(); 