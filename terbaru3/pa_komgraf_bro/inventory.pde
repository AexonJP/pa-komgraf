void inventory(int index){
  for(int i=0;i<5;i++){
    rect(width/2 + ((float)i-2.5)*45, height-50,40,50);
    
  }
  rect(width/2 + ((float)index-2.5)*45+3, height-50+3,34,44);
}
