enum MENU_OPTION {
	PLAY,
	TUTORIAL,
	QUIT
}

options = [ 
	{
		text: "Jogar",
		type: MENU_OPTION.PLAY
	},
	{
		text: "Tutorial",
		type: MENU_OPTION.TUTORIAL
	}, 
	{
		text: "Sair",
		type: MENU_OPTION.QUIT
	}
];
cur_option = 0;

sel_text = "Pressione Space para selecionar";

audio_stop_all();
audio_play_sound(snd_menumusic, 1, true, 0.75);

press = 0;