
class enemy{
  float x=0;
  float y=0;
  float x1=0;
  float y1=0;
  float x2=0;
  float y2=0;
  boolean kiri = true;
  boolean kanan = false;
  int panjang =35;
  int lebar =20;
  boolean hit = false;
  
  
  float scales= 1.5;
  PImage img;
  String slime[] = new String[]{"slime-move-0.png","slime-move-1.png","slime-move-2.png","slime-move-3.png"};
  int kl=0;
  int sLari=0;
  enemy(float x, float y, float x2){
    this.x=x+random(x2-x);
    this.y=y-panjang;
    this.x1=x;
    this.y1=y;
    this.x2 = x2;
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
    if(sLari+500 <= millis()){
      //if(arahs){
        kl%=3;
        //if(kanans){
        
        kl++;
        sLari=millis();
      //}
    }
    
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
    
    img = loadImage("sprite/chara/slime/"+slime[kl]);
    //}
    //if(kiris){
    //  img = loadImage("sprite/chara/knight/"+lari[kl]);
    //}
    pushMatrix();
      scale(scales);
      
      if(kiri){
        translate(-7/scales,0);
        image(img, x/scales, y/scales);
      }
  
      // flip using a matrix
      if(kanan){
        pushMatrix();
        translate(7/scales,0);
          scale(-1.0, 1.0);
          
          translate(-lebar/scales,0);
          image(img, -x/scales, y/scales);
        popMatrix();
      }
    popMatrix();
    
    
  }
}
