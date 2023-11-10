void keyPressed(){
  if(keyCode == 65){
    kiris= true;
  }
  if(keyCode == 68){
    
    kanans = true;
  }
  if(keyCode == 87){
    
    atass = true;
  }
  
  if(keyCode ==32){
    tembak = true;
  }
  
}



//untuuk membaca keyboard di lepas
void keyReleased(){
  if(keyCode == 65){
    kiris= false;
    
  }
  if(keyCode == 68){
    
    kanans = false;
    
  }
  if(keyCode == 87){
    
    atass = false;
  }
  
  if(keyCode ==32){
    tembak = false;
  }
  
}
