class projectile{
  int x,y,panjang, lebar;
  boolean arah;
  int invens;
  
  projectile(boolean arah, int x, int y, int lebar, int panjang, int invens){
    this.x = x;
    this.y= y;
    this.panjang = panjang;
    this.lebar = lebar;
    this.arah = arah;
    this.invens =invens;
  }
  
  void bentuk (){
    rect(x,y,lebar,panjang);
  }
  
  void cek(){
    if(mario.x+(mario.lebar/2) >= width/2){
      if(arah){
        if(x+lebar < width+(mario.x+(mario.lebar/2) -(width/2))){
          if(invens ==0) new panah(x-30,y+panjang/4,0.1).bentuk();
          x+=5;
        }
      }
      else{
        if(x > 0+(mario.x+(mario.lebar/2) -(width/2))){
          if(invens ==0){
            pushMatrix();
            scale(-1,1);
            new panah(-x-panjang-30,y+panjang/4,0.1).bentuk();
            popMatrix();
          }
          x-=5;
        }
      }
    }
    else{
      if(arah){
        if(x+lebar < width){
          if(invens ==0) new panah(x-30,y+panjang/4,0.1).bentuk();
          x+=5;
        }
      }
      else{
        if(x > 0){
          if(invens ==0){
            pushMatrix();
            scale(-1,1);
            new panah(-x-panjang-30,y+panjang/4,0.1).bentuk();
            popMatrix();
          }
          x-=5;
        }
      }
    }
  }
  
  void ada(){
    //bentuk();
    cek();
  }
}
