function scr_draw_text_outline(_x, _y, _text, _col) {
	draw_set_color(c_black);
	draw_text(_x + 1, _y, _text);	
	draw_text(_x - 1, _y, _text);	
	draw_text(_x, _y + 1, _text);	
	draw_text(_x, _y - 1, _text);	
	draw_set_color(_col);
	draw_text(_x, _y, _text);	
	draw_set_color(c_white);
}