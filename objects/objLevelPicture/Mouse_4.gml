//Go to a level; "level" variable should be defined PER INSTANCE in the creation code
//of each instance of this object, but by default it will be set to rmLevelSelect as defined in this object's
//Create event. Note: Create event and creation code are two different things! Look it up if you need to.
if !levelLocked {
	room_goto(level);
}