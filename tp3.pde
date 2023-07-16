int pag, Seg;
String alt;
void setup(){
background(0);
size(600,600);
textSize(20);
ellipseMode(CENTER);
rectMode(CENTER);
noStroke();
Cargando();
}
void draw(){
  if(frameCount % 60 == 0){
  if(Seg < 6){Seg++;}}
  println(Seg);
  println(mouseX,mouseY);
  Winxp(Seg, 5);
  pantalla(Seg);
}

void mouseClicked(){
 //Menu
 if(Seg == 6){
if((mouseX > 260 && mouseX < 340) && (mouseY > 190 && mouseY < 225)){
  Seg = 7;}
if((mouseX > 260 && mouseX < 340) && (mouseY > 495 && mouseY < 530)){
  Seg = 8;}
}
//Siguiente Pág.
 if(pag != 12){ 
 if(dist(mouseX,mouseY, 550,50) < 25){
 pag = pag+1;}}
//Pag alternativas:
//más oro
 if(pag == 3){
  if(dist(mouseX,mouseY,70,370) < 40){
   imag[3] = loadImage("data/imag3b.jpg");
   text[3] = loadStrings("data/texto(3)b.txt");
   text[12] = loadStrings("data/texto(12)b.txt");
   alt = ("b");}
//destrucción por ratas   
  if(dist(mouseX,mouseY,485,370) < 40){
  imag[12] = loadImage("data/imag12c.jpg");
  text[12] = loadStrings("data/texto(12)c.txt");
  pag = 12;
}
 }
 
 if(pag == 11 && alt != ("f")){
  if(dist(mouseX,mouseY,485,370) < 40){
  imag[12] = loadImage("data/imag12d.jpg");
  text[12] = loadStrings("data/texto(12)d.txt");
  pag = 12;
  }
 }
 if(pag == 7){
  if(dist(mouseX,mouseY,340,350) < 40){
  imag[11] = loadImage("data/imag11f.jpg");
  imag[12] = loadImage("data/imag12f.jpg");
  text[11] = loadStrings("data/texto(11)f.txt");
  text[12] = loadStrings("data/texto(12)f.txt");
  alt = ("f");
  pag = 11;
  }
 }
//Boton Final 
 if(pag == 12){
   if(dist(mouseX,mouseY, 30,25) < 40){
   textSize(20); Seg = 6; pag = 0;
   imag[3] = loadImage("data/imag3.jpg");
   text[3] = loadStrings("data/texto(3).txt");
   imag[11] = loadImage("data/imag11.jpg");
   imag[12] = loadImage("data/imag12.jpg");
   text[11] = loadStrings("data/texto(11).txt");
   text[12] = loadStrings("data/texto(12).txt");
   alt = ("");  
}
 }
}


   
 
 
