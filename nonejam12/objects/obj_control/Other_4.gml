if (layer_exists("Tiles_1")) {
	// Esconder layer de colisão
	layer_set_visible("Tiles_1", false);
}

if (layer_exists("Relief_2")) {
	// Esconder layer do mundo 2
	layer_set_visible("Relief_2", false);
}

var _fade = instance_create_depth(0, 0, 0, obj_fade);
_fade.alpha = 1;
_fade.side = -1;

if (global.game_state == GAME_STATE.GAME && !audio_is_playing(snd_gamemusic)) {
	audio_stop_all();
	audio_play_sound(snd_gamemusic, 1, true, 0.75);
}

// Acionando os alarms das dicas
if (room == rm_1) {
	alarm[1] = game_get_speed(gamespeed_fps) * 8;	
} else if (room == rm_3) {
	alarm[1] = game_get_speed(gamespeed_fps) * 15;	
}

// Resetando as dicas
hint_show = false;
hint_alpha = 0;