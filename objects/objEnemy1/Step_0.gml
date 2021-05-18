 dx = moveSpeed * moveDir;
dy = dy + grav;

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
