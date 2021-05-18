dx = moveSpeed * moveDir;
dy = dy + grav;

if (moveDir > 0) {
	sprite_index = sprPlayerHaithamRWalk
}else if (moveDir < 0) {
	sprite_index = sprPlayerHaithamLWalk	
}

//Colision for x
if (dx > 0) {
	if (tilemap_get_at_pixel(collision,bbox_right + dx,bbox_top) != 0) or (tilemap_get_at_pixel(collision,bbox_right + dx,bbox_bottom) != 0) {
		moveDir = -1;
		while (tilemap_get_at_pixel(collision,bbox_right + dx,bbox_top) != 0) or (tilemap_get_at_pixel(collision,bbox_right + dx,bbox_bottom) != 0) {
			dx -= 1
		}
	}
}
if (dx < 0) {
	if (tilemap_get_at_pixel(collision,bbox_left + dx,bbox_top) != 0) or (tilemap_get_at_pixel(collision,bbox_left + dx,bbox_bottom) != 0) {
		moveDir = 1;
		while (tilemap_get_at_pixel(collision,bbox_left + dx,bbox_top) != 0) or (tilemap_get_at_pixel(collision,bbox_left + dx,bbox_bottom) != 0) {
			dx += 1
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

timer +=1;
if (timer == 200){

	bullet = instance_create_depth(x, y,-10000, objEnemyBulletMini);
	if moveDir > 0{
		bullet.direction = 0;
	}
	else{
		bullet.direction = 180;
	}
	bullet.speed = 5;
	timer = 0

}