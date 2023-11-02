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
