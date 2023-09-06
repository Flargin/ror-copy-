//healthbar and health
healthbar_x = self.x - sprite_width/2;
healthbar_y = self.y - sprite_height*1.25;
if(hp <= 0) instance_destroy();
while(dmgtake > 0){
	with (instance_create_layer(x, y - (sprite_height/2), "Numbers", objNumbers)){
		dmg = other.bulletdmg*other.dmgmult;
		clr = other.clr;
	}
	hp -= dmgtake;
	dmgtake = 0;
}

//AI
if(instance_exists(objPlayer)){
	var player = instance_nearest(x, y, objPlayer)

	if(x - player.x < 0) horMov = 1;
	else horMov = -1;
}

//physics
if (place_meeting(x + xVel, y, objTile)){
    while(!place_meeting(x + sign(xVel), y , objTile) && (sign(xVel) != 0)){
        x += sign(xVel);
    }
    xVel = 0;
}

x += xVel;


if (place_meeting(x, y + yVel, objTile)){
    while (!place_meeting(x, y + sign(yVel), objTile) && (sign(yVel) != 0)){
        y += sign(yVel);
    }

    yVel = 0;
    
}

y += yVel;

//jump
if(place_meeting(x + xVel*5, y, objTile)) jcount = 5;

if(jcount > 0) jcount--;

var jcheck = (xVel == 0 && abs(horMov) > 0);
if (place_meeting(x, y + 1, objTile)){
    jump = ((jcount > 0) + jcheck) > 0;    
}
else jump = 0;

//gravity
yVel += grav - 18*jump;

//movement
accel = clamp(accel, -accelMax, accelMax);
if(horMov == 1) accel += 0.5;
else if(horMov == -1) accel -= 0.5;
//else if(horMov == 0) 

xVel = accel;