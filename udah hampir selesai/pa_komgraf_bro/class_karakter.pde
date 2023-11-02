class chara{
  float x=0;
  float y=0;
  int panjang = 70;
  int lebar = 40;
  boolean lompat =false;
  boolean ground= false;
  boolean collisionKanan = false;
  int mls=0;
  float kecepatan=5;
  chara(float x, float y){
    this.x = x;
    this.y = y;
  }
  void hitbox(){
    rect(x,y,lebar,panjang);
  }
  void cekGerak(){
    if(kiris){
      this.x -=kecepatan;
    }
    
    if(kanans){
      if(!collisionKanan){
        this.x += kecepatan;
      }
      
    }
    
      
    //if(bawahs){
    //  this.y +=kecepatan;
    //}
    if(!ground){
      this.y +=kecepatan;
    }
    if(atass){
      
      if(ground){
        this.y -=300;
      }
    }
    collisionKanan =false;
    ground = false;
  }
  //void lari(){
  //  if(!lompat){
  //    if(atass && collision
  void ada(){
    hitbox();
    cekGerak();
  }
}


class platform{
  float x1,x2,y1,y2;
  platform(float x1, float y1, float x2, float y2){
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2 +x1;
    this.y2 = y2 + y1;
  }
  void bentuk(){
    rect(x1,y1,x2-x1,y2-y1);
  }
}
