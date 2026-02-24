if (global.game_state == GAME_STATE.GAME) {
	var _button_count = instance_number(obj_button);
	
	// Loop por todos os botões para ver se todos estão ativos
	var _active = 0;
	for (var _i = 0; _i < _button_count; _i++) {
		var _button = instance_find(obj_button, _i);
		
		if (_button.press) _active++;
		else break;
	}
	
	if (_active == _button_count && room != room_last) {
		room_goto_next();
	}
}