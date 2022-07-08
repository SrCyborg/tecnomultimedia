PImage PJ ;
int direct;
int EstadoActual = 0;
int speed = 2;
int PX, PY;
boolean Arriba, Abajo, Der, Izq;
int vad;
boolean norte, sur, oeste, este; 
void perso(){
  if(direct == 1){
 PJ = loadImage("data/PJ/pja"+EstadoActual+".png");}
 else if(direct == 2){
 PJ = loadImage("data/PJ/pje"+EstadoActual+".png");}
 else if(direct == 3){
 PJ = loadImage("data/PJ/pjp"+EstadoActual+".png");}
 else if(direct == 4){
 PJ = loadImage("data/PJ/pji"+EstadoActual+".png");}
 image(PJ,width/2+PX,height/2+PY, 32, 64);
  if (Arriba == true){
  direct = 2;
   if(norte == false){
   PY-=1 * speed;}
   vad++;
   if(vad>2){EstadoActual=1;
   if(vad>8){EstadoActual=2;}
   if(vad>10){vad=0;}}
   if(EstadoActual >= 3){EstadoActual = 1;}}
  if (Abajo == true){
   direct = 1;
   if(sur == false){
   PY+=1 * speed;}
   vad++;
   if(vad>2){EstadoActual=1;
  if(vad>8){EstadoActual=2;}
  if(vad>10){vad=0;}}
   if(EstadoActual > 2){EstadoActual = 1;}}
  if (Izq == true){
   direct = 4;
   if(este == false){
   PX-=1 * speed;}
   vad++;
   if(vad>2){EstadoActual=1;
  if(vad>8){EstadoActual=2;}
  if(vad>10){vad=0;}}
   if(EstadoActual > 2){EstadoActual = 1;}}
  if (Der == true){
   direct = 3;
   if(oeste == false){
   PX+=1 * speed;}
   vad++;
   if(vad>2){EstadoActual=1;
  if(vad>8){EstadoActual=2;}
  if(vad>10){vad=0;}}
   if(EstadoActual > 2){EstadoActual = 1;}}
 }
 void mov(){
 if(height/2+PY-16 < 40){
   norte = true;}
   else{norte = false;}
 if(height/2+PY+32 > 430){
   sur = true;}
   else{sur = false;}
 if(width/2+PX-17 < 30){
   este = true;}
   else{este = false;}
 if(width/2+PX+17 > 610){
   oeste = true;}
   else{oeste = false;}
 }
