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