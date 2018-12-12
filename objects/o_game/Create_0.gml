global.red_pos = 0;
global.blue_pos = 0;

turn = 1;

top_x = 100;
top_y = 100;

// top row
for (i = 1; i < 8; i++) {
	xx = top_x + (i * 64);
	yy = top_y;
	var inst = instance_create_layer(xx, yy, "Board", o_square);
	inst.text = string(i);
	inst.value = i;
}

// second row
j = 1;
for (i = 14; i >= 8; i--) {
	xx = top_x + (j * 64);
	yy = top_y + 64; // down 1 row
	var inst = instance_create_layer(xx, yy, "Board", o_square);
	inst.text = string(i);
	inst.value = i;
	j++;
}

// bottom row
j = 1;
for (i = 15; i < 20; i++) {
	xx = top_x + (j * 64);
	yy = top_y + (64 * 2); // down 2 rows
	var inst = instance_create_layer(xx, yy, "Board", o_square);
	inst.text = string(i);
	inst.value = i;
	j++;
}
// winner square
xx = top_x + (6 * 64) + 32;
yy = top_y + (64 * 2); // down 2 rows
var inst = instance_create_layer(xx, yy, "Board", o_square_winner);
inst.text = string("WINNER");
inst.value = 20;

red_player = instance_create_layer(top_x - 20, top_y, "Instances", o_player_red);
blue_player = instance_create_layer(top_x - 20, top_y + 20, "Instances", o_player_blue);
die = instance_create_layer(top_x + 240, top_y - 60, "Instances", o_die);
