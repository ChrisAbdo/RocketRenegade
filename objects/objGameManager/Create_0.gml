//View/window/camera setup

global.viewWidth = 960;
global.viewHeight = 540;

global.windowScale = 1;

window_set_size(global.viewWidth*global.windowScale,global.viewHeight*global.windowScale);
alarm[0] = 1;

surface_resize(application_surface,global.viewWidth*global.windowScale,global.viewHeight*global.windowScale);

//Initialize player data/levels unlocked based on save.ini, default everything to 0/unlocked if save.ini doesn't exist

ini_open("save.ini")

global.coinsCollected = ini_read_real("PlayerData", "CoinsCollected", 0);
global.lifetimeScore = ini_read_real("PlayerData", "lifetimeScore", 0);

global.level1Locked = false //No reason to check the save because level 1 should always be unlocked
global.level2Locked = ini_read_real("LevelsUnlocked", "Level2", true);
global.level3Locked = ini_read_real("LevelsUnlocked", "Level3", true);
global.level4Locked = ini_read_real("LevelsUnlocked", "Level4", true);
global.level5Locked = ini_read_real("LevelsUnlocked", "Level5", true);
global.level6Locked = ini_read_real("LevelsUnlocked", "Level6", true);
global.level7Locked = ini_read_real("LevelsUnlocked", "Level7", true);
global.level8Locked = ini_read_real("LevelsUnlocked", "Level8", true);
global.level9Locked = ini_read_real("LevelsUnlocked", "Level9", true);
global.level10Locked = ini_read_real("LevelsUnlocked", "Level10", true);
global.theEndLocked = ini_read_real("LevelsUnlocked", "theEnd", true);

ini_close();

//Init text drawing settings
draw_set_color(c_red);
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

//Init fonts
global.menuFontMax = fPixelMax
global.menuFontBig = fPixelBig
global.menuFontMedium = fPixelMedium
global.menuFontSmall = fPixelSmall
global.menuFontTiny = fPixelTiny
global.menuFontTinier = fPixelTinier

//Start music
audio_play_sound(soundMusic,0,true);

//Init death counter
global.deathCount = 0;

//Init master volume level (always will be between 0 and 1)
global.masterVolume = 1