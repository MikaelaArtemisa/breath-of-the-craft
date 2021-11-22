/// @description Variables generales
// Puede escribir su código en este editor
depth = 0;
image_index = 0;
image_speed = 0;

//Camara sigue jugador
camera_set_view_target(view_camera[id], objJugador);

///---------------------------------------------------------------------------------
// ATRIBUTOS DEL JUGADOR
///---------------------------------------------------------------------------------

vida = 100;
energia = 100;
temperatura = 100;

///---------------------------------------------------------------------------------
// Abri menú
///---------------------------------------------------------------------------------
menuopciones = false;



///---------------------------------------------------------------------------------
// ELEMENTOS JUGADOR
///---------------------------------------------------------------------------------
armas = 0;
vida = 100;

//ITEMS
roca = 0;
madera = 0;
hierro = 0;
flechas = 3;
//ARMAS
tieneArco = false;
tieneFlechas = false;
tieneEspada = false;
tieneHacha = false;
tienePico = false;