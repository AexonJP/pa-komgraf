void inventory(int index){
  
  for(int i=0;i<5;i++){
    fill(255);
    rect(width/2 + ((float)i-2.5)*45, height-50,40,50);
    if(i==0){
      new busur(width/2 + ((float)i-2.5)*45+15,height-50,0.1).bentuk();
    }
    if(i==1){
      new kapak(width/2 + ((float)i-2.5)*45+5,height-42,0.1).bentuk();
    }
  }
  noFill();
  rect(width/2 + ((float)index-2.5)*45+3, height-50+3,34,44);
}
