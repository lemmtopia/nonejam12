enum MENU_OPTION {
	PLAY,
	QUIT
}

options = [ 
	{
		text: "Jogar",
		type: MENU_OPTION.PLAY
	}, 
	{
		text: "Sair",
		type: MENU_OPTION.QUIT
	}
];
cur_option = 0;