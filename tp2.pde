PImage Arte;
boolean act;
void setup(){
  size(800,400);
  background(199,0,0);
  Arte = loadImage("data/arte.jpg");
  image(Arte,0,0,400,400);
  ellipseMode(CENTER);
  rectMode(CENTER);
  noStroke();
  par = 1;
}
void draw(){
println(mouseX,mouseY);
background(199,0,0);
image(Arte,0,0,400,400);
Arte();
Arte2();
moverArte();
println(par);
println(centX,centY);
}
