event_inherited();

move_speed = 2;

image_speed = 0;

// Coisas da animação. Fazendo sem sprite_index por preguiça de recortar frames.
walk_anims = [
	[3, 7, 3, 15],
	[1, 5, 1, 13],
	[2, 6, 2, 14],
	[0, 4, 0, 12],
];

cur_anim = 0;

anim_frame = 0;
anim_time = 0;
anim_speed = 8;
anim_count = 4;

// Vida
hearts = 4;
hp_max = hearts * 4;
hp = hp_max;

function __obj_player_animate() {
	anim_time++;
	if (anim_time >= anim_speed) {
		anim_frame++;
		if (anim_frame >= anim_count) {
			anim_frame = 0;	
		}
		
		anim_time = 0;
	}
		
	
	image_index = walk_anims[cur_anim][anim_frame];
}

function __obj_player_draw_heart(_x, _y, _hp) {
	var _heart_mod = _hp mod 4; // Vendo se o HP é multiplo de 4
	if (_hp > 0) draw_sprite(spr_heart, _heart_mod, _x, _y);
	else draw_sprite(spr_heart, 4, _x, _y);
}