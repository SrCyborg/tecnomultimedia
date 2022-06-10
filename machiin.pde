void efect(){
if (mouseX >= 350){rf = 1;}
else {rf = 0;}
}

void botonRojo(){
fill(255,0,0);
ellipseMode(RADIUS);
ellipse(670, 110, 10, 10);
ellipse(670, 150, 10, 10);
  float D1S = dist(mouseX,mouseY, 670, 110);
  if (D1S < 10){red--;}
  float D2S = dist(mouseX,mouseY, 670, 150);
  if (D2S < 10){red++;}

}
void botonVerde(){
  fill(0,255,0);
ellipse(740, 110, 10, 10);
ellipse(740, 150,10, 10);
 float D1z = dist(mouseX,mouseY, 740, 110);
  if (D1z < 10){red--;}
  float D2z = dist(mouseX,mouseY, 740, 150);
  if (D2z < 150 && red > 0){red++;}
}
void botonAzul(){
ellipse(810, 150, 10, 10);}
