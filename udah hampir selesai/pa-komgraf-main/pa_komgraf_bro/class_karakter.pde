class chara{
  float x=0;
  float y=0;
  int panjang = 70;
  int lebar = 40;
  float gravitasi =5;
  boolean lompat =false;
  boolean ground= false;
  boolean collisionKiri =false;
  boolean collisionAtas= false;
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
    
    
    if(gravitasi < 0){
      lompat = false;
      gravitasi =0;
    }
    if(gravitasi > 10){
      gravitasi =10;
    }
    
    
    if(kiris){
      if(!collisionKiri){
        this.x -= kecepatan;
      }
    }
    
    
    //if(
    
    
    if(kanans){
      if(!collisionKanan){
        this.x += kecepatan;
      }
    }
    
    if(atass && ground){
      lompat =true;
      if(!collisionAtas){
        //y -=1;
        ground = false;
        gravitasi =5;
      }
    }
    
    if(collisionAtas){
      lompat =false;
      gravitasi =0;
    }
    
    if(!lompat && !ground){
      this.y += (gravitasi+=0.2);
    }
    else if(lompat && !ground){
      this.y -= (gravitasi-=0.12);
    }
    else {
      lompat =false;
      gravitasi =5;
    }
    
    
    
    
    
    
      
    //if(bawahs){
    //  this.y +=kecepatan;
    //}
    //if(!ground){
    //  this.y +=kecepatan;
    //}
    //if(atass){
      
    //  if(ground){
    //    this.y -=300;
    //  }
    //}
    collisionAtas = false;
    collisionKiri = false;
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
  boolean hit = false;
  platform(float x1, float y1, float x2, float y2){
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2 +x1;
    this.y2 = y2 + y1;
    //this
  }
  void bentuk(){
    if(hit){
      fill(255,0,0);
    }
    //else{
    //  noFill();
    
    rect(x1,y1,x2-x1,y2-y1);
    noFill();
    hit =false;
  }
}
