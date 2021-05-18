if (tilemap_get_at_pixel(collision,x,y) != 0) or place_meeting(x,y,objPlatform) {
	//make the rocket explode
	sprite_index = sprExplode
	var impulseX = 0;
	var impulseY = 0;
	timer += 1
	if timer == 2 {
		//explosion jump calculation
		playerDistance = sqrt(power((objPlayer.x-x),2) + power((objPlayer.y-y),2))
		if (playerDistance < explosionRadius){
			objPlayer.blastJumping = true
			//velocity equations:
			// v = d / |d|^2
			// velocity is the same vector as the distance vector, scaled for distance
			//horizontal velocity calculation
			//impulseX = round(((objPlayer.x - x) / ( sqrt(power(objPlayer.x - x,2) + power(objPlayer.y - y,2)) ) ));
			//impulseY = round(((objPlayer.y - y) / ( sqrt(power(objPlayer.x - x,2) + power(objPlayer.y - y,2)) ) ));
			impulseX = ((objPlayer.x-x)/playerDistance)*abs(((objPlayer.x-x)/playerDistance)) * 25
			impulseY = (-(objPlayer.y-y)/playerDistance) * 100
			
			if (impulseX > 10) {
				impulseX = 10
			} else if (impulseX < -10){
				impulseX = -10
			}
			if (impulseY > 10) {
				impulseY = 10
			} else if (impulseY < -10){
				impulseY = -10
			}
			//if ((objPlayer.x - x) > 0) {
			//	impulseX = 10;	
			//}
			//else if ((objPlayer.x - x) < 0) {
			//	impulseX = -10;	
			//}
			objPlayer.rocketImpulseX += impulseX
			impulseX = 0
			show_debug_message("Player's impulseX")
			show_debug_message(objPlayer.rocketImpulseX)
			show_debug_message("Rocket's impulseX")
			show_debug_message(impulseX)
			//vertical velocity calculation
			objPlayer.rocketImpulseY += impulseY //round(((objPlayer.y - y) / (distance_to_object(objPlayer))));	
			impulseY = 0
		}
		//kill the rocket
		instance_destroy(id)
	}
}

if sprite_index = sprExplode {
	timer2 +=1
	if timer2 = 3 {
		instance_destroy(id)	
	}
}