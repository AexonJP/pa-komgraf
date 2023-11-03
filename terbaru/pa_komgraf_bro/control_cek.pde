


void collision(){
  
  
  for(chara i : player){
    i.jalan();
    i.ada();
  }
  for(platform i : plat){
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
                //i.ground =false;
              }
              if(i.x > is.x2){
                i.collisionKiri = true;
                //i.ground =false;
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
        if(!(i.y+i.panjang - i.gravitasi  < is.y) && !(i.y - i.gravitasi  > is.y+i.lebar)){
          if(!i.lompat && !i.ground){
            i.lompat =true;
            i.gravitasi =5;
            is.hit =true;
            monster.remove(monster.indexOf(is));
            poin++;
            break;
          }
          is.hit =true;
          i.x =50;
          i.y =20;
        }
      }
          
      //is.hitbox();
      is.cekGerak();
    }
  }
}
