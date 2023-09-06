//healthbar and health
healthbar_y = self.y - sprite_height/4;
if(hp <= 0) instance_destroy();
while(dmgtake > 0){
	with (instance_create_layer(x, y - (sprite_height/2), "Numbers", objNumbers)){
		dmg = other.bulletdmg*other.dmgmult;
		clr = other.clr;
	}
	hp -= dmgtake;
	dmgtake = 0;
}

if(place_meeting(x + xVel, y, objTile)){
	xVel *= -1;
	lastDir = xVel;
}
else if(place_meeting(x, y, objEnemy)){
	xVel *= -1;
	lastDir = xVel;
}
x += xVel;

//collison line
while(collision_line(x, y, x, y+1800, objPlayer, false, false) && shootcd <= 0){
	if(collision_line(x, y, x, y+drLine, objTile, false, false)){
		drLine = 0;
		shootcd = 1;
	}
	else if(collision_line(x, y, x, y+drLine, objPlayer, false, false)){
		xVel = 0;
		shootcd = 61;
		drLine = 0;
	}
	drLine++;
}

shootcd--;
if(shootcd <= 30) if(xVel == 0) xVel = lastDir;
if(xVel == 0 && shootcd <= 0) xVel = 5;
if(shootcd == 60 || shootcd == 50 || shootcd == 40){
	with (instance_create_layer(other.x, other.y, "Bullets", objPewbad)){
		speed = 15;
		direction = 270;
		image_angle = direction;
		dmg = other.dmg;
	}	
}

