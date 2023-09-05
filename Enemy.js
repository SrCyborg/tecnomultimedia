let Enemigo = new Array();
let En1X = 0; let En1Y = 0;
let En2X = 0; let En2Y = 0;
let En3X = 0; let En3Y = 0;
let fresh = 0; let fps = 0;
let Accion = ["avanzar","disparar","direccion"];
let adelante = false;
let direccion = new Array();
Punto = ["N","S","E","O"];
function Enemigos(){
 fps += 60/frameRate();
 if(fps >= 60/40){fresh++; fps = 0;}
 if(fresh == 2){fresh = 0;}
 for(i = 0; i < 3; i++){direccion[i] = "S";}
 for(i = 0; i < 3; i++){Enemigo[i] = "vivo";}
 for(let x = 0; x < ancho; x++){
    for(let y = 0; y < alto; y++){
      if(Enemigo[0] == "vivo"){
      if( x == 0 && y == 0){
      image(tankGrayS[fresh],(casillaX+En1X)+48*x,(casillaY+En1Y)+48*y,40,40);  
       }
     }
  }
}
}
