//Init physics vars
xMoveDir = 1;
moveSpeed = 3;
grav = 1;
drag = 1;
jumpImpulse = -10;
rocketImpulseX = 0;
rocketImpulseY = 0;
dx = 0;
dy = 0;
blastJumping = false;

//Get ID of collision layer

collisionTilemap = layer_get_id("Tiles");
collision = layer_tilemap_get_id(collisionTilemap);

//Create arm

arm = instance_create_depth(x, y,-10000, objArm);

//Get bbox offsets

bboxLeftOffset = abs(x - bbox_left);
bboxRightOffset = abs(x - bbox_right);
bboxTopOffset = abs(y - bbox_top);
bboxBottomOffset = abs(y - bbox_bottom);
