/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//Detener jugador al colisionar
with(objJugador){
speed = 0;	
}

//Mostrar Tronco
image_index = 1;
image_speed = 0;

//Golpear usando puños
if	objJugador.sprite_index = sprJugadorGolpeando{
	vida= vida - 0.1;
}
//Golpear usando espada
if objJugador.sprite_index = sprJugadorEspada && objJugador.image_index = 1{
	vida = vida - 0.5;	
}
//Golpear usando hacha
if objJugador.sprite_index = sprJugadorHacha && objJugador.image_index = 1{
	vida = vida - 3;	
}


