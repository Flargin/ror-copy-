var place = instance_nearest(objPlayer.x, objPlayer.y, objCenter);
camWidth = 1920;
camHeight = 1088;

follow = place;

x = place.x
y = place.y

xTo = x;
yTo = y;

zoom_level = 1;

//Get the starting view size to be used for interpolation later
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);