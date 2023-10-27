
void mousePressed(){
  println("mouse X :"+mouseX);
  println("mouse Y :"+mouseY);
  //println("posisi X :"+posisiX);
  //println("posisi Y :"+posisiY);
}



void animasi(){
  for(chara i : player){
    i.ada();
  }
  for(platform i : plat){
    i.bentuk();
  }
  
  for(chara i : player){
    for(platform is : plat){
      if(i.x+i.lebar > is.x1 && i.x < is.x2){
        if(i.y+(i.panjang) < is.y1 || i.y > is.y2){
          i.y+=5;
        }
        else{
          i.ground = true;
          //i.collisionKanan = true;
        }
      }
      //else if(
    }
  }
}


void keyPressed(){
  //if(keyCode == 83){
  //  bawahs=true;
  //}
  if(keyCode == 65){
    kiris= true;
  }
  if(keyCode == 68){
    
    kanans = true;
  }
  if(keyCode == 87){
    
    atass = true;
  }
  
}



//untuuk membaca keyboard di lepas
void keyReleased(){
  if(keyCode == 83){
    bawahs=false;
  }
  if(keyCode == 65){
    kiris= false;
    
  }
  if(keyCode == 68){
    
    kanans = false;
    
  }
  if(keyCode == 87){
    
    atass = false;
  }
}
