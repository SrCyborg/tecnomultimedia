let balaX = 0;let balaY = 0;
let Disparar = false;
let DireccionBala; let Velocidad = 4;
function Proyectil(){
if(Disparar){
  if(DireccionBala == "N"){image(proyectil[0], balaX, balaY-26,10,13)
  balaY-= Velocidad;
  if(balaY < 28){Disparar = false;}}
  if(DireccionBala == "S"){image(proyectil[2], balaX, balaY+26,10,13)
  balaY+= Velocidad;
  if(balaY > 612){Disparar = false;}}
  if(DireccionBala == "O"){image(proyectil[3], balaX-26, balaY,13,10)
  balaX-= Velocidad;
  if(balaX < 262){Disparar = false;}}
  if(DireccionBala == "E"){image(proyectil[1], balaX+26, balaY,13,10)
  balaX+= Velocidad;
  if(balaX > 843){Disparar = false;}}
}
BalaChoco();
if(!Disparar){
balaY = 0;
balaX = 0;}
}
function BalaChoco(){
 for(let x = 0; x < ancho; x++){
  for(let y = 0; y < alto; y++){
    let BalaXChoco = balaX+5 > casillaX+x*48 - 24;
    let BalaXChoco2 = balaX-5 < casillaX+x*48 + 24;
    let BalaYChoco = balaY+5 > casillaY+y*48 - 24;
    let BalaYChoco2 = balaY-5 < casillaY+y*48 + 24;
 if(BalaXChoco && BalaYChoco && BalaXChoco2 && BalaYChoco2){
   if(cuadrilla[x][y] == 1){cuadrilla[x][y] = 0; Disparar = false;}
   if(cuadrilla[x][y] == 2){Disparar = false;}}
  }
 }

}
