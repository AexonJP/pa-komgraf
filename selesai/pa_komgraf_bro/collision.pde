


void collision(){
  
  
  
  for(chara i : player){
    i.jalan();
    i.ada();
  }
  for(platform i : plat){
    i.bentuk();
  }
  
  for(projectile i : wp){
    i.ada();
  }
  
  for(enemy i : monster){
    i.cekGerak();
  }
  
  for(koin i : koins){
    i.bentuk();
  }
  
  
  
  
  for(chara i : player){
    for(platform is : plat){
        if(!i.ground){
          if (i.x+i.lebar +i.kecepatan >= is.x1 && i.x -i.kecepatan <= is.x2){
            if(!(i.y+i.panjang + i.gravitasi < is.y1) && !(i.y -i.gravitasi > is.y2)){
              i.ground =true;
              if(i.x+i.lebar < is.x1){
                i.collisionKanan = true;
                i.ground =false;
              }
              if(i.x > is.x2){
                i.collisionKiri = true;
                i.ground =false;
              }
              if(!(i.x+i.lebar < is.x1) && !(i.x > is.x2)){
                if(i.y > is.y2){
                  i.collisionAtas = true;
                  i.ground =false;
                }
              }
            }
          }
        }
        else{
          if (i.x+i.lebar +i.kecepatan >= is.x1 && i.x -i.kecepatan <= is.x2){
            if(!(i.y+i.panjang + i.gravitasi < is.y1) && !(i.y -i.gravitasi > is.y2)){
              i.ground =true;
              if(i.x+i.lebar < is.x1){
                i.collisionKanan = true;
              }
              if(i.x > is.x2){
                i.collisionKiri = true;
              }
              if(!(i.x+i.lebar < is.x1) && !(i.x > is.x2)){
                if(i.y > is.y2){
                  i.collisionAtas = true;
                  i.ground =false;
                }
              }
            }
          }
        }
    }
    
    
    if(i.y > height){
      i.x =50;
      i.y=20;
    }
    
    
  }
  
  
  for(chara i : player){
    for(enemy is : monster){
      if (i.x+i.lebar +i.kecepatan >= is.x && i.x -i.kecepatan <= is.x+is.lebar){
        if(!(i.y+i.panjang - i.gravitasi  < is.y) && !(i.y - i.gravitasi  > is.y+is.panjang)){
          if(!i.ground){
            i.lompat =true;
            i.gravitasi =5;
            i.hit = true;
            is.hit =true;
            slime_die.play();
            monster.remove(monster.indexOf(is));
            
            poin++;
            break;
          }
          else{
            is.hit =true;
            i.x =50;
            i.y =20;
          }
        }
      }
    }
  }
  
  
  
  for(int i =0;i<wp.size();i++){
     if(mario.x+(mario.lebar/2) >= width/2){
        if(wp.get(i).x +wp.get(i).lebar*2 > width+(mario.x+(mario.lebar/2) -(width/2)) || wp.get(i).x-5 <0+(mario.x+(mario.lebar/2) -(width/2))){
          wp.remove(i);
          i--;
        }
     }
     else{
       if(wp.get(i).x +wp.get(i).lebar*2 > width || wp.get(i).x-5 <0){
          wp.remove(i);
          i--;
        }
     }
  }
  
  for(chara i : player){
    for(int is =0;is<koins.size();is++){
      if (i.x+i.lebar +i.kecepatan >= koins.get(is).x && i.x -i.kecepatan <= koins.get(is).x+250*0.2){
        if(!(i.y+i.panjang - i.gravitasi  < koins.get(is).y) && !(i.y - i.gravitasi  > koins.get(is).y+250*0.2)){
          koins.remove(is);
          koin.play();
          try{
            save_koin = createWriter("koin1.txt");
            for(koin ix : koins){
              String[] list = new String[]{Float.toString(ix.x), Float.toString(ix.y)};
              for(String isx : list){
                save_koin.println(isx);
              }
            }
          }
          catch(Exception e){
            print("error");
          }
          save_koin.flush();
          poin+=10;
          is--;
        }
      }
    }
  }
  
  
  projectileCek:for(enemy i : monster){
    for(projectile is : wp){
      if(i.x+i.lebar > is.x && i.x < is.x+is.lebar && i.y+i.panjang > is.y && i.y < is.y+is.panjang){
        wp.remove(wp.indexOf(is));
        monster.remove(monster.indexOf(i));
        slime_die.play();
        poin++;
        break projectileCek;
      }
    }
  }
  
}
