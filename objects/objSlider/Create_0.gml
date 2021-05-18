knobLeftBorder = bbox_left
knobRightBorder = bbox_right
sliderLength = bbox_right - bbox_left
knob = instance_create_layer(knobLeftBorder + (global.masterVolume * sliderLength),y,"Dev_Objects",objSliderKnob)
knob.leftBorder = knobLeftBorder
knob.rightBorder = knobRightBorder