int centX, centY;
int tam5y7, tam1y3y4, tam2y6;
void Arte2() { 
  fill(199,0,0);
      //Variables tam
      if(par == 1){tam5y7 = 0;  tam1y3y4 = 0;  tam2y6 = 0;}
      else {tam5y7 = 2;  tam1y3y4 = 3;  tam2y6 = 1;}
  for (int x = 0; x < 7; x++) {
    for (int y = 0; y < 7; y++) {      
      //Linea5 y Linea7               
      if ((x % 2 == 0 && y % 2 == 0) && (y > centY && y != centY)) {
      ellipse(x*58+LineaX, LineaY+(y*58), 28+tam5y7, 28+tam5y7);}
      if ((x % 2 != 0 && y % 2 == 0) && (y > centY && y != centY)) {
      ellipse(x*58+LineaX, LineaY+(y*58), 30-tam5y7, 30-tam5y7);}    
      //Linea 1 y Linea3     
      if ((x % 2 == 0 && y % 2 == 0) && y != centY){
      ellipse(x*58+LineaX, LineaY+(y*58), 27+tam1y3y4, 27+tam1y3y4);}
      if ((x % 2 != 0 && y % 2 == 0) && y != centY){
      ellipse(x*58+LineaX, LineaY+(y*58), 30-tam1y3y4, 30-tam1y3y4);}      
      //Linea6     
      if((x % 2 == 0 && y % 2 != 0)&& y > centY) {
      ellipse(x*58+LineaX, LineaY+(y*58), 28+tam2y6, 28+tam2y6);}
      if((x % 2 == 0 && y % 2 != 0)&& y > centY) {
      ellipse(x*58+LineaX, LineaY+(y*58), 29-tam2y6, 29-tam2y6);}
      //Linea2     
      if ((x % 2 != 0 && y % 2 != 0)&& y != centY) {
      ellipse(x*58+LineaX, LineaY+(y*58), 28+tam2y6, 28+tam2y6);}
      if ((x % 2 == 0 && y % 2 != 0)&& y != centY){
      ellipse(x*58+LineaX, LineaY+(y*58), 29-tam2y6, 29-tam2y6);}
      //Linea4
      if ((x % 2 == 0 &&(x != centX+1 && x != centX-1)) && y == centY) {
      ellipse(x*58+LineaX, LineaY+(y*58), 30-tam1y3y4, 30-tam1y3y4);}      
      if ((x % 2 != 0 &&(x != centX+1 && x != centX-1))&& y == centY) {
      ellipse(x*58+LineaX, LineaY+(y*58), 27+tam1y3y4, 27+tam1y3y4);}  
      if ((x < centX+2 && x > centX-2) && y == centY) {
      ellipse(x*58+LineaX, LineaY+(y*58), 29, 29);}
   }
  }
}
