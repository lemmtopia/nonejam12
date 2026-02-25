alpha += side * 0.05;

if (side == -1 && alpha <= 0) {
	instance_destroy();	
}