
void mousePressed(){
  println("mouse X :"+mouseX);
  println("mouse Y :"+mouseY);
  //println("posisi X :"+posisiX);
  //println("posisi Y :"+posisiY);
  plat.add(new platform(mouseX, mouseY, 100,30));
}
