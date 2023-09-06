if(instance_exists(objPlayer)){
	var place = instance_nearest(objPlayer.x - 64*15, objPlayer.y - 64*8.5, objCenter);
	follow = place;
}
if (follow != noone){
	xTo = follow.x + 64*15;
	yTo = follow.y + 64*8.5;
}

x += (xTo - x)/10;	//higher the number, the slower the camera will follow
y += (yTo - y)/10;

x = clamp(x, camWidth/2, room_width - camWidth/2);
y = clamp(y, camHeight/2, room_height - camHeight/2);

camera_set_view_pos(view_camera[0], x-(camWidth*0.5), y-(camHeight*0.5));

//TEMPORARY MAKE SURE TO DELETE LATER
//TEMPORARY MAKE SURE TO DELETE LATER
//TEMPORARY MAKE SURE TO DELETE LATER
//TEMPORARY MAKE SURE TO DELETE LATER
//TEMPORARY MAKE SURE TO DELETE LATER
//this is cahnges the zoom based on scolling but you can set it how ever you like
zoom_level = clamp(zoom_level + (((mouse_wheel_down() - mouse_wheel_up())) * 0.1), 0.5, 4);

//Get current size
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);

//Set the rate of interpolation
var rate = 1.5;

//Get new sizes by interpolating current and target zoomed size
var new_w = lerp(view_w, zoom_level * default_zoom_width, rate);
var new_h = lerp(view_h, zoom_level * default_zoom_height, rate);

//Apply the new size
camera_set_view_size(view_camera[0], new_w, new_h);

var vpos_x = camera_get_view_x(view_camera[0]);
var vpos_y = camera_get_view_y(view_camera[0]);

//change coordinates of camera so zoom is centered
var new_x = lerp(vpos_x,vpos_x+(view_w - zoom_level * default_zoom_width)/2, rate);
var new_y = lerp(vpos_y,vpos_y+(view_h - zoom_level * default_zoom_height)/2, rate);