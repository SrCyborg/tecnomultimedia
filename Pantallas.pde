int sg;
void pantalla(int pant){
  //Menu
  if(pant == 6){image(Inicio,0,0,600,600);
  fill(8,8,8);
  ellipse(260,210,35,35);
  ellipse(340,210,35,35);
  rect(width/2, 210, 80,35);
  fill(255,255,255);
  text(Comenzar,width/2-42, 215);
  fill(0,0,0);
  ellipse(260,515,35,35);
  ellipse(340,515,35,35);
  rect(width/2, 515, 80,35);
  fill(255,255,255);
  text(Creditos,width/2-35, 520);}
  //Paginas  
  if(pant == 7){
    textSize(16);
    image(imag[pag],0,0,600,600);
    fill(0,0,0,192);
    quad(5,435,595,435,595,595,5,595);
    fill(255,255,0);
  for(int c = 0; c < text[pag].length; c++){
    text(text[pag][c], 15, c * 20 + 455);}
  if(pag != 12){
    fill(255,255,0);
    ellipse(550,50,35,35);
    image(flecha,540,37,20,20);}
  if(pag == 12){
    fill(255,0,0);
    ellipse(30,25,40,40);
    image(reset,15,10,30,30);}
    fill(255,255,0);
  //Pag, Alternativa: más oro/quitar recompensa 
  if(pag == 3 && alt != ("b")){
    ellipse(485, 370, 40,40);
    image(duda,465,350,40,40);
    if(dist(mouseX,mouseY,485,370) < 40){
    text("Quitar Recompensa",430, 400);}
    ellipse(70, 370, 40,40);
    image(duda,50,350,40,40);
    if(dist(mouseX,mouseY,70,370) < 40){
    text("Aumentar Recompensa",15, 400);}}
 }
 if(pag == 11){
   ellipse(485, 370, 40,40);
   image(duda,465,350,40,40);
   if(dist(mouseX,mouseY,485,370) < 40){
    text("Ir por los niños",430, 400);}
 }
 if(pag == 7){
 ellipse(340, 350, 35,35);
 image(duda,320,330,35,45);
 if(dist(mouseX,mouseY,340,330) < 35){
    text("Recordar quien se deshizo\nde las ratas",290, 360);}
 }
 //pantalla creditos
 if(pant == 8){
   if(frameCount%60 == 0){sg++;}
   if(sg < 10){fot += 60/frameRate;
  image(KnightDance[fps],0,0,600,600);
   if(fps >= 48){fps = 0;}
   if(fot >= 60/14){fps++; fot = 0;}
  textSize(32);
  fill(200,150,0);
  text("Cuento: El flautisa de Hammelín\nAutor: Los Hermanos Grimm\nArte: Leonardo AI",50,100); 
   }
 else if(sg == 10){fps = 0;}
 else if(sg > 10 && sg < 20){fot += 60/frameRate;
 image(DrPlagueDance[fps],0,0,600,600);
  if(fps >= 48){fps = 0;}
  if(fot >= 60/14){fps++; fot = 0;}
 fill(0,255,0); 
 text("Programador: Ramiro Vargas\nGithub: SrCyborg\nLegajo 91498/3",50,100); 
}
 else if(sg == 20){textSize(20); Seg = 6; sg = 0;}  
 }
}
