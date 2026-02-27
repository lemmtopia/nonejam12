draw_set_font(fnt_font);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for (var _i = 0; _i < array_length(options); _i++) {
	var _col = c_white;
	if (cur_option == _i) _col = c_yellow;
	
	// Desenhando texto com outline
	scr_draw_text_outline(BASE_W / 2, BASE_H / 2 + _i * 12, options[_i].text, _col);	
}

draw_set_font(fnt_tutorial);

scr_draw_text_outline(BASE_W / 2, BASE_H - 20, "Pressione Space para selecionar", c_white);	


draw_set_halign(-1);
draw_set_valign(-1);

draw_set_font(-1);
