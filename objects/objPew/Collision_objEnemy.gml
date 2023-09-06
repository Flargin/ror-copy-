for(var i = 0; i < objRoommanager.ITEMS; i += 1){
		var xx = random_range(0,100);
		var yy = objRoommanager.procch[i]*procco;
		if(xx < yy){
			objRoommanager.dmg[i] = dmg
			objRoommanager.proc[i] = true;
		}
}
objRoommanager.bulletX = x
objRoommanager.bulletY = y

var enemy = instance_place(x, y, objEnemy);
enemy.dmgtake += dmg*dmgmult;
enemy.clr = clr;
enemy.bulletdmg = dmg;
enemy.dmgmult = dmgmult;
scrItem();
instance_destroy();