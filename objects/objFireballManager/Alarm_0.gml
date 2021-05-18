unitToSpawnAt = irandom_range(0,roomUnitsWide) //Pick a random 32-block unit between 0 and the room width in 32-block units to spawn the fireball at
instance_create_depth(unitToSpawnAt*32,-32,-10001,objFireball) //y-value to spawn at is always -32 so it spawns 32 pixels above the room
alarm[0] = room_speed * spawnTimer //Restart the timer to trigger this event again