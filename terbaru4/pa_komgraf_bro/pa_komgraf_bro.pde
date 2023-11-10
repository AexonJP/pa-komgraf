import java.util.ArrayList;  

PGraphics pg;
int putar =0;
int halaman =0;

import processing.sound.*;
SoundFile menuMusic;
SoundFile inGameMusic;

//membuat progerakan jadi lebih fluent
boolean kiris= false;
boolean kanans = false;
boolean atass = false;
boolean bawahs = false;
boolean tembak = false;


PImage imgs;
PImage bgMenu;

//untuk gerakkan awan
float geraks=0;

//untuk ngecek menggunakan inventory yang mana
int inven =0;

boolean menu = true;

int poin =0;


chara mario = new chara(50,0);
chara mario2 = new chara(150,0);
platform kotak1 = new platform(0,670,480,75);
platform kotak2 = new platform(900,600,1200,60);
enemy monster1 = new enemy(kotak1.x1, kotak1.y1, kotak1.x2);
enemy monster2 = new enemy(kotak2.x1, kotak2.y1, kotak2.x2);

koin koins1 = new koin(744,615);


ArrayList<SoundFile> musik = new ArrayList<SoundFile>();
ArrayList<chara> player = new ArrayList<chara>();
ArrayList<platform> plat = new ArrayList<platform>();
ArrayList<projectile> wp = new ArrayList<projectile>();
ArrayList<enemy> monster = new ArrayList<enemy>();
ArrayList<koin> koins = new ArrayList<koin>();

void setup(){
  musik.add(new SoundFile(this, "sound/music/Teller_of_the_Tales.mp3"));
  musik.add(new SoundFile(this, "sound/music/winding_paths.mp3"));
  
  size(1200,800, P2D);
  pg = createGraphics(250,250,P3D);
  frameRate(45);
  player.add(mario);
  //player.add(mario2);
  imgs  = loadImage("sprite/background/pemandangan1.png");
  bgMenu = loadImage("sprite/background/pemandangan11.png");
  monster.add(monster1);
  monster.add(monster2);
  
  
  plat.add(kotak1);
  plat.add(kotak2);
  
  koins.add(koins1);
  
  
  
  for(platform i : plat){
    i.load();
  }
  
  for(enemy i: monster){
    i.load();
  }
}


void draw(){
  
  
  if(halaman ==0){
    
    menu();
  }
  else if(halaman == 1){
    inGame();
  }
  
  
  matikanMusik(musik.get(halaman));
  if(!musik.get(halaman).isPlaying()){
    musik.get(halaman).play(1,0,0.2);
  }
}
