event_inherited();

move_speed = 2;

image_speed = 0;

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