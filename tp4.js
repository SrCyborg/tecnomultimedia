let tankGrayN = new Array (2); let tankGrayS = new Array (2);
let tankGrayE = new Array (2); let tankGrayO = new Array (2);
let tankGreenN = new Array (2); let tankGreenS = new Array (2);
let tankGreenE = new Array (2);let tankGreenO = new Array (2);
let paredes = new Array (2);
let proyectil = new Array (4); let boom; 
let Tittle; let Arcade; let Crab = new Array(12) 
function preload(){
  Arcade = loadFont("assets/8-bitArcadeIn.ttf");
  Tittle = loadImage("assets/tittle.png");
  for(let i = 0; i < 2; i++){
  tankGrayN[i] = loadImage("assets/Bot/tankgray"+i+"N.png");
  tankGrayS[i] = loadImage("assets/Bot/tankgray"+i+"S.png");
  tankGrayE[i] = loadImage("assets/Bot/tankgray"+i+"E.png");
  tankGrayO[i] = loadImage("assets/Bot/tankgray"+i+"O.png");}
  for(let i = 0; i < 2; i++){
  tankGreenN[i] = loadImage("assets/User/tankgreen"+i+"N.png");
  tankGreenS[i] = loadImage("assets/User/tankgreen"+i+"S.png");
  tankGreenE[i] = loadImage("assets/User/tankgreen"+i+"E.png");
  tankGreenO[i] = loadImage("assets/User/tankgreen"+i+"O.png");}
  for(let i = 0; i < 3; i++){
  paredes[i] = loadImage("assets/pared"+i+".png");}
  for(let i = 0; i < 4; i++){
  proyectil[i] = loadImage("assets/proyectil"+i+".png");}
  boom = loadImage("assets/boom.png");
  for(let i = 0; i < 12; i++){
  Crab[i] = loadImage("assets/credits/cyborg("+i+").png");} 
}
function setup() {
createCanvas(1080,650);
background(150);
noSmooth();
rectMode(CENTER);
imageMode(CENTER);
textAlign(CENTER);
polo = "N";
   for(let x = 0; x < ancho; x++){
    cuadrilla[x] = new Array();
    for(let y = 0; y < alto; y++){
    cuadrilla[x][y] = 0; 
  }}
  Mapa();
 }
function draw(){
   //MapaActual();
  // Mover();
  // Avanzar();
 //  Proyectil();
  // Enemigos();
  Juego();
 }

function keyPressed(){
   if(key == "w"){Norte = true; Oeste = false; Sur = false; Este = false;}
   if(key == "s"){Sur = true; Oeste = false; Norte = false; Este = false;}
   if(key == "a"){Oeste = true; Sur = false; Norte = false; Este = false;}
   if(key == "d"){Este = true; Sur = false; Norte = false; Oeste = false;}
   if(!Disparar){
     if(key == "f"){Disparar = true;
     DireccionBala = polo;
     balaX = H;
     balaY = V;}}   
}
function keyReleased(){
   if(key == "w"){Norte = false;}
   if(key == "s"){Sur = false;}
   if(key == "a"){Oeste = false;}
   if(key == "d"){Este = false;}
 }
