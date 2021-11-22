/// @description Inserte aquí la descripción
///---------------------------------------------------------------------------------
//OBTENER  PRESIONANDO C
///---------------------------------------------------------------------------------
if keyboard_check_pressed(ord("C")){
	// MENSAJE DE CONFIRMACIÓN|show_message("OBTENIDO");
	with(objJugador){
	tieneFlechas = true;
	flechas = flechas + 55;
	}
	instance_destroy();
}