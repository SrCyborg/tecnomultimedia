PImage[] Escenario = new PImage[12];
int cant = 22;
int tam = 29;
int abierto = 0;
int ancho, largo;
int y, x;
int posx, posy;
int [] loc = new int [22];
void Pisos(){
 Escenario[0] = loadImage("piso.png");
 for(int x=0; x< ancho; x++){
    for (int y=0; y< largo; y++){
    image(Escenario[0],16+x*tam,16+y*tam,32,32);
    loc [posx] = posx;
    
}}}
void Pared(){
  fill(0);
  rectMode(CENTER);
 rect(width/2, 26, width, 64);
 rect(width/2, 449, width, 32);
 rect(16, height/2, 32, height);
 rect(624, height/2, 32, height);
}
void Puerta(){
  Escenario[1] = loadImage("puerta"+abierto+".png");
  image(Escenario[1], 248, 29, 29, 60);
}
