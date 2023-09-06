//movement
xVel = 0;
yVel = 0;
grav = 1
last_h = 0;

//horizontal movement
accel_max = 10;	//maximum speed of acceleration
accel = 1;		//how fast you want to accelerate
accel_current = 0;

//jump
jcount = 0;

//healthbar
hp = 3000;
hp_max = hp;
dmgtake = 0;
dmgtakei = 0;

healthbar_width = 640;
healthbar_height = 7;
healthbar_x = view_wport[0]/2 - healthbar_width/2;
healthbar_y = 32;

//dmg multiplier
dmgmult = 1;
//invuln
invuln = 0;