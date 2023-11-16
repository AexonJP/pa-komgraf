class busur{
  float x, y;
  float scales = 0.2; 
  busur(float x, float y, float scales){
    this.x = x;
    this.y = y;
    this.scales = scales;
  }
  
  busur(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void bentuk(){
    pushMatrix();
    translate(x,y);
    scale(scales);
    translate(-310, -100);
    stroke(0);
    strokeWeight(5);
    beginShape();
    fill(#7C5100);
    curveVertex(320,100);
    curveVertex(320,100);
    curveVertex(310,150);
    //belokan awal
    curveVertex(380,350);
    curveVertex(310,530);
    //bawah
    curveVertex(310,570);
    curveVertex(310,570);
    curveVertex(310,530);
    //belokan kedua
    curveVertex(360,350);
    curveVertex(310,150);
    curveVertex(320,100);
    curveVertex(320,100);
    
    endShape(CLOSE);
    strokeWeight(5);
    line(310,150,310,530);
    strokeWeight(2);
    popMatrix();
  }

}
