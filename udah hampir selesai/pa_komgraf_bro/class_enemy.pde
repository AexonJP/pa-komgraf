
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
  enemy(float x, float y, float x1, float y1, float x2, float y2){
    this.x=x;
    this.y=y;
    this.x1=x1;
    this.y1=y1;
    this.x2 = x2;
    this.y2 = y2;
  }
  void hitbox(){
    rect(x,y,lebar,panjang);
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
