if (keyboard_check_pressed(vk_enter)) {
	switch (room) {
		case rm_start:
			room_goto(rm_game);
			break;
		case rm_gameover:	
			game_restart();
			break;
	}
}