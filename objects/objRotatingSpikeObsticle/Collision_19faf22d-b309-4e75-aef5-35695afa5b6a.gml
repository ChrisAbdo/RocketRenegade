//Checks if the instance of a flag exists in the room
if instance_exists(objCheckpointFlag){
	if objCheckpointFlag.checkPointActivated == true{
		objPlayer.x = objCheckpointFlag.xLocation;
		objPlayer.y = objCheckpointFlag.yLocation;
		objPlayer.dx = 0;
		objPlayer.dy = 0;
	}
}
else{
	room_restart();
}
