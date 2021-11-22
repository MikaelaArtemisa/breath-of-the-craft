/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


///---------------------------------------------------------------------------------
// OPCIONES DE JUEGO
///---------------------------------------------------------------------------------
//SALIR DEL JUEGO
if keyboard_check_pressed(vk_escape){
room_goto(menuPrincipal);	
}
//REINICIAR ROOM
if keyboard_check_pressed(ord("K")){
room_restart();	
}
///---------------------------------------------------------------------------------
// Abrir menu de opciones
///---------------------------------------------------------------------------------

if keyboard_check_pressed(ord("P")){
	if menuopciones = 0{
	room_goto(menuopciones);
	menuopciones = 1;
	}else{
	
	if menuopciones = 1{
	room_goto(mundo);
	menuopciones = 0;	
	}
	
	}
	
}

if keyboard_check_pressed(ord("O")){
	window_set_fullscreen(true);	
	}
	
	if keyboard_check_pressed(ord("I")){
	window_set_fullscreen(false);	
	}
	
