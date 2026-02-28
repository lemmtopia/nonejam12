if (hint_show) {
	var _text = "";
	if (room == rm_1) {
		_text = hint1_text;
	} else if (room == rm_4) {
		_text = hint4_text;
	}
	
	if (_text != "") {
	
	draw_set_font(fnt_tutorial);
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		draw_set_alpha(hint_alpha);

		scr_draw_text_outline(BASE_W / 2, BASE_H - 20, _text, c_white);
	
		draw_set_alpha(1);

		draw_set_halign(-1);
		draw_set_valign(-1);

		draw_set_font(-1);

		draw_set_colour(c_white);
	}
}

with (obj_fade) __obj_fade_draw();
