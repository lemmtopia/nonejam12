var _box = instance_place(x, y, obj_box);
if (_box && _box.world == world) {
	// Ativado
	if (!press) {
		audio_play_sound(snd_click, 0, 0, 0.3);	
	}
	press = 1;
} else {
	// Desativado
	press = 0;
}