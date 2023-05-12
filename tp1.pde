PImage pant1;PImage pant2;
PImage pant3;PImage pant4;
PImage pant5;PImage pantFinal;
PFont Fuente;
int Seg;
int FPS;int fot;
int mtext;int textM;
String text1;String text2;
String text3;String text4;
void setup() {
  size(640, 480);
  textSize(16);
  textM = 0;
  FPS = 0;
  Fuente = createFont("8-bit Arcade In.ttf", 16);
  text1 = ("Una moto es un vehículo de dos ruedas que se mueve\ngracias a un motor. Sirve como medio de transporte\npersonal puede ser utilizado para viajes cortos o largos.");
  text2 = ("Es una alternativa\na vehículos como automóviles\ny bicicletas, su tamaño\ncompacto permite mayor\n movilidad y facilidad de\nestacionamiento en áreas\n urbanas congestionadas.");
  text3 = ("En resumen, una moto es un vehículo\nversátil que puede utilizarse para\ntransportarse de un lugar a otro\nde manera rápida y eficiente o\npara disfrutar de una experiencia de\nconducción emocionante y divertida.");
  text4 = ("Hasta aquí\nmi humilde\ntrabajo");
  textFont(Fuente);
}
void draw() {
  fot += 60/frameRate;
  mtext += 60/frameRate; 
  if(frameCount % 60 == 0){Seg++;}
  if (Seg >= 0 && Seg <= 10) {
    if (FPS >= 24) {FPS = 0;}
    pant1 = loadImage("data/imag/winxp("+FPS+").gif");
    image(pant1, 0, 0, 640, 480);
    if (fot >= 60/16){
      FPS++;
      fot = 0;}   
    }
  if(Seg>=10 && Seg<=12){background(0);}  
  if (Seg >= 12 && Seg <= 22) {   
    if(FPS > 6){FPS = 0;}
    pant2 = loadImage("data/imag/motodesert("+FPS+").gif");
    image(pant2,0,0,640,480);
    fill(0);
    textSize(32);
    text(text1, (615-textM), 280);
    fill(255);
    text(text1, (618-textM), 280);
    if(mtext >= 60/60){
     textM++;
     textM++;
     mtext = 0;}
    if (fot >= 60/16){
     FPS++;     
     fot = 0;}
 }
  if (Seg >= 22 && Seg <= 32){
    if(FPS > 17){FPS = 0;}
    if(textM >480){textM = 0;}
    pant3 = loadImage("data/imag/moto("+FPS+").gif");
    image(pant3,0,0,640,480);
    fill(0);
    text(text2,23,(0+textM));
    fill(255);
    text(text2,25,(0+textM));
    if(mtext >= 60/30){
    textM++;
    mtext = 0;}
    if(fot >= 60/12){
      FPS++;
      fot = 0;}
    }
  if (Seg >= 32 && Seg <= 42){
   if(FPS > 5){FPS = 0;} 
   pant4 = loadImage("data/imag/motopista("+FPS+").gif");
   image(pant4,0,0,640,480);
   fill(255,textM);
   text(text3,50,140); 
   textM--; 
   if(fot >= 60/20){
    FPS++;
    fot = 0;}
 }
 if (Seg >= 42 && Seg <= 52){
   if (FPS > 48){FPS = 0;}
   textM++;
   pant5 = loadImage("data/imag/frame ("+FPS+").gif");
   image(pant5,0,0,640,480);
   fill(255,textM);
   text(text4,180,200);
   if(fot >= 60/24){
     FPS++;
     fot = 0;} 
 }
  if (Seg >= 53) {
    pantFinal = loadImage("data/imag/crash.jpg");
    image(pantFinal, 130, 180);
  }    
}
void mouseClicked(){
  if(Seg >= 53 && (mouseX >= 280 && mouseX <= 360)&&(mouseY >= 265 && mouseY <= 290)){
  Seg = 0;
  textM=0;}
}
