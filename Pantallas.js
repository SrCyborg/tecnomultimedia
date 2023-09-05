let eleccion = "credits";
let imagen = 0;
let fotograma = 0;
function Menu(){
background(0);
image(Tittle,width/2,height/3,488,244);
textFont(Arcade);
 textSize(40);
 fill(225);
 text("Hi 0000000",width/2,height/10);
 text("start",width/2,height/2+height/10);
 text("credits",width/2,height/2+height/7);
 text("Made in Cyborg",width/2,height/2+height/3);
}
function Juego(){
 Menu();
 if(eleccion == "start"){
 MapaActual();
 Mover();
 Proyectil();}
 if(eleccion == "credits"){
   background(0);
   fotograma += 60/frameRate();
   if(fotograma >= 60/28){imagen++;fotograma = 0;}
   image(Crab[imagen],540,250,296,250);
   if(imagen == 11){imagen = 0;}
   text("Juego Elegido: Tank 1990",540,400);
   text("Vargas, Ramiro Legajo 91498/3",540, 440);
   text("Github SrCyborg",540, 480);
   text("Arte hecho en pixilart.com",540, 520);
 }
 if(eleccion == "manual"){
 background(0);
 
 }
}
