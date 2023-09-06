switch(clr){
	case 0: colorr = #00FFFF; break;
	case 1: colorr = #FFFF00; break;
	case 2: colorr = #FF00FF; break;
}

c--;
if(c <= 0) instance_destroy();

y--;
size = max(sqrt(dmg/50),1)