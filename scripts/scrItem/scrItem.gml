function scrItem(){
	if(instance_exists(objPlayer)){
	//item 0/template code
	objRoommanager.procch[0] = 10*objRoommanager.item[0]; //number here is % chance 0-100
	if(objRoommanager.item[0] > 0 && objRoommanager.proc[0] == true){
		objRoommanager.proc[0] = false;
		with (instance_create_layer(objPlayer.x, objPlayer.y, "Bullets", objPew2)){
			//start the item's function code here
			dmgBase = 50*1.1*objRoommanager.item[0];
			dmg = objRoommanager.dmg[0]*1.1*objRoommanager.item[0] //dmg of bullet = initial projectile dmg*(base multiplier + multiplier per stack of item)
			dmgmult = other.dmgmult;
		}
	}
	
	//item 1
	objRoommanager.procch[1] = 10*objRoommanager.item[1];
	if(objRoommanager.item[1] > 0 && objRoommanager.proc[1] == true && object_exists(objPlayer)){
		objRoommanager.proc[1] = false;
		with (instance_create_layer(objPlayer.x, objPlayer.y, "BulletsReal", objPew2)){
			speed = 20;
			direction = objGun.image_angle;
			image_angle = direction;
			dmgBase = 50*1.1*objRoommanager.item[1];
			dmg = objRoommanager.dmg[1]*1.1*objRoommanager.item[1];
			dmgmult = other.dmgmult;
		}
	}
	//item 2
	objRoommanager.procch[2] = 5*objRoommanager.item[2];
	if(objRoommanager.item[2] > 0 && objRoommanager.proc[2] == true && object_exists(objPlayer)){
		objRoommanager.proc[2] = false;
		with (instance_create_layer(objPlayer.x, objPlayer.y, "Bullets", objBounceBomb)){
			dmgBase = 50*5*objRoommanager.item[2];
			dmg = objRoommanager.dmg[2]*5*(objRoommanager.item[2]);
			dmgmult = other.dmgmult;
		}
	}
	//item 3
	objRoommanager.procch[3] = 20*objRoommanager.item[3]; 
	if(objRoommanager.item[3] > 0 && objRoommanager.proc[3] == true){
		objRoommanager.proc[3] = false;
		with (instance_create_layer(objRoommanager.bulletX, objRoommanager.bulletY, "Bullets", objYExplosion)){
			dmgBase = 50*1.8*(objRoommanager.item[3]);
			dmg = objRoommanager.dmg[3]*1.8*(objRoommanager.item[3]);
			dmgmult = other.dmgmult;
		}
	}
	//item 4
	objRoommanager.procch[4] = 50 + 25*(objRoommanager.item[4]-1);
	if(objRoommanager.item[4] > 0 && objRoommanager.proc[4] == true){
		objRoommanager.proc[4] = false;
		with (instance_create_layer(objPlayer.x, objPlayer.y, "BulletsReal", objDud)){
			speed = 5;
			direction = objGun.image_angle + random_range(-15,15);
			image_angle = direction;
			dmgBase = 50*0.1*objRoommanager.item[4];
			dmg = objRoommanager.dmg[4]*0.1*objRoommanager.item[4];
			dmgmult = other.dmgmult;
		}
	}
	//item 5
	objRoommanager.procch[5] = 1000*(objRoommanager.item[5]);
	if(objRoommanager.item[5] > 0 && objRoommanager.proc[5] == true){
		objRoommanager.proc[5] = false;
		objRoommanager.hp += objRoommanager.dmg[5]*((objRoommanager.item[5])/10);
	}
	else if(objRoommanager.item[5] > 0 && objRoommanager.healmiss == true){
		objRoommanager.healmiss = 0;
		objRoommanager.hp -= objRoommanager.dmg[5]*((objRoommanager.item[5])/5);
	}
	//item 6
	objRoommanager.procch[6] = (10/3)*objRoommanager.item[6]; //number here is % chance 0-100
	if(objRoommanager.item[6] > 0 && objRoommanager.proc[6] == true){
		objRoommanager.proc[6] = false;
		with (instance_create_layer(objRoommanager.bulletX, objRoommanager.bulletY, "Bullets", objYbeam)){
			dmgBase = 50*1.2*objRoommanager.item[6];
			dmg = objRoommanager.dmg[6]*1.2*objRoommanager.item[6];
			dmgmult = other.dmgmult;
		}
	}

}
}