// Redimensionando a janela, a surface padrão e a GUI
#macro BASE_W 320
#macro BASE_H 180

window_set_size(BASE_W * 3, BASE_H * 3);
window_center();

surface_resize(application_surface, BASE_W, BASE_H);
display_set_gui_size(BASE_W, BASE_H);

// Coisas dos tiles
#macro TILE_SIZE 16

// Iniciar a room 
room_goto(rm_menu);

enum GAME_STATE {
	MENU,
	GAME
}

global.game_state = GAME_STATE.MENU;

function __obj_control_change_world(_world) {
	if (_world) {
		layer_set_visible("Relief_2", false);	
		layer_set_visible("Relief_1", true);	
	} else {
		layer_set_visible("Relief_1", false);	
		layer_set_visible("Relief_2", true);
	}	
	
	audio_play_sound(snd_swap, 0, 0, 0.1);
}

hint1_text = "Space: Troca de mundo";
hint3_text = "Dica: Empurrar as caixas nesse jogo é estranho...";

hint_show = false;
hint_alpha = 0;