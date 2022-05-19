//clickee de izq a der y apoye el puntero sobre la tv 
int mov = 1;
int fresh = 1;
int pantalla = 1 ;
PImage bar;
PImage calle;
PImage amanecer;
PImage sol;
PImage otrodia;
PFont bits;
String conts;
String cont2;
String cont3;
String cont4;
String pat1;
String pat2;
String pat3;
String pat4;
String rat1;
String rat2;
String rat3;
String rat4;
String fat1;
String fat2;
void setup () {
  background(35, 100, 120);
  size (720, 480);
  bits = createFont("8-bit Arcade In.ttf", 16);
  conts = ("Director\n victor Ramos\nsub director\n jerald mayakowsky");
  cont2 = ("Developer\n kenny mccormick\n erick cartman\n stan smith");
  cont3 = ("Soundtrack by\n quentin coldwater");
  cont4 = ("Art Concept by\n Emily Greenwood");
  pat1 = ("Beta Test\n Elliot\n Pak1t056");
  pat2 = ("Art Design\n Lev Grossman");
  pat3 = ("Special effect\n mary blood\nand\n jason todd");
  pat4 = ("program\n souta fujinuki");
  rat1 = ("voice\n carl johnson\n elizabeth green\n sebastian doomer");
  rat2 = ("bug checker\n rebbeca port\n aaron forest\n steve campbell");
  rat3 = ("system editor\n alisson rosewood\n michael wazowsky\n pit silverman");
  rat4 = ("front designer\n mike wazowski\n ed sullivan");
  fat1 = ("Special Thanks for\nleon456\nmargolem\nrkeVader\ndesnip\nUruz\nTaperP");
  fat2 = ("ripper03\np4t4t4flow\nGigaChad\nMrDoom\nSrCyborg");
}
void draw () {
  fresh++;
  mov++;
  if (pantalla == 1) {
    frameRate(30);
    textFont(bits);
    textSize(32);
    fill(255);
    amanecer = loadImage("data/am/amanecer ("+fresh+").gif");
    image(amanecer, 0, 0, 720, 480);
    if (fresh >= 64) {fresh = 1;}
    if (mov <= 0 || mov > 420) {text(conts, 20, 380);} 
    if (mov >= 60 && mov <= 120) {text(cont2, 20, 380);}
    if (mov > 180 && mov <= 240) {text(cont3, 20, 380);} 
    if (mov > 300 && mov <= 360) {text(cont4, 20, 380);}
    if (mov >= 480) {mov = 0;}
  }
  if (pantalla == 2) {
    frameRate(15);
    fill(255);
    if (fresh > 28) {fresh = 28;}
    if (fresh == 28) {fresh = 1;}
    calle = loadImage("data/cal/calle ("+fresh+").gif");
    image(calle, 0, 0, 720, 480);
    if (mov <= 0 || mov > 280) {text(pat1, 20, 380);} 
    if (mov >= 40 && mov <= 80) {text(pat2, 20, 380);}
    if (mov > 120 && mov <= 160) {text(pat3, 20, 380);} 
    if (mov > 200 && mov <= 240) {text(pat4, 20, 380);}
    if (mov >= 320) {mov = 0;}
  }
  if (pantalla == 3) {
    frameRate(10);
    fill(255);
    sol = loadImage("data/sol/sol ("+fresh+").gif");
    if (fresh >= 55) {fresh = 1;}
    image(sol, 0, 0, 720, 480);   
    if (mov <= 0 || mov > 260) {text(rat1, 20, 380);} 
    if (mov >= 20 && mov <= 60) {text(rat2, 20, 380);}
    if (mov > 100 && mov <= 140) {text(rat3, 20, 380);} 
    if (mov > 180 && mov <= 220) {text(rat4, 20, 380);}
    if (mov >= 300) {mov = 0;}
  }
  if (pantalla == 4) {
    if (fresh >= 48) {fresh = 1;}
    frameRate(30);
    textSize(32);
    fill(255);
    bar = loadImage("data/bar/bar ("+fresh+").gif");
    image(bar, 0, 0, 720, 480);
    if (mov > 0 && mov <= 50) {text(fat1, 20, 80);} 
    if (mov >= 60 && mov <= 120) {text(fat2, 20, 80);}
    if (mov >= 160) {mov = 0;}
  }
  if (pantalla == 5) {
    frameRate(15);
    if (mov > 80){mov = 1;}
    if (fresh >= 64) {fresh = 1;}
    otrodia = loadImage("data/otro/otrodia ("+fresh+").gif");
    image(otrodia, 0, 0, 720, 480);
    textSize(64);
    fill(0, 120, 80);
    if (mov >= 0 && mov >= 20) {text("thanks", 20, 120);}
    if (mov >= 20 && mov >= 40) {text("for", 20, 160);}
    if (mov > 40 && mov >= 60 ) {text("Playing", 20, 200);}
    if ((mouseX >= 460 && mouseX <= 480) && (mouseY >= 350 && mouseY <=365)){
    textSize(32);
    fill(255);
    text("no hay tv pa", 470, 340);}
  }
    if (pantalla >= 6) {pantalla = 1; mov = 1;}  
    if (pantalla == 0) {pantalla = 5; mov = 1;}
}
void mouseClicked() {
  if (mouseX >= width / 2) {pantalla++;}
  if (mouseX <= width / 2) {pantalla--;}
}
