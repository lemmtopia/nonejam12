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