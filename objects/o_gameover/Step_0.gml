if (keyboard_check_pressed(vk_enter)) {
	
	switch (room) {

		case rm_gameover:	
			game_restart();
			break;
			
	}
}