void matikanMusik(SoundFile x){
  for(SoundFile i : musik){
    if(i != x){
      i.stop();
    }
  }
}
