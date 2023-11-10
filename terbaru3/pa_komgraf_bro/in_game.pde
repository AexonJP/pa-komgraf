void inGame(){
  background(#407cbc);
  image(imgs,0,0,width,height, 0,0, imgs.width-500, imgs.height);
  
  pushMatrix();
  translate(0,150);
  noStroke();
  wallpaper();
  popMatrix();
  
  
  fill(0);
  noFill();
  
  
  pushMatrix();
  if(mario.x+(mario.lebar/2) > width/2){
    translate(-(mario.x+(mario.lebar/2) -(width/2)),0);
  }
  stroke(2);
  strokeWeight(2);
  collision();
  popMatrix();
  
  
  fill(255); // Warna teks hitam
  pushMatrix();
  text("Point  " + poin, 10, 20);
  text("enemy  " + monster.size(), 10, 60);
  inventory(inven);
  popMatrix();
  
  ikutiMouse();
}
