// move player
pp = argument0 // 0=red 1=blue
num = argument1 // number of squares to move forward

var winner = false;

var new_pos = 0;
var player;
var player_offset = 0;
if (pp == 0) {
	global.red_pos += num;
	if (global.red_pos > 20) {
		global.red_pos = 20;
	}
	new_pos = global.red_pos;
	player = o_player_red;
} else {
	global.blue_pos += num;
	if (global.blue_pos > 20) {
		global.blue_pos = 20;
	}
	new_pos = global.blue_pos;
	player = o_player_blue;
	player_offset = 12;
}

// calculate the new x and y
var xx = 0;
var yy = 0;

// find o_square with value of the position
var ss;
for (var i = 0; i < instance_number(o_square); i++) {
	var s = instance_find(o_square, i);
	if (s.value == new_pos) {
		ss = s;
		break;
	}
}

if (new_pos <= 19) {
	xx = ss.x + 7 + player_offset;
	yy = ss.y + 22;
} else {
	// winner
	xx = o_square_winner.x + 7 + player_offset;
	yy = o_square_winner.y + 22;
	global.winner = pp;
}

// move the player object
player.x = xx;
player.y = yy;

