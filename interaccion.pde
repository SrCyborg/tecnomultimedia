int par;
void moverArte(){
 for(int x = 0; x < 7; x++){
  for(int y = 0; y < 7; y++){
    if(dist(mouseX,mouseY,LineaX+(x*58),LineaY+(y*58))< 32){
    centX = x;
    centY = y;  
    if( x % 2 == 0){par = 0;}
    else{par = 1;}}       
                    }
                   }                        
}
boolean mover(){
 if(mousePressed){
  return true;}  
  return false;  
}
