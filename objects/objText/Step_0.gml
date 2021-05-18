halfWidth = string_width(text) / 2
halfHeight = string_height(text) / 2
if ((x - halfWidth) <= mouse_x) and (mouse_x <= (x + halfWidth)) and ((y - halfHeight) <= mouse_y) and (mouse_y <= (y + halfHeight)) {
	hoveringOver = true
	curGrowthScale = lerp(curGrowthScale,maxGrowthScale,growthInterp)
} else {
	hoveringOver = false
	curGrowthScale = lerp(curGrowthScale,minGrowthScale,growthInterp)
}