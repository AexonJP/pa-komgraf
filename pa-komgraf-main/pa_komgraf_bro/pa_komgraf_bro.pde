import java.util.ArrayList;  

//membuat progerakan jadi lebih fluent
boolean kiris= false;
boolean kanans = false;
boolean atass = false;
boolean bawahs = false;

chara mario = new chara(50,0);
chara mario2 = new chara(150,0);
platform kotak1 = new platform(0,670,800,60);
platform kotak2 = new platform(900,600,1200,60);

ArrayList<chara> player = new ArrayList<chara>();
ArrayList<platform> plat = new ArrayList<platform>();
enemy x = new enemy(kotak1.x1+50, kotak1.y1-40, kotak1.x1, kotak1.y1, kotak1.x2, 0);



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
