if (instance_exists(obj_tutorial)) exit;

var _movey = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
cur_option += _movey;

// Limitando o cursor
cur_option = clamp(cur_option, 0, array_length(options) - 1);

var _press = keyboard_check_pressed(vk_space);
if (_press && !press) {
	var _opt = options[cur_option];
	
	// Qual opção é a que eu selecionei?
	switch (_opt.type) {
		case MENU_OPTION.PLAY:
			global.game_state = GAME_STATE.GAME;
			room_goto(rm_1);
			break;
		case MENU_OPTION.TUTORIAL:
			instance_create_depth(x, y, depth - 1, obj_tutorial);
			break;
		case MENU_OPTION.QUIT:
			game_end();
			break;
	}
	
	press = true;
}

press = false;