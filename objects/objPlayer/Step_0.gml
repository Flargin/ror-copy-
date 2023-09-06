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

var mov_up = ((((keyboard_check(ord("W"))) > 0) + ((keyboard_check(vk_up)) > 0)) > 0)
var mov_left = ((((keyboard_check(ord("A"))) > 0) + ((keyboard_check(vk_left)) > 0)) > 0)
var mov_down = ((((keyboard_check(ord("S"))) > 0) + ((keyboard_check(vk_down)) > 0)) > 0)
var mov_right = ((((keyboard_check(ord("D"))) > 0) + ((keyboard_check(vk_right)) > 0)) > 0)

var hor_move = mov_right - mov_left;

if(keyboard_check_pressed(vk_space) == 1) jcount = 5;

if(jcount > 0) jcount--;


if (place_meeting(x, y + 1, objTile)){
    jump = ((keyboard_check_pressed(vk_space) + (jcount > 0)) > 0);    
}

else jump = 0;

//gravity
yVel += grav - 18*jump;

//yVel = 5*(mov_down - mov_up);

//horizontal movement

if (hor_move != 0){
    if(last_h != hor_move){
        last_h = hor_move;
        accel_current = 0;
    }
        
    if(accel_current <= accel_max){
        accel_current += accel;
    }
}

else{
    if(accel_current > 0){
        accel_current -= accel;
    }
}
    
if (accel_current < accel){
    accel_current = 0;
    last_h = 0;
}
    
xVel = accel_current * last_h;

//healthbar
if(hp <= 0){
	instance_destroy(instance_nearest(x, y, objGun))
	instance_destroy();
}
if(hp > hp_max) hp = hp_max;
//invulnerability
invuln--;

while(dmgtakei > 0){
	with (instance_create_layer(x, y - (sprite_height/2), "Numbers", objNumbers)){
		dmg = other.bulletdmg;
		clr = other.clr;
	}
	hp -= dmgtakei;
	dmgtakei = 0;
}

if(dmgtake > 0 && invuln <= 0){
	with (instance_create_layer(x, y - (sprite_height/2), "Numbers", objNumbers)){
		dmg = other.bulletdmg;
		clr = other.clr;
	}
	hp -= dmgtake;
	dmgtake = 0;
	invuln = 45;
}
else dmgtake = 0;
if(y > room_height){
	x = 8152;
	y = 4540;
}