/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


with(objJugador){
	
if flechas <= 0{
	flechas = 0;
}

}



//INCENDIAR FLECHA SI HACE CONTACTO CON EL FUEGO (FUNCIONA EN STEP
//apagarfuego = 0;
//for(apagarfuego = 0; apagarfuego < 1; apagarfuego += 1){
if image_index = 1 && speed = 0{
instance_create_depth(self.x,self.y,-1000,objFuegoFlechas);
image_index = 0;
}
//}