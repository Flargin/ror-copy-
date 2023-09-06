var dmgScale = sqrt(dmg/dmgBase)
image_xscale = dmgScale;

if(sprite_index == sprYbeambomb){
	if(image_index+image_speed >= image_number) image_speed *= 1.1;
	if(image_speed > 0.8){
		image_speed = 1;
		with(instance_create_layer(x, y, "Bullets", objYbeam2)){
			dmg = other.dmg;
			dmgBase = other.dmgBase;
			clr = other.clr;
			image_speed = 1;
		}
		sprite_index = sprYbeam;
	}
}
if(sprite_index == sprYbeam){
	//animation
	if(!place_meeting(x, y, objTile)){
		image_yscale += 20;
	}
	if(c == 60) image_alpha -= 0.05;
	else c++;
	if(image_alpha <= 0) instance_destroy();
	phit--;
	ehit--;
}