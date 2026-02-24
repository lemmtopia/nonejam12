var _movex = keyboard_check(vk_right) - keyboard_check(vk_left);
var _movey = keyboard_check(vk_down) - keyboard_check(vk_up);

var _dir = point_direction(0, 0, _movex, _movey);

if (_movex != 0 || _movey != 0) {
	hsp = lengthdir_x(move_speed, _dir);	
	vsp = lengthdir_y(move_speed, _dir);	
	
	cur_anim = floor(_dir / 90);
	__obj_player_animate();
} else {
	hsp = 0;
	vsp = 0;
}

// Empurrar as caixas
var _box = instance_place(x + hsp, y + vsp, obj_box);
if (_box && _box.world == world) {
	var _push_dir = _dir; //floor(_dir / 90) * 90;
	_box.hsp = lengthdir_x(1, _push_dir);	
	_box.vsp = lengthdir_y(1, _push_dir);	
}