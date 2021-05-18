show_debug_message("Platspeed:");
show_debug_message(path_speed);

if (x - xStart) >= horizPathLength {
	hVelocity = -hVelocity
} else if x == xStart {
	hVelocity = hSpeed
}
if (y - yStart) >= vertPathLength {
	vVelocity = -vVelocity
} else if y == yStart {
	vVelocity = vSpeed
}

x += hVelocity
y += vVelocity