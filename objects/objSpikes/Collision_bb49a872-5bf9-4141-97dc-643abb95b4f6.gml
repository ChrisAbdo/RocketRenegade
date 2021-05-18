//increments the global death count
global.deathCount = global.deathCount + 1

//Checks if the instance of a flag exists in the room
if instance_exists(objCheckpointFlag){
	//if the flag is activated, the player's position will be reset to the flag's postion
	if objCheckpointFlag.checkPointActivated == true{
		objPlayer.x = objCheckpointFlag.xLocation;
		objPlayer.y = objCheckpointFlag.yLocation;
		objPlayer.dx = 0;
		objPlayer.dy = 0;
	}
	//otherwise the room will be reset
	else{
		room_restart();
	}
}
//if there is no flag in the room the room will just automatically reset
else{
	room_restart();
}