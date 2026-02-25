if (room == room_last) {
	global.game_state = GAME_STATE.MENU;
	room_goto(rm_menu);
} else room_goto_next();