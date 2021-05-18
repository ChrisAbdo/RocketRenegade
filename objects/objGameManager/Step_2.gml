camera_set_view_size(view_camera[0],global.viewWidth,global.viewHeight)

if instance_exists(objPlayer) {
	var curX = camera_get_view_x(view_camera[0])
	var curY = camera_get_view_y(view_camera[0])
	
	var newX = clamp(objPlayer.x - (global.viewWidth/2),0,room_width - global.viewWidth)
	var newY = clamp(objPlayer.y - (global.viewHeight/2),0,room_height - global.viewHeight)
	
	interpSpd = 0.1
	
	camera_set_view_pos(view_camera[0],lerp(curX,newX,interpSpd),lerp(curY,newY,interpSpd))
}