var player = instance_place(x, y, objPlayer);

if(phit <= 0){
	player.dmgtakei = dmg;
	player.clr = clr;
	player.bulletdmg = dmg;
	phit = 1;
}
