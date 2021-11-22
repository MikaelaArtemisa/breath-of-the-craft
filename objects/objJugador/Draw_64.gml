/// @description HUD (TEXTOS)
// Puede escribir su código en este editor


//MODO PRUEBAS
draw_text(10,70,  "ARMA USADA: " +string(armas));		
draw_text(10,90, "FPS = " + string(fps_real));

//VIDAS----------------------
draw_text(10,33,vida);
//SIN ARMAS----------------------
draw_text(115,33,"[Z]");
//ARCO----------------------
draw_text(162,33,"[Q]");
draw_text(210,33,flechas);
//FECHAS----------------------
draw_text(325,33,"[W]");
//HACHA----------------------
draw_text(380,33,"[E]");
//PICO----------------------
draw_text(437,33,"[R]");

//MATERIALES----------------------
draw_text(1188,33,madera);
draw_text(1257,33,roca);
draw_text(1326,33,hierro);