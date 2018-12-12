top_x = 100;
top_y = 100;

// top row
for (i = 1; i < 8; i++) {
	xx = top_x + (i * 64);
	yy = top_y;
	var inst = instance_create_layer(xx, yy, "Instances", o_square);
	inst.text = string(i);
}

// second row
j = 1;
for (i = 14; i >= 8; i--) {
	xx = top_x + (j * 64);
	yy = top_y + 64; // down 1 row
	var inst = instance_create_layer(xx, yy, "Instances", o_square);
	inst.text = string(i);
	j++;
}

// bottom row
j = 1;
for (i = 15; i < 20; i++) {
	xx = top_x + (j * 64);
	yy = top_y + (64 * 2); // down 2 rows
	var inst = instance_create_layer(xx, yy, "Instances", o_square);
	inst.text = string(i);
	j++;
}
// winner square
xx = top_x + (6 * 64) + 32;
yy = top_y + (64 * 2); // down 2 rows
var inst = instance_create_layer(xx, yy, "Instances", o_square_winner);
inst.text = string("WINNER");
