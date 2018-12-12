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
	room_width/2, 100, "BORED GAME", 4, 4, 0, c, c, c, c, 1
);
draw_text(
	room_width/2, 200,
	@"First one to the last board space wins!	
			
	Rules:
	- left mouse click on die to roll
	- each player begins on square 1
	- turns alternate
	- first player to get to last square wins
	- players roll one 6-sided die per turn
	- two players may occupy the same space	
			
	>> PRESS ENTER TO START <<
	"
);
draw_set_halign(fa_left);
