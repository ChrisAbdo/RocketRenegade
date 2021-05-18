moveDir = 1;
moveSpeed = 3;
grav = 1;

dx = 0;
dy = 0;

collisionTilemap = layer_get_id("Tiles");
collision = layer_tilemap_get_id(collisionTilemap);
timer = 0;
