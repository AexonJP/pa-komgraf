class panah{
  float x,y;
  float scales = 0.2;
  
  panah(float x, float y, float scales){
    this.x =x;
    this.y = y;
    this.scales = scales;
  }
  
  panah(float x, float y){
    this.x =x;
    this.y = y;
  }

  void bentuk(){
    pushMatrix();
    translate(x,y);
    scale(scales);
    translate(-270, -470);
    strokeWeight(2);
    stroke(0);
    //bulu
    fill(#E3E3E1 );
    quad(400,500,270,470,280,500,270,530);
    //batang
    fill(#3A2206);
    rect(300,495,350,10);
    //kepala panah 
    translate(-130,0);
    fill(#B7B09C);
    beginShape();
    vertex(800,500);
    vertex(750,475);
    vertex(770,500);
    vertex(750,525);
    endShape(CLOSE);
    noFill();
    popMatrix();
  }

}
