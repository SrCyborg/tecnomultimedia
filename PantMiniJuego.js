class PantMiniJuego{
constructor(){
this.CasillaAnchoX = 0
this.CasillaAltoY = 0
this.cuadrilla = new Array();
this.PosX = 0;
this.PosY = 0;
}
MapaActual(){
  for(let x = 0; x < CasillaAnchoX; x++){
  this.cuadrilla[x] = new Array();
  for(let y = 0; y < CasillaAltoY; y++){
  this.cuadrilla[x][y] = 0;}}
}
MapaInicial(){
}
PJMovimiento(){
}

}
