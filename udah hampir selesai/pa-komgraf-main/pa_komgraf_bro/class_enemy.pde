
class enemy{
  float x=0;
  float y=0;
  float x1=0;
  float y1=0;
  float x2=0;
  float y2=0;
  boolean kiri = true;
  boolean kanan = false;
  int panjang =40;
  int lebar =20;
  boolean hit = false;
  enemy(float x, float y, float x2, float y2){
    this.x=x+random(x2-x1);
    this.y=y-panjang;
    this.x1=x;
    this.y1=y;
    this.x2 = x2;
    this.y2 = y2;
  }
  void hitbox(){
    if(hit){
      fill(255,0,0);
      
    }
    rect(x,y,lebar,panjang);
    noFill();
    hit = false;
    
  }
  void cekGerak(){
    if(kiri){
      if(x > x1){
        x-=2;
      }
      else{
        kanan =true;
        kiri = false;
      }
    }else if(kanan){
      if(x+this.lebar < x2){
        x+=2;
      }
      else{
        kiri = true;
        kanan =false;
      }
    }
  }
}
