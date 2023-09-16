//https://youtu.be/nZGH0AbWHos
let tankGrayN = new Array (2); let tankGrayS = new Array (2);
let tankGrayE = new Array (2); let tankGrayO = new Array (2);
let tankGreenN = new Array (2); let tankGreenS = new Array (2);
let tankGreenE = new Array (2);let tankGreenO = new Array (2);
let paredes = new Array (2);
let proyectil = new Array (4);
let Tittle; let Arcade; let Crab = new Array(12)
let soundStart; let sound = new Array(5);
function preload(){
  soundFormats("mp3");
  soundStart = loadSound("assets/sound/start");
  for(let i = 0; i < 6; i++){
  sound[i] = loadSound("assets/sound/sonido("+i+")");}
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
  for(let i = 0; i < 12; i++){
  Crab[i] = loadImage("assets/credits/cyborg("+i+").png");} 
}
function setup() {
createCanvas(1080,650);
background(150);
noSmooth();
imageMode(CENTER);
textAlign(CENTER);
 }
function draw(){
  Juego();
 }

function keyPressed(){
   if(key == "w"){Norte = true; Oeste = false; Sur = false; Este = false;}
   else if(key == "s"){Sur = true; Oeste = false; Norte = false; Este = false;}
   else if(key == "a"){Oeste = true; Sur = false; Norte = false; Este = false;}
   else if(key == "d"){Este = true; Sur = false; Norte = false; Oeste = false;}
   if(!sound[5].isPlaying()){
   sound[5].play();
   if(sound[4].isPlaying()){
   sound[4].stop();}}
   if(!Disparar){
     if(key == "f"){Disparar = true;
     DireccionBala = polo;
     balaX = H;
     balaY = V;}}
   if(key == "Escape"){if(eleccion == "credits"){eleccion = "Menu";}}
   if(key == "Escape"){if(eleccion == "intructions"){eleccion = "Menu";}}
   if(key == "Escape"){if(eleccion == "start"){eleccion = "Menu";}}
   if(key == "Escape"){if(eleccion == "Win"){eleccion = "Menu";}}
   if(key == "Escape"){if(eleccion == "Loser"){eleccion = "Menu";}}
     
}
function keyReleased(){
   if(key == "w"){Norte = false;}
   else if(key == "s"){Sur = false;}
   else if(key == "a"){Oeste = false;}
   else if(key == "d"){Este = false;}
   sound[5].stop();
 }
function mousePressed(){
if(eleccion == "Menu"){  
if(mouseX < 540 + 50 && mouseX > 540 - 50){
  if(mouseY < 370 + 10 && mouseY > 370 -10){
   eleccion = "start";}}
if(mouseX < 540 + 100 && mouseX > 540 - 100){
  if(mouseY < 410 + 10 && mouseY > 410 -10){
   eleccion = "intructions";}} 
if(mouseX < 540 + 65 && mouseX > 540 - 65){
  if(mouseY < 450 + 10 && mouseY > 450 - 10){
   eleccion = "credits";}} 
}
}
