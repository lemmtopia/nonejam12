draw_set_font(fnt_tutorial);

draw_set_colour(c_black);

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_rectangle(0, 0, BASE_W, BASE_H, false);

scr_draw_text_outline(BASE_W / 2, BASE_H / 5, text, c_white);	

scr_draw_text_outline(BASE_W / 2, BASE_H - 20, "Pressione Enter para continuar", c_white);

draw_set_halign(-1);
draw_set_valign(-1);

draw_set_font(-1);

draw_set_colour(c_white);
