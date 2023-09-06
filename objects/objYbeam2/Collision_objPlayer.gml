var player = instance_place(x, y, objPlayer);
var beam = instance_nearest(x, y, objYbeam);

if(beam.phit <= 0){
	player.dmgtakei = dmg;
	player.clr = clr;
	player.bulletdmg = dmg;
	beam.phit = 15;
}