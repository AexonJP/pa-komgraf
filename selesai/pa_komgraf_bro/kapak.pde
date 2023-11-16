class kapak{
  float x, y;
  //int putars =1;
  float scales=0.2;
  kapak(float x, float y, float scales){
    this.x = x;
    this.y = y;
    this.scales = scales;
  }
  kapak(float x, float y){
    this.x = x;
    this.y = y;
  }
  void bentukGerak(){
    pushMatrix();
    translate(x,y);
    scale(scales);
    
    rotate(radians(putar));
    
    //menetralkan gambar
    //translate(-300, -270);
    //membuat gambar kapak ada di tengah
    //translate(-158,-345);
    
    translate(-458,-416);
    
    
    
    fill(210,105,30);
    //tongkat
    beginShape();
    vertex(300,600);
    vertex(490,270);
    vertex(520,288);
    vertex(327,615);
    endShape();
    fill(220,220,220);
    beginShape();
    vertex(510,303);
    vertex(540,322);
    vertex(565,315);
    vertex(564,295);
    vertex(593,294);
    vertex(616,371);
    vertex(565,460);
    vertex(500,468);
    vertex(488,445);
    vertex(505,433);
    vertex(495,411);
    vertex(460,390);
    endShape();
    noFill();
    popMatrix();
    //putars++;
    //putars%=360;
    
  }
  
  void bentuk(){
    pushMatrix();
    translate(x,y);
    scale(scales);
    
    //rotate(radians(putar));
    
    //menetralkan gambar
    translate(-300, -270);
    //membuat gambar kapak ada di tengah
    //translate(-158,-345);
    
    //translate(-300,-600);
    
    
    
    fill(210,105,30);
    //tongkat
    beginShape();
    vertex(300,600);
    vertex(490,270);
    vertex(520,288);
    vertex(327,615);
    endShape();
    fill(220,220,220);
    beginShape();
    vertex(510,303);
    vertex(540,322);
    vertex(565,315);
    vertex(564,295);
    vertex(593,294);
    vertex(616,371);
    vertex(565,460);
    vertex(500,468);
    vertex(488,445);
    vertex(505,433);
    vertex(495,411);
    vertex(460,390);
    endShape();
    noFill();
    popMatrix();
    //putars++;
    //putars%=360;
    
  }
}
