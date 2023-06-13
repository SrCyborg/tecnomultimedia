int tam1;
int tam2;
int tam3;
int tam4;
int centX;
int centY;
void Arte2() { 
 
  fill(199,0,0);
  for (int x = 0; x < 7; x++) {
    for (int y = 0; y < 7; y++) { 
      //Linea5 y Linea7
      if(par == 1){tam3 = 0;}
      if(par == 0){tam3 = 2;}
      if (x % 2 == 0 && y % 2 == 0) {
      ellipse(x*58+LineaX, LineaY+(y*58), 28+tam3, 28+tam3);}
      if (x % 2 != 0 && y % 2 == 0) {
      ellipse(x*58+LineaX, LineaY+(y*58), 30-tam3, 30-tam3);}
      //Linea 1 y Linea3
      if(par == 0){tam1 = 0;}
      if(par == 1){tam1 = 3;}
      if ((x % 2 != 0 && y % 2 == 0) && y != centY){
      ellipse(x*58+LineaX, LineaY+(y*58), 27+tam1, 27+tam1);}
      if ((x % 2 != 0 && y % 2 == 0) && y != centY){
      ellipse(x*58+LineaX, LineaY+(y*58), 30-tam1, 30-tam1);}
      //Linea6
      if((x % 2 != 0 && y % 2 != 0)&& y > centY) {
      ellipse(x*58+LineaX, LineaY+(y*58), 28, 28);}
      if((x % 2 == 0 && y % 2 != 0)&& y > centY) {
      ellipse(x*58+LineaX, LineaY+(y*58), 29, 29);} 
      //Linea2
      if (par == 0){ tam2 = 0;}
      if (par == 1){ tam2 = 1;} 
      if ((x % 2 != 0 && y % 2 != 0)&& y != centY) {
      ellipse(x*58+LineaX, LineaY+(y*58), 28+tam2, 28+tam2);}
      if ((x % 2 == 0 && y % 2 != 0)&& y != centY){
      ellipse(x*58+LineaX, LineaY+(y*58), 29-tam2, 29-tam2);}      
      //Linea4 
      if (x % 2 == 0 && (x > centX || x < centX) && y == centY) {
      ellipse(x*58+LineaX, LineaY+(y*58), 28, 28);}
      if ((x > centX-4 && x < centX+4) && y == centY) {
      ellipse(x*58+LineaX, LineaY+(y*58), 27+tam1, 27+tam1);}
      if (x % 2 != 0 && y == centY) {
      ellipse(x*58+LineaX, LineaY+(y*58), 30-tam1, 30-tam1);}      
                                }
                              }
}
