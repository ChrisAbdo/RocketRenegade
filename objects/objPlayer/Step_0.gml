//Compute move direction on x-axis based on player input; either -1 if receiving left input(s), 1 if receiving right input(s), or 0 if receiving both left and right inputs at the same time
var inAir


//Determine whether or not player is jumping
var jumping = 0;
if (tilemap_get_at_pixel(collision,bbox_left,bbox_bottom+1) != 0) or (tilemap_get_at_pixel(collision,bbox_right,bbox_bottom+1) != 0) or (place_meeting(bbox_right,bbox_bottom+1,objPlatform)) {
	if (keyboard_check_pressed(vk_space)) {
		jumping = 1
		audio_play_sound(soundJump,0,false);
	}
	inAir = false;
} else {
	inAir = true;
}

if inAir = false {
	xMoveDir = (keyboard_check(ord("D")) or keyboard_check(vk_right)) - (keyboard_check(ord("A")) or keyboard_check(vk_left));
} else if inAir = true and blastJumping = false {
	xMoveDir = (keyboard_check(ord("D")) or keyboard_check(vk_right)) - (keyboard_check(ord("A")) or keyboard_check(vk_left));
} else {
	xMoveDir = 0	
}

if (xMoveDir > 0) {
	sprite_index = sprPlayerRWalk
	if !audio_is_playing(soundWalk) and !inAir {
		audio_play_sound(soundWalk,0,false)
	}
} else if (xMoveDir < 0) {
	sprite_index = sprPlayerLWalk
	if !audio_is_playing(soundWalk) and !inAir {
		audio_play_sound(soundWalk,0,false)
	}
}

//Compute new rocketImpulseX
if rocketImpulseX > 0 {
	rocketImpulseX -= drag
	if rocketImpulseX < 0 {
		rocketImpulseX = 0
	}
} else if rocketImpulseX < 0 {
	rocketImpulseX += drag
	if rocketImpulseX > 0 {
		rocketImpulseX = 0
	}
}

//Determine whether standing on a moving platform, and if so compute a value equivalent to that platform's horizontal speed to add to dx
var platformStanding = (instance_position(bbox_right,bbox_bottom+1,objPlatform))
var platformStandingDx = 0;
var platformStandingDy = 0;
if platformStanding != noone {
	platformStandingDx = platformStanding.hVelocity;
	if platformStanding.vSpeed < 0 {
		platformStandingDy = platformStanding.vSpeed
	} else {
		platformStandingDy = 0
	}
} else if platformStanding = -4 {
	platformStandingDx = 0; 	
}

if (rocketImpulseX > 10) {
	rocketImpulseX = 10	
} else if (rocketImpulseX < -10) {
	rocketImpulseX = -10	
}
if (rocketImpulseY > 10) {
	rocketImpulseY = 10	
}

//Compute dx and dy
if inAir = false {
	blastJumping = false	
}
if inAir = true and blastJumping = false {
	dx = rocketImpulseX*(0.8) + (xMoveDir * moveSpeed) + platformStandingDx;
} else if inAir = false {
	dx = rocketImpulseX*(0.8) + (xMoveDir * moveSpeed) + platformStandingDx;
} else if inAir = true and blastJumping = true {
	dx = dx + rocketImpulseX*(1) + (xMoveDir * moveSpeed) + platformStandingDx;	
}
//TEMPORARILY removed rocketImpulseX from this calculation until we've figured out x-axis rocket impulse correctly
dy = dy + rocketImpulseY*(-1) + grav + (jumping * jumpImpulse);


//x-axis collisions
if (dx > 0) {
	var xPixelsToMove = dx;
	for (i = 1; i <= dx; i += 1) {
		if (tilemap_get_at_pixel(collision,bbox_right + i,bbox_top) != 0) or (tilemap_get_at_pixel(collision,bbox_right + i,bbox_bottom) != 0) {
			xPixelsToMove = i - 1;
			break;
		}
	}
	x += xPixelsToMove;
}
if (dx < 0) {
	var xPixelsToMove = abs(dx);
	for (i = 1; i <= abs(dx); i += 1) {
		if (tilemap_get_at_pixel(collision,bbox_left - i,bbox_top) != 0) or (tilemap_get_at_pixel(collision,bbox_left - i,bbox_bottom) != 0) {
			xPixelsToMove = i - 1;
			break;
		}
	}
	x -= xPixelsToMove;
}

//y-axis collisions
if (dy > 0) {
	while (position_meeting(bbox_right,bbox_bottom,objPlatform)) or (position_meeting(bbox_left,bbox_bottom,objPlatform)) {
		y -= 1
	}
	var yPixelsToMove = dy;
	for (i = 1; i <= dy; i += 1) {
		if (tilemap_get_at_pixel(collision,bbox_right,bbox_bottom + i) != 0) or (tilemap_get_at_pixel(collision,bbox_left,bbox_bottom + i) != 0) or (position_meeting(bbox_right,bbox_bottom + i,objPlatform)) or (position_meeting(bbox_left,bbox_bottom + i,objPlatform)) {
			if (position_meeting(bbox_right,bbox_bottom + i,objPlatform)) or (position_meeting(bbox_left,bbox_bottom + i,objPlatform)) {
				hi = 0;
			}
			yPixelsToMove = i - 1;
			dy = 0;
			break;
		}
	}
	y += yPixelsToMove;
}
if (dy < 0) {
	while (position_meeting(bbox_right,bbox_top,objPlatform)) or (position_meeting(bbox_left,bbox_top,objPlatform)) {
		y -= 1
	}
	var yPixelsToMove = abs(dy)
	for (i = 1; i <= abs(dy); i += 1) {
		if (tilemap_get_at_pixel(collision,bbox_right,bbox_top - i) != 0) or (tilemap_get_at_pixel(collision,bbox_left,bbox_top - i) != 0) {
			yPixelsToMove = i - 1;
			dy = 0;
			break;
		}
	}
	y -= yPixelsToMove;
}

//resetting impulse every frame so that it only applies once
if (rocketImpulseY > 0 or rocketImpulseY < 0) {
	rocketImpulseY = 0
}
if (rocketImpulseX > 0 or rocketImpulseX < 0) {
	rocketImpulseX = 0
}

//adds a death counter
instance_create_depth(0,0,0,deathCounter);

//if (rocketImpulseX > 0){
//	rocketImpulseX = 0	
//}


