
void mousePressed(){
  
  
  
  //println("mouse X :"+mouseX);
  //println("mouse Y :"+mouseY);
  
  
  
  
  //println("posisi X :"+posisiX);
  //println("posisi Y :"+posisiY);
  if(mario.x+(mario.lebar/2) >= width/2){
    //translate(-(mario.x+(mario.lebar/2) -(width/2)),0);
    plat.add(new platform(mouseX+(mario.x+(mario.lebar/2) -(width/2)), mouseY, 100,30));
  }
  else{
    plat.add(new platform(mouseX, mouseY, 100,30));
  }
  println(mario.ground);
  println(mario.collisionAtas);
}
