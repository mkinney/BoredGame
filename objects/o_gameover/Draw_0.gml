draw_set_halign(fa_center);
var c = c_yellow;
if (global.winner >= 0) {
	var wc;
	var winner;
	if (global.winner == 0) {
		wc = c_red;
		winner = "RED";
	}
	else {
		wc = c_blue;
		winner = "BLUE";
	}
	draw_text_transformed_color(
		room_width/2, 50, winner + " WON!", 1, 1, 0, wc, wc, wc, wc, 1
	);
}

draw_text_transformed_color(
	room_width/2, 200, "Press ENTER to continue", 1, 1, 0, c, c, c, c, 1
);
draw_set_halign(fa_left);