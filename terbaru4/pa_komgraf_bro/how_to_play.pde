void howToPlay(){
  image(bgMenu,0,0,width,height, 0,0, bgMenu.width-500, bgMenu.height);
  pushMatrix();
  strokeWeight(3);
  //fill(0);
  //rect(0,0,width,height);
  stroke(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Selamat datang", width/2,height/2-200);
  //fill(255);
  noFill();
  text("START", width/2, height/2);
  //rect(width/2-130, height/2-32,265,40);
  text("HOW TO PLAY",width/2, height/2+100);
  //rect(width/2-130, height/2+100-32,265,40);
  text("EXIT", width/2, height/2+200);
  //rect(width/2-130, height/2+200-32,265,40);
  textAlign(LEFT);
  textSize(15);
  popMatrix();
  if(mouseX >= width/2-130 && mouseY >= height/2-32 && mouseX <= width/2-130+265 && mouseY <= height/2-32+40){
    line(width/2-130,height/2+5,  width/2-130+265, height/2+5);
    if(mousePressed){
      halaman =1;
    }
  }
  
  if(mouseX >= width/2-130 && mouseY >= height/2+100-32 && mouseX <= width/2-130+265 && mouseY <= height/2+100-32+40){
    line(width/2-130,height/2+100+5,  width/2-130+265, height/2+100+5);
    if(mousePressed){
      halaman =2;
    }
  }
  if(mouseX >= width/2-130 && mouseY >= height/2+200-32 && mouseX <= width/2-130+265 && mouseY <= height/2+200-32+40){
    line(width/2-130,height/2+200+5,  width/2-130+265, height/2+200+5);
    if(mousePressed){
      exit();
    }
  }
  //if(mousePressed){
  //  menu = false;
  //}
}
