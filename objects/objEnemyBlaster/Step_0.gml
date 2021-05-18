timer +=1;
if (timer == 300){

	bullet = instance_create_depth(x, y,-10000, objEnemyBullet);
	bullet.direction = 180;

	bullet.speed = 5;
	timer = 0
}