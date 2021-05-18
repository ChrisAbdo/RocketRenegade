draw_set_font(font)
if interp {
	draw_text_transformed(x,y,text,curGrowthScale,curGrowthScale,0)
} else {
	draw_text(x,y,text)
}