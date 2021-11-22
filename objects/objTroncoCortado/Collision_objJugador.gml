/// @description Interacción con Jugador

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
	vida = vida - 0.1;
}
//Golpear usando espada
if objJugador.sprite_index = sprJugadorEspada && objJugador.image_index = 1{
	vida = vida- 0.5;	
}
//Golpear usando hacha
if objJugador.sprite_index = sprJugadorHacha && objJugador.image_index = 1{
	vida = vida - 3;	
}
//Golpear usando pico
if objJugador.sprite_index = sprJugadorPico && objJugador.image_index = 1{
	vida = vida - 10;	
}

//--------------------------------------------------


if keyboard_check(ord("A")){
if objJugador.x > self.x{
	self.x = self.x -0.1;
}

if objJugador.x < self.x{
	self.x = self.x +0.1;
}

}else{

if keyboard_check(ord("A")){
if objJugador.y < self.y{
	self.y = self.y +0.1;
}

if objJugador.y > self.y{
	self.y = self.y -0.1;
}
}
}
