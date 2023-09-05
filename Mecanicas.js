let Norte ; let Sur; let Oeste; let Este; 
let polo; let frame = 0; let avanza = true;
let ancho = 13; let alto = 13;
let cuadrilla = new Array();
let casillaX = 264; let casillaY = 32;
let  H = 552; let V = 608 ;
let Speed = 1.5; let movimiento = 0;
function Mover(){
  movimiento += 60/frameRate();
 if(Norte == true){polo = "N";
   if(movimiento >= 60/40){frame++; movimiento = 0;}
   if(avanza == true){V-= Speed;}
   if(V < 28){avanza = false; V+= Speed;}
   if(frame == 2){frame = 0;}
                  }
 if(Sur == true){polo = "S";
   if(movimiento >= 60/40){frame++; movimiento = 0;}
   if(avanza == true){V+= Speed;}
   if(V > 612){avanza = false; V-= Speed;}
   if(frame == 2){frame = 0;}
                }
 if(Este == true){polo = "E";
   if(movimiento >= 60/40){frame++;movimiento = 0;}
   if(avanza == true){H+= Speed;}
   if(H > 843){avanza = false; H-= Speed;}
   if(frame == 2){frame = 0;}
                 }
 if(Oeste == true){polo = "O";
   if(movimiento >= 60/40){frame++;movimiento = 0;}
   if(avanza == true){H-= Speed;}
   if(H < 262){avanza = false; H+= Speed;}
   if(frame == 2){frame = 0;}
                 }
 if(polo == "N"){image(tankGreenN[frame],H,V,36,36);}
 if(polo == "S"){image(tankGreenS[frame],H,V,36,36);}
 if(polo == "O"){image(tankGreenO[frame],H,V,36,36);}
 if(polo == "E"){image(tankGreenE[frame],H,V,36,36);}
Avanzar();
}
function MapaActual(){
  background(150);
   for(let x = 0; x < ancho; x++){
    for(let y = 0; y < alto; y++){    
     if(cuadrilla[x][y] == 0){image(paredes[0],casillaX+48*x,casillaY+48*y,48,48);}
     if(cuadrilla[x][y] == 1){image(paredes[1],casillaX+48*x,casillaY+48*y,48,48);}
     if(cuadrilla[x][y] == 2){image(paredes[2],casillaX+48*x,casillaY+48*y,48,48);}    
                                 } 
                                 }
                      }
function Mapa(){
for(let x = 0; x < ancho; x++){
    for(let y = 0; y < alto; y++){      
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
     if(cuadrilla[x][y] == 1){image(paredes[1],casillaX+48*x,casillaY+48*y,48,48);}
     if(cuadrilla[x][y] == 2){image(paredes[2],casillaX+48*x,casillaY+48*y,48,48);}
}}
}
function Avanzar() {
  for (let x = 0; x < ancho; x++) {
    for (let y = 0; y < alto; y++) {
      let Arriba =(V - 20)< casillaY + 48 * y + 24;
      let Abajo = (V + 20)> casillaY + 48 * y - 24;
      let Izq = (H - 20) < casillaX + 48 * x + 24;
      let Der = (H + 20)> casillaX + 48 * x - 24;     
      if (Arriba && Izq && Abajo && Der){
        if (cuadrilla[x][y] == 0) {avanza = true} 
   else if (cuadrilla[x][y] != 0) {avanza = false;}
      if(avanza == false){
       if(polo == "S"){V-= Speed;}
       if(polo == "N"){V+=Speed;}
       if(polo == "E"){H-= Speed;}
       if(polo == "O"){H+= Speed;} 
                         }
      }
    }
  }
}
