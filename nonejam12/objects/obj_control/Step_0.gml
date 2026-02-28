if (global.game_state == GAME_STATE.GAME) {
	var _button_count = instance_number(obj_button);
	
	// Loop por todos os botões para ver se todos estão ativos
	var _active = 0;
	for (var _i = 0; _i < _button_count; _i++) {
		var _button = instance_find(obj_button, _i);
		
		if (_button.press) _active++;
		else break;
	}
	
	if (_active == _button_count) {
		if (alarm[0] == -1) {
			// Alarm para ir pra próxima fase
			alarm[0] = game_get_speed(gamespeed_fps);	
			instance_create_depth(0, 0, 0, obj_fade);
			audio_play_sound(snd_win, 0, 0, 0.2);
		}
	}
	
	if (hint_show) {
		hint_alpha += 0.1;
		if (hint_alpha > 1) hint_alpha = 1;
	}
}