text = "You beat the game!"
font = global.menuFontSmall
interp = true
maxGrowthScale = 20
audio_pause_sound(soundMusic)
if audio_is_paused(soundEndScreen) {
	audio_resume_sound(soundEndScreen)
} else {
	audio_play_sound(soundEndScreen,0,true)
}