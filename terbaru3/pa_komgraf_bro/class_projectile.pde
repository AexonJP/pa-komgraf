class projectile{
  int x,y,panjang, lebar;
  boolean arah;
  
  projectile(boolean arah, int x, int y, int lebar, int panjang){
    this.x = x;
    this.y= y;
    this.panjang = panjang;
    this.lebar = lebar;
    this.arah = arah;
  }
  
  void bentuk (){
    rect(x,y,lebar,panjang);
  }
  
  void cek(){
    if(mario.x+(mario.lebar/2) >= width/2){
      if(arah){
        if(x+lebar < width+(mario.x+(mario.lebar/2) -(width/2))){
          x+=5;
        }
      }
      else{
        if(x > 0+(mario.x+(mario.lebar/2) -(width/2))){
          x-=5;
        }
      }
    }
    else{
      if(arah){
        if(x+lebar < width){
          x+=5;
        }
      }
      else{
        if(x > 0){
          x-=5;
        }
      }
    }
  }
  
  void ada(){
    bentuk();
    cek();
  }
}
