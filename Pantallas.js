let eleccion = "Menu";
let imagen = 0;
let fotograma = 0;
let posx = 576; let mov = 4;
let off = false;
function Menu(){
background(0);
image(Tittle,width/2,height/3,488,244);
textFont(Arcade);
 textSize(40);
 fill(225);
 text("start",540,380);
 text("intructions",540,420);
 text("credits",540,460);
 text("Made in Cyborg",540,600);
 if(mouseY < 375){
 image(tankGrayE[0],450,370,24,24);}
 if(mouseY > 400 && mouseY < 420){
 image(tankGrayE[0],400,410,24,24);}
 if(mouseY > 440){
 image(tankGrayE[0],430,450,24,24);}
}
function Juego(){
 if(eleccion == "Menu"){MapaValorInicial(); Menu();imagen = 0; off = false;
 if(soundStart.isPlaying()){soundStart.stop();}
 if(sound[4].isPlaying()){sound[4].stop();}
 if(sound[5].isPlaying()){sound[5].stop();}}
 if(eleccion == "start"){
 MapaActual();
 Mover();
 Proyectil();
 Enemigos();
if(!sound[4].isPlaying()){
sound[4].play();}
if(!soundStart.isPlaying() && !off){
 soundStart.play();
 off = true;}
 }
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
   text("Esc",100,50,50);
 }
 if(eleccion == "intructions"){
 background(0);
 fotograma += 60/frameRate();
 if(fotograma >= 60/8){imagen++;fotograma = 0;}
 if(imagen == 2){imagen = 0;}
 if(posx < 750){
 posx+=mov;
 if(posx > 750){posx = 576;}}
 image(tankGreenN[imagen],300,250,36,36);
 image(tankGreenS[imagen],300,320,36,36);
 image(tankGreenE[imagen],370,320,36,36);
 image(tankGreenO[imagen],230,320,36,36);
 image(tankGreenE[imagen],550,280,36,36);
 image(proyectil[1],posx,280,13,10);
 text("w\na     s     d",300, 400);
 text("f",550,350);
 text("Esc",100,50,50);
 }
 if(eleccion == "Win"){
 background(150);
 fill(0);
 text("Esc",100,50,50);
 text("winner",540,250);
 text("your score:"+puntos+"",540,300);
 sound[4].stop();
 sound[5].stop();
 }
 else if(eleccion == "Loser"){
 background(150);
 fill(0);
 text("Esc",100,50,50);
 text("Loser",540,250);
 text("score:"+puntos+"",540,300);
 sound[4].stop();
 sound[5].stop();
 }
}
