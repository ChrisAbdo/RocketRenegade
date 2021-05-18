global.masterVolume = (knob.x - knobLeftBorder) / sliderLength //Will evaluate to a float between 0 and 1, 0 being no volume (muted), 1 being maximum volume

audio_master_gain(global.masterVolume);