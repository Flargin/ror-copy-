var beam = instance_nearest(x, y, objYbeam);
if(beam.ehit <= 0){
	beam.ehit = 15;
	for(var i = 0; i < objRoommanager.ITEMS; i += 1){
			if(i != 6){
			var xx = random_range(0,100);
			var yy = objRoommanager.procch[i]*beam.procco;
			if(xx < yy){
				objRoommanager.dmg[i] = beam.dmg
				objRoommanager.proc[i] = true;
			}
		}
	}
	objRoommanager.bulletX = x
	objRoommanager.bulletY = y
	var enemy = instance_place(x, y, objEnemy);
	enemy.dmgtake += beam.dmg*beam.dmgmult;
	enemy.clr = beam.clr;
	enemy.bulletdmg = beam.dmg;
	enemy.dmgmult = beam.dmgmult;
	scrItem();
}
