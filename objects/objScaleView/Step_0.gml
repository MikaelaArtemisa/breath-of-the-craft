/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (keyboard_check(ord("G")))
{
    zoom_factor -= 0.01;
}
else
if (keyboard_check(ord("F")))
{
    zoom_factor += 0.01;
}

view_wview[0] = 1366* (zoom_factor);
view_hview[0] = 768 * (zoom_factor);
