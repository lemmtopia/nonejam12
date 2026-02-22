// Redimensionando a janela, a surface padrão e a GUI
#macro BASE_W 320
#macro BASE_H 180

window_set_size(BASE_W * 3, BASE_H * 3);
window_center();

surface_resize(application_surface, BASE_W, BASE_H);
display_set_gui_size(BASE_W, BASE_H);

// Iniciar a room 
room_goto(rm_test);