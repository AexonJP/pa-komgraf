
void mousePressed(){
  
  if(halaman ==1){
    if(mario.x+(mario.lebar/2) >= width/2){
      platform xs = new platform(mouseX+(mario.x+(mario.lebar/2) -(width/2)), mouseY, 100,30);
      xs.load();
      plat.add(xs);
      
      
      enemy en = new enemy(mouseX+(mario.x+(mario.lebar/2) -(width/2)), mouseY, 100+mouseX+(mario.x+(mario.lebar/2) -(width/2)));
      en.load();
      monster.add(en);
      
      koin kn = new koin(mouseX+(mario.x+(mario.lebar/2) -(width/2)), mouseY-250*0.2);
      koins.add(kn);
      
      
      println(mouseX+(mario.x+(mario.lebar/2) -(width/2)));
      println(mouseY);
    }
    else{
      platform xs = new platform(mouseX, mouseY, 100,30);
      xs.load();
      plat.add(xs);
      
      
      enemy en =new enemy(mouseX, mouseY, 100+mouseX);
      en.load();
      monster.add(en);
      
      
      koin kn = new koin(mouseX, mouseY-250*0.2);
      koins.add(kn);
      
      println(mouseX);
      println(mouseY);
    }
    println(mario.ground);
    println(mario.collisionAtas);
  }
}


void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if(inven+e >= 0 && inven +e <5){
    inven+=e;
  }
}
