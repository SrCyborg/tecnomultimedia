let EneX = new Array(3); let EneY = new Array(3);
let BalaEneX = new Array(3); let BalaEneY = new Array(3);
let Estado = new Array(3); let Direccion = new Array(3);
let Mira = ["W","S","A","D"];
let Moverse = new Array(3);
let Seg = 0; let tiempo = 0;
let animacion = 0; let act = 0;
function Enemigos(){
  animacion += 60/frameRate();
  if(animacion >= 60/24){act++; animacion = 0;
  if(act == 2){act = 0;}}
  if(frameCount % 60 == 0){Seg++
  tiempo++;}
  if(Seg == 2){
 Direccion[0] = random(Mira);
 Direccion[1] = random(Mira); 
 Direccion[2] = random(Mira); 
 Seg = 0;}
 if(Estado[0] == "vivo"){
   EnemigoAvanza(0,0,0,0);
  if(Direccion[0] == "W"){
    if(Moverse[0]){EneY[0]-=Speed;}  
    if(EneY[0] < 28){Moverse[0] = false; EneY[0]+=Speed;}}
  if(Direccion[0] == "S"){
    if(Moverse[0]){EneY[0]+=Speed;}  
    if(EneY[0] > 612){Moverse[0] = false; EneY[0]-=Speed;}}  
  if(Direccion[0] == "A"){
    if(Moverse[0]){EneX[0]-=Speed;}  
    if(EneX[0] < 262){Moverse[0] = false;EneX[0]+=Speed;}}
  if(Direccion[0] == "D"){
    if(Moverse[0]){EneX[0]+=Speed;}  
    if(EneX[0] > 843){Moverse[0] = false;EneX[0]-=Speed;}}
   if(Direccion[0] == "W"){image(tankGrayN[act],EneX[0],EneY[0],36,36);}
  else if(Direccion[0] == "S"){image(tankGrayS[act],EneX[0],EneY[0],36,36);}
  else if(Direccion[0] == "A"){image(tankGrayO[act],EneX[0],EneY[0],36,36);}
  else if(Direccion[0] == "D"){image(tankGrayE[act],EneX[0],EneY[0],36,36);}
 }
 if(Estado[1] == "vivo"){
   EnemigoAvanza(6,1,1,1);
   if(Direccion[1] == "W"){
    if(Moverse[1]){EneY[1]-=Speed;}  
    if(EneY[1] < 28){Moverse[1] = false; EneY[1]+=Speed;}}
  if(Direccion[1] == "S"){
    if(Moverse[1]){EneY[1]+=Speed;}  
    if(EneY[1] > 612){Moverse[1] = false; EneY[1]-=Speed;}}  
  if(Direccion[1] == "A"){
    if(Moverse[1]){EneX[6]-=Speed;}  
    if(EneX[6] < 262){Moverse[1] = false;EneX[6]+=Speed;}}
  if(Direccion[1] == "D"){
    if(Moverse[1]){EneX[6]+=Speed;}  
    if(EneX[6] > 843){Moverse[1] = false;EneX[6]-=Speed;}}
   if(Direccion[1] == "W"){image(tankGrayN[act],EneX[6],EneY[1],36,36);}
  else if(Direccion[1] == "S"){image(tankGrayS[act],EneX[6],EneY[1],36,36);}
  else if(Direccion[1] == "A"){image(tankGrayO[act],EneX[6],EneY[1],36,36);}
  else if(Direccion[1] == "D"){image(tankGrayE[act],EneX[6],EneY[1],36,36);}
 }
  if(Estado[2] == "vivo"){
    EnemigoAvanza(12,2,2,2);
    if(Direccion[2] == "W"){
    if(Moverse[2]){EneY[2]-=Speed;}  
    if(EneY[2] < 28){Moverse[2] = false; EneY[2]+=Speed;}}
  if(Direccion[2] == "S"){
    if(Moverse[2]){EneY[2]+=Speed;}  
    if(EneY[2] > 612){Moverse[2] = false; EneY[2]-=Speed;}}  
  if(Direccion[2] == "A"){
    if(Moverse[2]){EneX[12]-=Speed;}  
    if(EneX[12] < 262){Moverse[2] = false;EneX[12]+=Speed;}}
  if(Direccion[2] == "D"){
    if(Moverse[2]){EneX[12]+=Speed;}  
    if(EneX[12] > 843){Moverse[2] = false;EneX[12]-=Speed;}}
   if(Direccion[2] == "W"){image(tankGrayN[act],EneX[12],EneY[2],36,36);}
   else if(Direccion[2] == "S"){image(tankGrayS[act],EneX[12],EneY[2],36,36);}
   else if(Direccion[2] == "A"){image(tankGrayO[act],EneX[12],EneY[2],36,36);}
   else if(Direccion[2] == "D"){image(tankGrayE[act],EneX[12],EneY[2],36,36);}
 }
 if(tiempo < 20){
 if(Estado[0] == "muerto"){
   if(Estado[1] == "muerto"){
     if(Estado[2] == "muerto"){
      eleccion = "Win";}}}}
    else if(tiempo == 20){eleccion = "Loser";}
}

function EnemigoAvanza(numx,numy,numd,mov){
  for (let x = 0; x < ancho; x++) {
    for (let y = 0; y < alto; y++) {
      let W = (EneY[numy]- 20)< casillaY + 48 * y + 24;
      let S = (EneY[numy]+ 20)> casillaY + 48 * y - 24;
      let A = (EneX[numx]- 20)< casillaX + 48 * x + 24;
      let D = (EneX[numx]+ 20)> casillaX + 48 * x - 24;  
    if(W && A && S && D){
    if(cuadrilla[x][y] == 0){Moverse[mov]= true;}
    else if(cuadrilla[x][y] != 0){Moverse[mov]= false;
    if(!Moverse[mov]){   
     if(Direccion[numd] == "W"){EneY[numy]+=Speed;}
  else if(Direccion[numd] == "S"){EneY[numy]-=Speed;}
  else if(Direccion[numd] == "A"){EneX[numx]+=Speed;}
  else if(Direccion[numd] == "D"){EneX[numx]-=Speed;}}
          }                                  
   if (EneX[numx] > 843){Moverse[mov] = false; EneX[numx]-=20;}
   if (EneX[numx] < 262){Moverse[mov] = false; EneX[numx]+=20;}
   if (EneY[numy] > 612){Moverse[mov] = false; EneY[numy]-=20;}
   if (EneY[numy] < 28){Moverse[mov] = false; EneY[numy]+=20;}                          
    }
   }
  }
}
