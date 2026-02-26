var _box = instance_place(x, y, obj_box);
if (_box) {
	// Ativado
	if (!press) {
		audio_play_sound(snd_click, 0, 0, 0.3);	
		
		// Trocando a minha caixa de mundo
		_box.world = !_box.world;
	}
	press = 1;
	image_index = 1;
} else {
	// Desativado
	press = 0;
	image_index = 0;
}