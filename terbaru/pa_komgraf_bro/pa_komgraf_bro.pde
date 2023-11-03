import java.util.ArrayList;  

//membuat progerakan jadi lebih fluent
boolean kiris= false;
boolean kanans = false;
boolean atass = false;
boolean bawahs = false;
PImage imgs;
float geraks=0;

int poin =0;


chara mario = new chara(50,0);
chara mario2 = new chara(150,0);
platform kotak1 = new platform(0,670,480,75      );
platform kotak2 = new platform(900,600,1200,60      );
enemy monster1 = new enemy(kotak1.x1, kotak1.y1, kotak1.x2, 0);
enemy monster2 = new enemy(kotak2.x1, kotak2.y1, kotak2.x2,0);


ArrayList<chara> player = new ArrayList<chara>();
ArrayList<platform> plat = new ArrayList<platform>();

ArrayList<enemy> monster = new ArrayList<enemy>();


void setup(){
  size(1200,800, P2D);
  frameRate(45);
  player.add(mario);
  //player.add(mario2);
  imgs  = loadImage("sprite/background/pemandangan1.png");
  monster.add(monster1);
  monster.add(monster2);
  plat.add(kotak1);
  plat.add(kotak2);
}

void draw(){
  //background(255);
  background(#407cbc);
  image(imgs,0,0,width,height, 0,0, imgs.width-500, imgs.height);
  pushMatrix();
  translate(0,150);
  noStroke();
  wallpaper();
  popMatrix();
  
  
  fill(0);
  //mario.ada();
  //mario2.ada();
  noFill();
  
  
  if(mario.x+(mario.lebar/2) > width/2){
    translate(-(mario.x+(mario.lebar/2) -(width/2)),0);
  }
  stroke(2);
  strokeWeight(2);
  collision();
  
  ikutiMouse();
  
  fill(255); // Warna teks hitam
  //text("Point  " + poin, 10, 20);
  pushMatrix();
  if(mario.x+(mario.lebar/2) > width/2){
    text("Point  " + poin, 10+(mario.x+(mario.lebar/2)-(width/2)), 20);
  }
  else{
    text("Point  " + poin, 10, 20);
  }
  
  //megumin(0.15,0,0);
  popMatrix();
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
