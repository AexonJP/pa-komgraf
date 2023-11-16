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
  
  
  //untuk memunculkan koin
  if(keyCode == 16){
    if(mario.x+(mario.lebar/2) >= width/2){
      koin kn = new koin(mouseX+(mario.x+(mario.lebar/2) -(width/2)), mouseY);
      koins.add(kn);
      
      try{
        //for(koin i : koins){
          String[] list = new String[]{Float.toString(kn.x), Float.toString(kn.y)};
          for(String is : list){
            save_koin.println(is);
          }
        //}
      }
      catch(Exception e){
        print("error");
      }
      save_koin.flush();
      
    }
    else{
      koin kn = new koin(mouseX, mouseY);
      koins.add(kn);
      try{
        //for(koin i : koins){
          String[] list = new String[]{Float.toString(kn.x), Float.toString(kn.y)};
          for(String is : list){
            save_koin.println(is);
          }
        //}
      }
      catch(Exception e){
        print("error");
      }
      save_koin.flush();
    }
  }
  //print(keyCode);
  
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
