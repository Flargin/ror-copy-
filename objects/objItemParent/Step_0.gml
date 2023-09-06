item = irandom_range(1,10)
switch(item){
	case 1: instance_create_layer(x, y, "Instances", objItem01); break;
	case 2: instance_create_layer(x, y, "Instances", objItem02); break;
	case 3: instance_create_layer(x, y, "Instances", objItem03); break;
	case 4: instance_create_layer(x, y, "Instances", objItem04); break;
	case 5: instance_create_layer(x, y, "Instances", objItem05); break;
	case 6: instance_create_layer(x, y, "Instances", objItem06); break;
	case 7: instance_create_layer(x, y, "Instances", objItem07); break;
	case 8: instance_create_layer(x, y, "Instances", objItem08); break;
	case 9: instance_create_layer(x, y, "Instances", objItem09); break;
	case 10: instance_create_layer(x, y, "Instances", objItem10); break;
}
instance_destroy();