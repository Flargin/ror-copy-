//draw_sprite_stretched(sprHBorder, 0, healthbar_x, healthbar_y - healthbar_height)/2, healthbar_width + , healthbar_height*7);
draw_sprite_stretched(sprHBar, 0, healthbar_x, healthbar_y,min((hp/hp_max)*healthbar_width, healthbar_width), healthbar_height);