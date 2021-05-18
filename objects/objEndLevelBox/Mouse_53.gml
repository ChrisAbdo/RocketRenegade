if (device_mouse_x_to_gui(0) >= yesLeftBorder) and (device_mouse_x_to_gui(0) <= yesRightBorder) and (device_mouse_y_to_gui(0) <= yesBottomBorder) and (device_mouse_y_to_gui(0) >= yesTopBorder) {
	room_goto_next();
} else if (device_mouse_x_to_gui(0) >= noLeftBorder) and (device_mouse_x_to_gui(0) <= noRightBorder) and (device_mouse_y_to_gui(0) <= noBottomBorder) and (device_mouse_y_to_gui(0) >= noTopBorder) {
	room_goto(rmLevelSelect);
}
show_debug_message("yesTop: " + string(yesTopBorder))
show_debug_message("yesBottom: " + string(yesBottomBorder))
show_debug_message("yesLeft: " + string(yesLeftBorder))
show_debug_message("yesRight: " + string(yesRightBorder))
show_debug_message("mouseX:" + string(window_mouse_get_x()))
show_debug_message("mouseY:" + string(window_mouse_get_y()))