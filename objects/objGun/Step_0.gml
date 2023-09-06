var player = instance_nearest(x,y,objPlayer)
x = player.x;
y = player.y-10;

image_angle = point_direction(x, y, mouse_x, mouse_y);
if (image_angle > 90) && (image_angle < 270) image_yscale = -1; else image_yscale = 1; 

//shoot code
switch(switchmode){
	case 0:
		moderate = 10;
		moderange = 2;
		modespeed = 50;
	break;
	
	case 1:
		moderate = 2;
		moderange = 6;
		modespeed = 30;
	break;
	
	case 2:
		moderate = 60;
		moderange = 0;
		modespeed = 90;
	break;
	
	case 3:
		moderate = 0;
		moderange = 40;
		modespeed = 28;
	break;
}

if(mouse_check_button_pressed(mb_right)) switchmode++;
if(switchmode > 3) switchmode = 0;

recoil = max(0, recoil - 1);

if(mouse_check_button(mb_left) == 1 && shootcd == 0){
	with (instance_create_layer(player.x, player.y, "Bullets", objPew)){
		speed = objGun.modespeed;
		direction = other.image_angle + random_range(-objGun.moderange,objGun.moderange);
		image_angle = direction;
		dmg = other.dmg;
		dmgmult = player.dmgmult
	}
	recoil = 4;
	shootcd = moderate;
}
else if(shootcd > 0) shootcd--;

x = x - lengthdir_x(recoil, image_angle)
y = y - lengthdir_y(recoil, image_angle)

//dev shot
if(mouse_check_button(mb_middle) == 1 && shootcd == 0){
	with (instance_create_layer(player.x, player.y, "Bullets", objPew)){
		speed = objGun.modespeed;
		direction = other.image_angle + random_range(-objGun.moderange,objGun.moderange);
		image_angle = direction;
		dmg = 99999;
	}
	recoil = 4;
	shootcd = 120;
}