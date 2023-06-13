int LineaX = 427;
int LineaY = 27;
color verde = color(84,124,89);
color verdeMatiz = color(54, 94, 69);
color verdeDesTint = color(132, 152, 117);
color verdeDesTint2 = color(95, 122, 87);
void Arte() {
  for (int x = 0; x < 7; x++) {
    for (int y = 0; y < 7; y++) {
      //Linea5 y Linea7 
      if ((x >= 0 && y % 2 == 0)&& y > centY) {fill(verdeDesTint2);
      if (par == 1){if ((x % 2 == 0 && y % 2 == 0)&& y > centY) {fill(verdeMatiz);}}
      if (par == 0){if ((x % 2 != 0 && y % 2 == 0)&& y > centY) {fill(verdeMatiz);}}} 
      //Linea 1 y Linea 3
      if ((x >= 0 && y % 2==0) && y < centY){fill(verdeDesTint);  
      if(par == 0){if ((x % 2 != 0 && y % 2 == 0)&& y < centY){fill(verde);}}
      if(par == 1){if ((x % 2 == 0 && y % 2 == 0)&& y < centY){fill(verde);}}}
      //Linea2
      if ((x >= 0 && y % 2 != 0) && y < centY){fill(verdeDesTint);
      if(par == 0){if((x % 2 == 0 && y % 2 != 0)&& y < centY){fill(verde);}}
      if(par == 1){if((x % 2 != 0 && y % 2 != 0)&& y < centY){fill(verde);}} }               
      //Linea6
      if ((x >= 0 && y % 2 != 0) && y > centY) {fill(verdeDesTint2);
      if(par == 1){if((x % 2 != 0 && y % 2 != 0)&& y > centY) {fill(verdeMatiz);}}
      if(par == 0){if((x % 2 == 0 && y % 2 != 0)&& y > centY) {fill(verdeMatiz);}}}
      //Linea4
      if (x >= 0 && y == centY){fill(verdeDesTint);}
      if(par == 0){if (x % 2 ==0 && y == centY) {fill(79,110,92);}}
      if(par == 1){if (x % 2 !=0 && y == centY) {fill(79,110,92);}}      
      if (x == centX && y == centY) {fill(verde);}
      ellipse(x*58+LineaX, y*58+LineaY, 32, 32);
                                }
                              }
}
