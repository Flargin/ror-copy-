var dmgScale = sqrt(dmg/dmgBase);
image_xscale = dmgScale;

var beam = instance_nearest(x, y, objYbeam);
if(c == 59) image_alpha -= 0.05;
else c++;
if(image_alpha <= 0) instance_destroy();
image_index = beam.image_index;
if(!place_meeting(x, y, objTile)){
		image_yscale -= 20;
	}
