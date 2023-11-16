

void mousePressed(){
  
  //if(halaman ==1){
  //  if(mario.x+(mario.lebar/2) >= width/2){
  //    platform xs = new platform(mouseX+(mario.x+(mario.lebar/2) -(width/2)), mouseY, 100,30);
  //    xs.load();
  //    plat.add(xs);
      
      
  //    enemy en = new enemy(mouseX+(mario.x+(mario.lebar/2) -(width/2)), mouseY, 100+mouseX+(mario.x+(mario.lebar/2) -(width/2)));
  //    en.load();
  //    monster.add(en);
      
  //    koin kn = new koin(mouseX+(mario.x+(mario.lebar/2) -(width/2)), mouseY-250*0.2);
  //    koins.add(kn);
      
      
  //    println(mouseX+(mario.x+(mario.lebar/2) -(width/2)));
  //    println(mouseY);
  //  }
  //  else{
  //    platform xs = new platform(mouseX, mouseY, 100,30);
  //    xs.load();
  //    plat.add(xs);
      
      
  //    enemy en =new enemy(mouseX, mouseY, 100+mouseX);
  //    en.load();
  //    monster.add(en);
      
      
  //    koin kn = new koin(mouseX, mouseY-250*0.2);
  //    koins.add(kn);
      
  //    println(mouseX);
  //    println(mouseY);
  //  }
  //  println(mario.ground);
  //  println(mario.collisionAtas);
  //}
  
  
  
  //untuk memunculkan platform
  if(mouseX-mousesx > 0 && mouseY-mousesy >0){
    if(halaman ==1){
      if(mario.x+(mario.lebar/2) >= width/2){
        if(mouses ==0){mouses++; mousesx=mouseX; mousesy = mouseY;}
        //else if(mouses ==1){mouses++;}
        //else if(mouses ==2){mouses++; mousesy2=mouseY;}
        else if(mouses ==1){mousesx2 = mouseX;mousesy2 =mouseY;
          platform xs = new platform(mousesx+(mario.x+(mario.lebar/2) -(width/2)), mousesy, mousesx2-mousesx,mousesy2 - mousesy);
          xs.load();
          plat.add(xs);
          
          if(xs.x2 - xs.x1 > 70 ){
            int banyak = (int)random((xs.x2-xs.x1) / 70);
            for(int i =0;i<banyak;i++){
              enemy en = new enemy(mousesx+(mario.x+(mario.lebar/2) -(width/2)), mousesy, mousesx2+(mario.x+(mario.lebar/2) -(width/2)));
              en.load();
              monster.add(en);
            }
          }
          
          
          
          
          
          
          try{
              //for(platform i : plat){
                 String[] list = new String[]{Float.toString(xs.x1), Float.toString(xs.y1),Float.toString(xs.x2-xs.x1),Float.toString(xs.y2-xs.y1)};
                 for(String is : list){
                 save_plat.println(is);
               }
              //}
          }
          catch(Exception e){
            print("error");
          }
          save_plat.flush();
          //output.close();
          
          //println(mousesx+(mario.x+(mario.lebar/2) -(width/2)));
          //println(mousesy);
          mouses=0;
          mousesx =0;
          mousesy=0;
        }
      }
      else{
        if(mouses ==0){mouses++; mousesx=mouseX; mousesy = mouseY;}
        //else if(mouses ==1){mouses++; mousesx2=mouseX;}
        //else if(mouses ==1){mouses++;mousesx2 = mouseX;mousesy2 =mouseY;}
        else if(mouses ==1){mousesx2 = mouseX;mousesy2 =mouseY;
          platform xs = new platform(mousesx, mousesy, mousesx2-mousesx,mousesy2 - mousesy);
          xs.load();
          plat.add(xs);
          
          
          
          if(xs.x2 - xs.x1 > 70 ){
            int banyak = (int)random((xs.x2-xs.x1) / 70);
            for(int i =0;i<banyak;i++){
              enemy en =new enemy(mousesx, mousesy, mousesx2);
              en.load();
              monster.add(en);
            }
          }
          
          
          
          
          
          try{
            //for(platform i : plat){
             String[] list = new String[]{Float.toString(xs.x1), Float.toString(xs.y1),Float.toString(xs.x2-xs.x1),Float.toString(xs.y2-xs.y1)};
              for(String is : list){
                save_plat.println(is);
              }
            //}
          }
          catch(Exception e){
            print("error");
          }
          save_plat.flush();
          //output.close();
          
          //println(mouseX);
          //println(mouseY);
          mouses=0;
          mousesx =0;
          mousesy=0;
        }
        //println(mario.ground);
        //println(mario.collisionAtas);
        //println(
      }
    }
  }
  else {
    mouses=0;
    mousesx =0;
    mousesy=0;
  }
}


void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if(inven+e >= 0 && inven +e <5){
    inven+=e;
  }
}
