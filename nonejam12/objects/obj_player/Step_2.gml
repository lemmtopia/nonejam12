hsp += frac_hsp;
vsp += frac_vsp;

frac_hsp = hsp - floor(abs(hsp) * sign(hsp));
frac_vsp = vsp - floor(abs(vsp) * sign(vsp));

hsp -= frac_hsp;
vsp -= frac_vsp;

var _bbox_side;

// Colisão horizontal
if (hsp > 0) _bbox_side = bbox_right - 1;
else _bbox_side = bbox_left;

p1 = tilemap_get_at_pixel(tilemap, _bbox_side + hsp, bbox_top);
p2 = tilemap_get_at_pixel(tilemap, _bbox_side + hsp, bbox_bottom - 1);

if (p1 == 1 || p2 == 1) {
	if (hsp > 0) x -= ((bbox_right - 1) mod TILE_SIZE) - (TILE_SIZE - 1);
	else x -= (bbox_left mod TILE_SIZE);
	hsp = 0;
}

x += hsp;

// Colisão vertical
if (vsp > 0) _bbox_side = bbox_bottom;
else _bbox_side = bbox_top;

p1 = tilemap_get_at_pixel(tilemap, bbox_left, _bbox_side + vsp);
p2 = tilemap_get_at_pixel(tilemap, bbox_right - 1, _bbox_side + vsp);

if (p1 == 1 || p2 == 1) {
	if (vsp > 0) y -= ((bbox_bottom - 1) mod TILE_SIZE) - (TILE_SIZE - 1);
	else y -= (bbox_top mod TILE_SIZE);
	vsp = 0;
}

y += vsp;