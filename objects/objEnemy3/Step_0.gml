//causes the enemy to follow the player
//the enemy will activate if the player is within 150 x units away
if ((objPlayer.x >= (x - 150)) and (objPlayer.x <= (x + 150))) and !((objPlayer.x >= (x - 3)) and (objPlayer.x <= (x + 3))){ 
	sprite_index = sprEnemy3Angry
	if !activated {
		audio_play_sound(soundEnemyActivate,0,false)
		activated = true;
	}
	moveSpeed = 3.2;
	if (objPlayer.x - x > 0){
		moveDir = 1;
	}
	else if (objPlayer.x - x = 0){
		moveDir = 0;
	}
	else{
		moveDir = -1;
		
	}
}
//if enemy is too close to the player, the enemy will stop moving
else if ((objPlayer.x >= (x - 3)) and (objPlayer.x <= (x + 3))){
	moveSpeed = 0;
}


//if the player isn't close, the enemy will not become activatd and will not increase in speed
else{
	sprite_index = sprEnemy3Calm;
	moveSpeed = 2;
	activated = false
	
}


dx = moveSpeed * moveDir;
dy = dy + grav;

//Colision for x
if (dx > 0) {
	if (tilemap_get_at_pixel(collision,bbox_right + dx,bbox_top) != 0) or (tilemap_get_at_pixel(collision,bbox_right + dx,bbox_bottom) != 0) {
		moveDir = -1;
		while (tilemap_get_at_pixel(collision,bbox_right + dx,bbox_top) != 0) or (tilemap_get_at_pixel(collision,bbox_right + dx,bbox_bottom) != 0) {
			if (activated == false){
				dx -= 1
			}
			else{
				dx = 0
			}
		}
	}
}
if (dx < 0) {
	if (tilemap_get_at_pixel(collision,bbox_left + dx,bbox_top) != 0) or (tilemap_get_at_pixel(collision,bbox_left + dx,bbox_bottom) != 0) {
		moveDir = 1;
		while (tilemap_get_at_pixel(collision,bbox_left + dx,bbox_top) != 0) or (tilemap_get_at_pixel(collision,bbox_left + dx,bbox_bottom) != 0) {
			if (activated == false){
				dx += 1
			}
			else{
				dx = 0
			}
		}
	}
}

x += dx



//Colision for y
if (dy > 0) {
	while (tilemap_get_at_pixel(collision,bbox_right,bbox_bottom + dy) != 0) or (tilemap_get_at_pixel(collision,bbox_left,bbox_bottom + dy) != 0) {
		dy -= 1
	}
}
if (dy < 0) {
	while (tilemap_get_at_pixel(collision,bbox_right,bbox_top + dy) != 0) or (tilemap_get_at_pixel(collision,bbox_left,bbox_top + dy) != 0) {
		dy += 1
	}
}

y += dy