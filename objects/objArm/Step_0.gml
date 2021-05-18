//Rotates the arm
image_angle = point_direction(x,y,mouse_x,mouse_y);

if (reloadTimer > 0) {
	reloadTimer -= 1;	
}


if (image_angle > 90) and (image_angle < 270) { 
	if (objPlayer.xMoveDir = 0) {
		objPlayer.sprite_index = sprPlayerL;
	}
	objArm.sprite_index = rocketLauncher2;
} else {
	if (objPlayer.xMoveDir = 0) {
		objPlayer.sprite_index = sprPlayerR;
	}
	objArm.sprite_index = rocketLauncher;
}


x = objPlayer.x
y = objPlayer.y