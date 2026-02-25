alpha = 0;
side = 1;

function __obj_fade_draw() {
	draw_set_colour(c_black);
	draw_set_alpha(alpha);
	draw_rectangle(0, 0, BASE_W, BASE_H , false);
	draw_set_alpha(1);
	draw_set_colour(c_white);
}