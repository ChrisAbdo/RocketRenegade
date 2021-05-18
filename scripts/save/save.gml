ini_open("save.ini");

ini_write_real("PlayerData", "CoinsCollected", global.coinsCollected);
ini_write_real("PlayerData", "lifetimeScore", global.lifetimeScore);

ini_write_real("LevelsUnlocked", "Level1", global.level1Locked);
ini_write_real("LevelsUnlocked","Level2", global.level2Locked);
ini_write_real("LevelsUnlocked", "Level3", global.level3Locked);
ini_write_real("LevelsUnlocked","Level4", global.level4Locked);
ini_write_real("LevelsUnlocked", "Level5", global.level5Locked);
ini_write_real("LevelsUnlocked","Level6", global.level6Locked);
ini_write_real("LevelsUnlocked", "Level7", global.level7Locked);
ini_write_real("LevelsUnlocked","Level8", global.level8Locked);
ini_write_real("LevelsUnlocked", "Level9", global.level9Locked);
ini_write_real("LevelsUnlocked","Level10", global.level10Locked);
ini_write_real("LevelsUnlocked", "theEnd", global.theEndLocked);

ini_close();