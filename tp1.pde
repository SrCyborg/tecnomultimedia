PImage pant1;
PImage pant2;
PImage pant3;
PImage pant4;
PImage pant5;
PImage pantFinal;
PFont  Fuente;
int Seg;
int FPS;
int fot;
String text1;
String text2;
String text3;
String text4;
void setup() {
  size(640, 480);
  textSize(16);
  FPS = 0;
  Fuente = createFont("8-bit Arcade In.ttf", 16);
  text1 = ("Una moto es un vehículo de dos ruedas que se mueve\n gracias a un motor. Sirve como medio de transporte personal y\n puede ser utilizado para viajes cortos o largos.");
 // text2 = (
  textFont(Fuente);
}
void draw() {
  fot += 1000/frameRate;
  if(frameCount % 60 == 0){Seg++;}
  if (Seg >= 0 && Seg <= 10) {   
    pant1 = loadImage("data/imag/winxp("+FPS+").gif");
    image(pant1, 0, 0, 640, 480);
    if (fot >= 1000/16){
      FPS++;
      fot = 0;
      if (FPS >= 24) {FPS = 0;}}
    }
  if(Seg>=10 && Seg<=12){background(0);}  
  if (Seg >= 12 && Seg <= 22) {   
    if(FPS > 6){FPS = 0;}
    pant2 = loadImage("data/imag/motodesert("+FPS+").gif");
    image(pant2,0,0,640,480);
    fill(255,0,0);
    textSize(20);
    text(text1, 25, 380);
    if (fot >= 1000/16){
     FPS++;
     fot = 0;}}
  if (Seg >= 22 && Seg <= 32){
    if(FPS > 17){FPS = 0;}
    pant3 = loadImage("data/imag/moto("+FPS+").gif");
    image(pant3,0,0,640,480);
    if(fot >= 1000/14){
      FPS++;
      fot = 0;}
    }
  if (Seg >= 32 && Seg <= 42){
   if(FPS > 5){FPS = 0;} 
   pant4 = loadImage("data/imag/motopista("+FPS+").gif");
   image(pant4,0,0,640,480);
   if(fot >= 1000/20){
   FPS++;
   fot = 0;}
 }
 if (Seg >= 42 && Seg <= 52){
   if (FPS > 48){FPS = 0;}
   pant5 = loadImage("data/imag/frame ("+FPS+").gif");
   image(pant5,0,0,640,480);
   if(fot >= 1000/24){
     FPS++;
     fot = 0;} 
 }
  if (Seg >= 53) {
    pantFinal = loadImage("data/imag/crash.jpg");
    image(pantFinal, 130, 180);
  }    
}
void mouseClicked(){
  if(Seg >= 53 && (mouseX >= 280 && mouseX <= 360)&&(mouseY >= 265 && mouseY <= 290)){Seg = 0;}
}
