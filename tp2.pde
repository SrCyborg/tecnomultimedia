// link del video https://youtu.be/cATnnQfPxGA
PImage Arte;
void setup(){
  size(800,400);
  background(199,0,0);
  Arte = loadImage("data/arte.jpg");
  image(Arte,0,0,400,400);
  ellipseMode(CENTER);
  noStroke();
  par = 1; centX = 3; centY = 3;
}
void draw(){
background(199,0,0);
image(Arte,0,0,400,400);
Arte();
Arte2();
if(mover() == true){
moverArte();}

}
void keyPressed(){
if(key == 'r' || key == 'R'){
 par = 1;
 centX = 3;
 centY = 3;}
}
