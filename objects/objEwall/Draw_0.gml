draw_self();
if(image_angle == 180) draw_sprite_stretched(sprHBar, 0, self.x - sprite_width/2, self.y + 5*sprite_height/4,(hp/hp_max)*healthbar_width, healthbar_height);
else if(image_angle == 90) draw_sprite_stretched(sprHBar, 0, self.x - sprite_width, self.y - 5*sprite_height/4,(hp/hp_max)*healthbar_width, healthbar_height);
else if(image_angle == 270) draw_sprite_stretched(sprHBar, 0, self.x, self.y - 5*sprite_height/4,(hp/hp_max)*healthbar_width, healthbar_height);
else draw_sprite_stretched(sprHBar, 0, self.x - sprite_width/2, self.y - 5*sprite_height/4,(hp/hp_max)*healthbar_width, healthbar_height);