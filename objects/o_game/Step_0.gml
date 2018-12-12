if (mouse_check_button_released(mb_left)) {
	var roll = scr_roll();
	//show_debug_message("roll:" + string(roll));
	
	if (turn) {
		scr_move(0, roll);
	} else {
		scr_move(1, roll);
	}
	turn = !turn
	
	if (global.winner >= 0) {
		//game_restart();
		//room_goto(rm_start);
		room_goto(rm_gameover);
	}
}