for (var _i = 0; _i < hearts; _i++) {
	var _x = 3 + _i * 18;
	
	var _heart = hp div 4;
	if (_heart > _i) __obj_player_draw_heart(_x, 3, hp_max);
	else if (hp div 4 < _i) __obj_player_draw_heart(_x, 3, 0);
	else __obj_player_draw_heart(_x, 3, hp mod 4);
}