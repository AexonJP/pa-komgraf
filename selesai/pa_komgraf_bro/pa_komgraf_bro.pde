import java.util.ArrayList;  


int putar=0;
PrintWriter save_plat;
PrintWriter save_koin;




PGraphics pg;
//int putar =0;
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
PImage howToPlay;

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



SoundFile slime_die;
SoundFile koin;
ArrayList<SoundFile> musik = new ArrayList<SoundFile>();
ArrayList<chara> player = new ArrayList<chara>();
ArrayList<platform> plat = new ArrayList<platform>();
ArrayList<projectile> wp = new ArrayList<projectile>();
ArrayList<enemy> monster = new ArrayList<enemy>();
ArrayList<koin> koins = new ArrayList<koin>();



int mouses=0;
int mousesx=0;
int mousesy=0;
int mousesx2=0;
int mousesy2=0;





void setup(){
  musik.add(new SoundFile(this, "sound/music/Teller_of_the_Tales.mp3"));
  musik.add(new SoundFile(this, "sound/music/winding_paths.mp3"));
  musik.add(new SoundFile(this, "sound/music/Erothyme_Pinpoint_Sol_in_Erothyme_Pinpoint_Sol.mp3"));
  slime_die = new SoundFile(this, "sound/slime/slime_die2.wav");
  koin = new SoundFile(this, "sound/koin/koin.wav");
  
  for(SoundFile i : musik){
    i.amp(0.2);
  }
  slime_die.amp(0.8);
  koin.amp(0.8);
  
  savePlat();
  saveKoin();
  
  //output.close();
  
  
  size(1200,800, P2D);
  pg = createGraphics(250,250,P3D);
  frameRate(45);
  player.add(mario);
  //player.add(mario2);
  imgs  = loadImage("sprite/background/pemandangan1.png");
  bgMenu = loadImage("sprite/background/pemandangan11.png");
  howToPlay = loadImage("asset/how_to_play.png");
  
  
  
  //template monster
  
  //monster.add(monster1);
  //monster.add(monster2);
  
  //plat template
  
  //plat.add(kotak1);
  //plat.add(kotak2);
  
  
  //template koin
  
  //koins.add(koins1);
  
  
  
  //for(platform i : plat){
  //  i.load();
  //}
  
  //for(enemy i: monster){
  //  i.load();
  //}
  
  
  
}


void draw(){
  
  
  if(halaman ==0){
    
    menu();
  }
  else if(halaman == 1){
    inGame();
    if(mouses ==1){ fill(255,0,0);
      if(mouseX-mousesx > 0 && mouseY-mousesy >0)fill(0,255,0);
      rect(mousesx, mousesy,mouseX-mousesx, mouseY-mousesy);
    }
  }
  else if (halaman ==2){
    image(howToPlay,0,0,width,height);
    textSize(40);
    textAlign(CENTER);
    text("Back",width-100, height-60);
    if(mouseX >= width-100-130 && mouseY >= height-100 && mouseX <= width-100-130+265 && mouseY <= height-100+40){
      line(width-100-130,height-55,  width-100-130+265, height-55);
      if(mousePressed){
        halaman =0;
      }
    }
    textAlign(LEFT);
    textSize(15);
  }
  
  
  matikanMusik(musik.get(halaman));
  if(!musik.get(halaman).isPlaying()){
    if(halaman ==2)musik.get(halaman).amp(1.2);
    musik.get(halaman).play();
  }
  
}
