 PImage [] imag = new PImage[13]; String [][] text = new String[13][];
 PImage [] winxp = new PImage[25]; int fps, fot; PImage enc;
 PImage Inicio; String Comenzar, Creditos; PImage reset;
 PImage [] KnightDance = new PImage [49]; PImage flecha;
 PImage [] DrPlagueDance = new PImage [49]; PImage duda;
 void Cargando(){
 for(int i = 0; i < 25; i++){
  winxp[i] = loadImage("data/pantcarg/winxp("+i+").gif");}  
 for(int i = 0; i < 13; i++){
  imag[i] = loadImage("data/imag"+i+".jpg");}
 for(int t = 0; t < 13; t++){
  text[t] = loadStrings("data/texto("+t+").txt");}
 for(int d = 0; d < 49; d++){
 KnightDance[d] = loadImage("data/creditos/knightdance("+d+").gif");}
 for(int d = 0; d < 49; d++){
 DrPlagueDance[d] = loadImage("data/creditos/drplaguedance("+d+").gif");}
 enc = loadImage("data/encendido.jpg");
 Inicio = loadImage("data/Portada.jpg");
 flecha = loadImage("data/flecha.png");
 reset = loadImage("data/reset.png");
 duda = loadImage("data/interrogante.png");
 Comenzar = ("Comenzar");
 Creditos = ("Creditos");
 }
void Winxp(int carga, int tiempo){
  //PC encendiendo
  if(carga < 2){
  image(enc,0,0,width,height);}
 else if(carga < tiempo){
 fot += 60/frameRate;
 image(winxp[fps],0,0,600,600);
  if(fps >= 24){fps = 0;}
  if (fot >= 60/16){fps++; fot = 0;} 
 }
 else if(carga == 6){background(0); fps = 0;}
}
