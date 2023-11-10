class chara{
  float x=0;
  float y=0;
  float scales =0.5;
  PImage img;
  
  String lari[] = new String[]{"lari1.png","lari2.png","lari3.png","lari4.png"};
  boolean arahs= true;
  int kl=0;
  int sLari=0;
  
  int delayTembak =0;
  
  float panjang = 30/scales;
  float lebar = 15/scales;
  float gravitasi =5;
  boolean lompat =false;
  boolean ground= false;
  boolean collisionKiri =false;
  boolean collisionAtas= false;
  boolean collisionKanan = false;
  int mls=0;
  float kecepatan=3;
  chara(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  
  void jalan(){
    if(kanans){
      arahs = true;
    }
    if(kiris){
      arahs = false;
    }
    
    if((kanans || kiris) && ground){
      if(sLari+500 <= millis()){
        kl++;
        kl%=3;
        sLari=millis();
      }
    }
    
    if(ground){
      img = loadImage("sprite/chara/knight/"+lari[kl]);
    }
    else{
      if(lompat){
        img = loadImage("sprite/chara/knight/jump.png");
      }
      else{
        img = loadImage("sprite/chara/knight/down.png");
      }
    }
    pushMatrix();
      scale(scales);
      
      if(arahs){
        translate(-7/scales,0);
        image(img, x/scales, y/scales);
      }
  
      if(!arahs){
        pushMatrix();
        translate(7/scales,0);
          scale(-1.0, 1.0);
          
          translate(-lebar/scales,0);
          image(img, -x/scales, y/scales);
        popMatrix();
      }
    popMatrix();
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
    
    
    
    
    if(kanans){
      if(!collisionKanan){
        this.x += kecepatan;
      }
    }
    
    if(atass && ground){
      lompat =true;
      if(!collisionAtas){
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
    
    
    
    
    
    
      
    collisionAtas = false;
    collisionKiri = false;
    collisionKanan =false;
    ground = false;
  }
  
  
  void tembak(){
    if(tembak && delayTembak +1200 < millis()){
      wp.add(new projectile(arahs,(int)x+int(lebar/2),(int)y+int(panjang/2),10,10));
      delayTembak = millis();
    }
  }
  
  void ada(){
    cekGerak();
    tembak();
  }
}
