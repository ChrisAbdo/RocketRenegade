if (tilemap_get_at_pixel(collision,x,y) != 0) {
	//make the rocket explode
	sprite_index = sprExplode
	var impulseX = 0;
	timer += 1
	if timer == 2 {
		//kill the rocket
		instance_destroy(id)
	}
}
if objEnemy2.moveDir >= 0{
	sprite_index = sprEnemyBulletMiniR
}
else{
	sprite_index = sprEnemyBulletMiniL
}

if bulletCollision = true{
	timer += 1
	if timer == 2 {
		//kill the rocket
		instance_destroy(id)
	}
}