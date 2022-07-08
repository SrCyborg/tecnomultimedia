PFont bits;
float spd;
void setup(){
  ancho = 22;
  largo = 16;
  direct = 1;
  PX= 0;
  PY= 0;
size(640, 465);
background(0);
rectMode(CENTER);
imageMode(CENTER);
bits = createFont("8-bit Arcade In.ttf", 16);
}
void draw(){
println(mouseX,mouseY);
Pisos();
Puerta();
perso();
mov();
}
void keyPressed(){
 if (key == 'W' || key == 'w'){Arriba = true;}
 if (key == 'S' || key == 's'){Abajo = true;}
 if (key == 'A' || key == 'a'){Izq = true;}
 if (key == 'D' || key == 'd'){Der = true;}
}
 void keyReleased(){
   if(key == 'a' || key == 'A'){Izq = false;    
 EstadoActual = 0;}
 else if(key == 's'|| key == 'S'){Abajo = false;
 EstadoActual = 0;}
 else if(key == 'd'|| key == 'D'){Der = false;
 EstadoActual = 0;}
 else if(key == 'w'|| key == 'W'){Arriba = false;
 EstadoActual = 0;}
 }
