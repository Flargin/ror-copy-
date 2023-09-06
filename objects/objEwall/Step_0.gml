//radius activation
if(instance_exists(objPlayer)){
	pCol = collision_circle(x, y, 64*6, objPlayer, false, false);
	pCol2 = collision_circle(x, y, 64*25, objPlayer, false, false); //temporary
	var player = instance_nearest(x, y, objPlayer);
	pAngle = point_direction(x, y, player.x, player.y);
}

//health
if(hp <= 0) instance_destroy();
while(dmgtake > 0){
	if(!pCol){
		with (instance_create_layer(x, y - (sprite_height/2), "Numbers", objNumbers)){
			dmg = other.bulletdmg*other.dmgmult;
			clr = other.clr;
		}
		hp -= dmgtake;
		dmgtake = 0;
	}
	else{
		with (instance_create_layer(x, y - (sprite_height/2), "Numbers", objNumbers)){
			dmg = 0;
			clr = other.clr;
		}
		dmgtake = 0;
	}
}

//shootcd
if(!pCol) shootcd--;

if(!pCol && shootcd <= 0 && pCol2){
	with (instance_create_layer(other.x, other.y, "Bullets", objPewbad)){
		speed = 5;
		direction = other.pAngle + random_range(-1,1);
		image_angle = direction;
		dmg = other.dmg;
	}	
	shootcd = 180;
}

//sprite
if(pCol) sprite_index = sprEwallG;
else sprite_index = sprEwall;
