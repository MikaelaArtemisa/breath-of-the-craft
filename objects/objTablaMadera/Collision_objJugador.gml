/// @description Inserte aquí la descripción
///---------------------------------------------------------------------------------
//OBTENER ARCO PRESIONANDO C
///---------------------------------------------------------------------------------
depth=-1000;

if keyboard_check_pressed(ord("C")){
	// MENSAJE DE CONFIRMACIÓN|show_message("OBTENIDO");
	with(objJugador){
	madera = madera+3	
	}
	instance_destroy();
}