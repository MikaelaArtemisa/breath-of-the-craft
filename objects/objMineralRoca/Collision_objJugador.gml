/// @description Inserte aquí la descripción
///---------------------------------------------------------------------------------
//OBTENER ARCO PRESIONANDO C
///---------------------------------------------------------------------------------
if keyboard_check_pressed(ord("C")){
	// MENSAJE DE CONFIRMACIÓN|show_message("OBTENIDO");
	with(objJugador){
	roca = roca+3	
	}
	instance_destroy();
}