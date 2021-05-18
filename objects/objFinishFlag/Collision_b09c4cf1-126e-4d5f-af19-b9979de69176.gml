if !touched {
	touched = true
	//Create the end of level dialogue box
	instance_create_depth(0,0,0,objEndLevelBox);

	//Unlock the next level
	switch room {
		case rmLevel1:
			global.level2Locked = false;
			break;
		case rmLevel2:
			global.level3Locked = false;
			break;
		case rmLevel3:
			global.level4Locked = false;
			break;
		case rmLevel4:
			global.level5Locked = false;
			break;
		case rmLevel5:
			global.level6Locked = false;
			break;
		case rmLevel6:
			global.level7Locked = false;
			break;
		case rmLevel7:
			global.level8Locked = false;
			break;
		case rmLevel8:
			global.level9Locked = false;
			break;
		case rmLevel9:
			global.level10Locked = false;
			break;
		case rmLevel10:
			global.theEndLocked = false;
			break;
	}

	//Save progress
	save()
}