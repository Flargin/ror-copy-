//health
if(hp <= 0) instance_destroy();
while(dmgtake > 0){
	with (instance_create_layer(x, y - (sprite_height/2), "Numbers", objNumbers)){
		dmg = other.bulletdmg*other.dmgmult;
		clr = other.clr;
	}
	hp -= dmgtake;
	dmgtake = 0;
}