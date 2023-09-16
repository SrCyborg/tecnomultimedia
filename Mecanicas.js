let Norte ; let Sur; let Oeste; let Este; 
let polo; let frame = 0; let avanza = true;
let ancho = 13; let alto = 13;
let cuadrilla = new Array();
let casillaX = 264; let casillaY = 32;
let  H = 552; let V = 608 ;
let Speed = 2; let movimiento = 0;
function Mover(){
  movimiento += 60/frameRate();
 if(Norte){polo = "N";
   if(movimiento >= 60/40){frame++; movimiento = 0;}
   if(avanza){V-= Speed;}
   if(V < 28){avanza = false; V+= Speed;}
   if(frame == 2){frame = 0;}
                  }
 else if(Sur){polo = "S";
   if(movimiento >= 60/40){frame++; movimiento = 0;}
   if(avanza){V+= Speed;}
   if(V > 612){avanza = false; V-= Speed;}
   if(frame == 2){frame = 0;}
                }
 else if(Este){polo = "E";
   if(movimiento >= 60/40){frame++;movimiento = 0;}
   if(avanza){H+= Speed;}
   if(H > 843){avanza = false; H-= Speed;}
   if(frame == 2){frame = 0;}
                 }
 else if(Oeste){polo = "O";
   if(movimiento >= 60/40){frame++;movimiento = 0;}
   if(avanza){H-= Speed;}
   if(H < 262){avanza = false; H+= Speed;}
   if(frame == 2){frame = 0;}
                 }
 if(polo == "N"){image(tankGreenN[frame],H,V,36,36);}
 else if(polo == "S"){image(tankGreenS[frame],H,V,36,36);}
 else if(polo == "O"){image(tankGreenO[frame],H,V,36,36);}
 else if(polo == "E"){image(tankGreenE[frame],H,V,36,36);}
Avanzar();

}

function MapaActual(){
  background(150);
   for(let x = 0; x < ancho; x++){
    for(let y = 0; y < alto; y++){    
     if(cuadrilla[x][y] == 0){image(paredes[0],casillaX+48*x,casillaY+48*y,48,48);}
     else if(cuadrilla[x][y] == 1){image(paredes[1],casillaX+48*x,casillaY+48*y,48,48);}
     else if(cuadrilla[x][y] == 2){image(paredes[2],casillaX+48*x,casillaY+48*y,48,48);}    
                                 } 
                                 }
  fill(0);                               
  text("score",950,50,60);
  text(puntos,950,80,60);
  text("Time",100,50,60);
  text(tiempo,100,80,60);
                      }
function MapaValorInicial(){
  for(let x = 0; x < ancho; x++){
    cuadrilla[x] = new Array();
    for(let y = 0; y < alto; y++){
    cuadrilla[x][y] = 0;    
     if((x % 2 != 0)&& (y != 0 && y != 12)){cuadrilla[x][y] = 1;}
     if((y > 4 && y < 8)){cuadrilla[x][y] = 0;}
     if(y == 7 &&(x == 5 || x == 7)){cuadrilla[x][y] = 1;}
     if(y == 6 && (x < 4 && x > 1)){cuadrilla[x][y] = 1;}
     if(y == 6 && (x > 8 && x < 11)){cuadrilla[x][y] = 1;} 
     if((x == 5 || x == 7)&&(y > 10)){cuadrilla[x][y] = 0;}
     if(y == 2 && x == 6){cuadrilla[x][y] = 2;}
     if(y == 8 && x == 6){cuadrilla[x][y] = 1;}
     if(y == 6 && ((x == 0)||(x == 12))){cuadrilla[x][y] = 2;}
     if(cuadrilla[x][y] == 0){image(paredes[0],casillaX+48*x,casillaY+48*y,48,48);}
     else if(cuadrilla[x][y] == 1){image(paredes[1],casillaX+48*x,casillaY+48*y,48,48);}
     else if(cuadrilla[x][y] == 2){image(paredes[2],casillaX+48*x,casillaY+48*y,48,48);}
}}
H = 552; V = 608 ;
puntos = 0;
polo = "N";
tiempo = 0;
 for(let i = 0; i < 3; i++){Direccion[i] = "S";} 
 for(let x = 0; x < ancho; x++){EneX[x] = casillaX+48*x;}
 for(let y = 0; y < 3; y++){EneY[y] = casillaY;}
 for(let i = 0; i < 3; i++){Estado[i] = "vivo";}
 for(let i = 0; i < 3; i++){Moverse[i] = false;}
 balaY = 0; balaX = 0;
}
function Avanzar() {
  for (let x = 0; x < ancho; x++) {
    for (let y = 0; y < alto; y++) {
      let Arriba =(V - 20)< casillaY + 48 * y + 24;
      let Abajo = (V + 20)> casillaY + 48 * y - 24;
      let Izq = (H - 20) < casillaX + 48 * x + 24;
      let Der = (H + 20)> casillaX + 48 * x - 24;     
      if (Arriba && Izq && Abajo && Der){
        if (cuadrilla[x][y] == 0) {avanza = true;} 
   else if (cuadrilla[x][y] != 0) {avanza = false;}
      if(!avanza){
       if(polo == "S"){V-= Speed;}
       else if(polo == "N"){V+=Speed;}
       else if(polo == "E"){H-= Speed;}
       else if(polo == "O"){H+= Speed;} 
                         }
      }
    }
  }
}
