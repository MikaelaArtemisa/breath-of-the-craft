/// @description Control Personaje



///---------------------------------------------------------------------------------
// VARIABLES CONTROL DE PERSONAJE
///---------------------------------------------------------------------------------



//FISICAS Y MOVIMIENTO
friction = 0;
speed = 0;
image_angle=direction;

if speed>1 || speed < 1{
speed = 0
}

//Jugador quiero
if keyboard_check(vk_nokey){
	sprite_index = sprJugador;
	image_speed = 0;
}

///---------------------------------------------------------------------------------
// 
///---------------------------------------------------------------------------------	



///---------------------------------------------------------------------------------
// ITEMS HUD
///---------------------------------------------------------------------------------	

if tieneArco = false{
	
with(objItemHudArco){
	image_index = 1;
	image_speed = 0;
}

}else{

if tieneArco = true{
with(objItemHudArco){
	image_index = 0;
	image_speed = 0;
}	
}

}

//---------------------------------------------------------------
if tieneArco = false{
	
with(objItemHudFlecha){
	image_index = 1;
	image_speed = 0;
}

}else{

if tieneFlechas = true{
with(objItemHudArco){
	image_index = 0;
	image_speed = 0;
}	
}

}

//---------------------------------------------------------------
if tieneFlechas = false && flechas <=0{
	with(objItemHudFlecha){
	sprite_index = sprNada;	
	}
}else{
		if tieneFlechas = true && flechas >0{
			sprite_index = sprFlecha;
		}
}
	


//---------------------------------------------------------------


if tieneEspada = false{
	
with(objItemHudEspada){
	image_index = 1;
	image_speed = 0;
}

}else{

if tieneEspada = true{
with(objItemHudEspada){
	image_index = 0;
	image_speed = 0;
}	
}

}

//---------------------------------------------------------------

if tieneHacha = false{
with(objItemHudHacha){
	image_index = 1;
	image_speed = 0;
}

}else{

if tieneHacha = true{
with(objItemHudHacha){
	image_index = 0;
	image_speed = 0;
}
}

}

//---------------------------------------------------------------
if tienePico = false{
with(objItemHudPico){
	image_index = 1;
	image_speed = 0;
}

}else{

if tienePico = true{
with(objItemHudPico){
	image_index = 0;
	image_speed = 0;
}
}

}


///---------------------------------------------------------------------------------
// VARIABLES DE ARMAS | ESCOGER ARMAS
///---------------------------------------------------------------------------------

if keyboard_check_pressed(ord("Z")){
	armas = 0;
	}


if keyboard_check_pressed(ord("Q")){
	if tieneArco = true{
	armas = 1;
	}
}

if keyboard_check_pressed(ord("W")){
	if tieneEspada = true{
	armas = 2;
	}
}

if keyboard_check_pressed(ord("E")){
	if tieneHacha = true{
armas = 3;
	}
}

if keyboard_check_pressed(ord("R")){
	if tienePico = true{
armas = 4;
	}


}

///---------------------------------------------------------------------------------
// VARIABLES DE ARMAS | SWITCH
///---------------------------------------------------------------------------------

switch(armas){
case 0: //Letra Q | Jugador Arco
sprite_index = sprJugador;
break;
	
case 1: //Letra Q | Jugador Arco
sprite_index = sprJugadorArco;
break;

case 2://Letra W | Jugador con espada
sprite_index = sprJugadorEspada;
image_index = 0;
image_speed = 0;
break;

case 3://Letra E | Jugador con Hacha
sprite_index = sprJugadorHacha;
image_index = 0;
image_speed = 0;
break;

case 4://Letra E | Jugador con Picota
sprite_index = sprJugadorPico;
image_index = 0;
image_speed = 0;


break;


}


///---------------------------------------------------------------------------------
// CONTROL DE PERSONAJES | DIRECIONES CON TECLADO
///---------------------------------------------------------------------------------
/*
  if keyboard_check(ord("W"))
  {
  speed += 1.5;
  image_speed = 0.2;
  }
  
if keyboard_check(ord("S"))
  {
  speed -= 1
  image_speed = 0.1;
  }
  
if keyboard_check(ord("A"))
  
  {
   direction += 2

  }
  
if keyboard_check(ord("D"))
  {
   direction -= 2

  }

*/

if keyboard_check(ord(vk_shift)){
	speed = speed + 3;
}

///---------------------------------------------------------------------------------
// CONTROL DE PERSONAJES | DIRECIONES CON MOUSE
///---------------------------------------------------------------------------------
//Caminar con clic derecho
if mouse_check_button(mb_right){
speed = 1.5;
// Animación al caminar | image_speed = 0.2;
direction = point_direction(x, y, mouse_x, mouse_y);


}


///---------------------------------------------------------------------------------
// INTERACCIONES
///---------------------------------------------------------------------------------

///Golpear con clic izquierdo
if mouse_check_button_pressed(mb_left){
	speed = 0;
	friction = 0;
	sprite_index = sprJugadorGolpeando;
	image_index = 0;
	image_speed = 0;
	
//JUGADOR CON ARCO	
	if armas = 1{
		if flechas > 0{
		instance_create_depth(self.x,self.y,-1000,objFlechaJugador);
		flechas = flechas -1;
		
		}
		
	}else{
		
	if armas = 2{
		
	if keyboard_check(vk_nokey){
		sprite_index = sprJugadorEspada;
	image_index = 0;
	image_speed = 0.1;	
	}
	
	
	
	if mouse_check_button_pressed(mb_left){
	sprite_index = sprJugadorEspada;
	image_index = 1;
	image_speed = 0;
	}
	
	}
	
	else{
	
	if armas = 3{
	
		if keyboard_check(vk_nokey){
		sprite_index = sprJugadorHacha;
	image_index = 0;
	image_speed = 0.1;	
	}
	
	
		if mouse_check_button_pressed(mb_left){
	sprite_index = sprJugadorHacha;
	image_index = 1;
	image_speed = 0;
	}
	
		
	}else{
		
		if armas = 4{
			if keyboard_check(vk_nokey){
		sprite_index = sprJugadorPico;
	image_index = 0;
	image_speed = 0.1;	
	}
	
	
		if mouse_check_button_pressed(mb_left){
	sprite_index = sprJugadorPico;
	image_index = 1;
	image_speed = 0;	
		
	}
	
		}
	
	}
	
	
	}
	
	

}
}

	
	
	
	
	
		
	
		

