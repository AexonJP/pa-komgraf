import java.util.ArrayList;  

//membuat progerakan jadi lebih fluent
boolean kiris= false;
boolean kanans = false;
boolean atass = false;
boolean bawahs = false;




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
      collisionKanan =false;
    }
    
      
    if(bawahs){
      this.y +=kecepatan;
    }
    if(atass){
      
      if(ground){
        this.y -=300;
        ground = false;
      }
    }
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
    this.x2 = x2;
    this.y2 = y2 + y1;
  }
  void bentuk(){
    rect(x1,y1,x2,y2-y1);
  }
}




chara mario = new chara(50,0);
chara mario2 = new chara(150,0);
platform kotak1 = new platform(0,670,800,60);
platform kotak2 = new platform(900,600,1200,60);

ArrayList<chara> player = new ArrayList<chara>();
ArrayList<platform> plat = new ArrayList<platform>();



void setup(){
  size(1200,800);
  frameRate(60);
  player.add(mario);
  player.add(mario2);
  plat.add(kotak1);
  plat.add(kotak2);
}

void draw(){
  background(255);
  
  fill(0);
  //mario.ada();
  //mario2.ada();
  noFill();
  
  animasi();
  
  //kotak1.bentuk();
  //kotak2.bentuk();
  
  //for(
  
  //if(mario.x < kotak1.x2 && mario.y+(mario.panjang/2) < kotak1.y1){
  //  mario.y+=5;
  //}
  //if(mario2.x < kotak1.x2 && mario2.y+(mario2.panjang/2) < kotak1.y1){
  //  mario2.y+=5;
  //}
  
}
