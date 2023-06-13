int par;
void moverArte(){
  par = 1;
 for(int x = 0; x < 7; x++){
  for(int y = 0; y < 7; y++){
    if(dist(mouseX,mouseY,LineaX+(x*58),LineaY+(y*58))< 32){
    if( x % 2 == 0){par = 0;}
    if( x % 2 != 0){par = 1;}
    centX = x;
    centY = y;
                            }
                           }
  
}}
