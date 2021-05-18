roomUnitsWide = floor(room_width / 32); //Tracks how many units wide the room is in terms of 32 pixel blocks, like how you see them in the room editor
                                        //If room width in pixels is not an even multiple of 32, this will be set to the greatest number of whole 32 pixel blocks that can fit in that width
spawnTimer = 0.25 //How many seconds pass between spawning each fireball
alarm[0] = room_speed * spawnTimer