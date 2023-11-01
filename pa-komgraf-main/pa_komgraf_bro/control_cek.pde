


void animasi(){
  
  
  for(chara i : player){
    for(platform is : plat){
      if((i.x+i.lebar +i.kecepatan >= is.x1) && (i.x - i.kecepatan <= is.x2) && (i.y+i.panjang+10 >= is.y1) && i.y - 10 <= is.x2){
        if(i.x+i.lebar <  is.x1) i.collisionKanan = true;
        if(i.x > is.x2) i.collisionKiri = true;
        if(i.y+i.panjang < is.y1) i.ground = true;
        if(i.y > is.y2) i.collisionAtas = true;
        is.hit=true;
      }
      
      
      //if(i.x+i.lebar > is.x1 && i.x < is.x2){
      //  if(i.y+(i.panjang) < is.y1){
      //    //i.y+=5;
      //    i.ground = false;
      //  }
      //  else if(i.y > is.y2){
      //    i.ground = false;
      //  }
      //  else{
      //    i.ground = true;
      //    //i.collisionKanan = true;
      //  }
      //}
      //else if(i.y > is.y1 && i.y < is.y2){
      //  i.collisionKanan = true;
      //}
      //else if (){
        
      //else if(
    }
  }
  
  
  for(chara i : player){
    i.ada();
  }
  for(platform i : plat){
    i.bentuk();
  }
  
  
  x.hitbox();
  x.cekGerak();
}
