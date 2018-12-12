if (mouse_check_button_released(mb_left)) {
	var roll = scr_roll();	
	if (turn) {
		scr_move(0, roll);
	} else {
		scr_move(1, roll);
	}
	turn = !turn
	
	if (global.winner >= 0) {
		room_goto(rm_gameover);
	}
}