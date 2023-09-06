var dmgScale = sqrt(dmg/dmgBase);
image_yscale = dmgScale;
image_xscale = dmgScale;

if(image_index > image_number - 1)instance_destroy(); 
