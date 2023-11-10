class koin{
  float x,y;
  float scales =0.2;
  koin(float x, float y, float scales){
    this.x = x;
    this.y = y;
    this.scales = scales;
  }
  koin(float x, float y){
    this.x = x;
    this.y =y;
  }
  
  void bentuk(){
    pushMatrix();
    
    translate(x,y);
    
    scale(scales);
    
    
    pushMatrix();
    
    pg.beginDraw();
    pg.fill(#FFD700);
    pg.background(0,0,0,0);
    pg.translate(pg.width/2,pg.height/2);
    
    pg.lights();
    
    pg.rotateY(radians(putar));
    
    pg.beginShape();
    pg.stroke(0);
    pg.strokeWeight(3);
    pg.vertex(0,-100);
    pg.vertex(-65,76);
    pg.vertex(94,-38);
    pg.vertex(-94,-38);
    pg.vertex(49,85);
    pg.vertex(0,-100);
    pg.endShape();
    
    pg.stroke(#FFD700);
    
    for(int i =1;i<=10;i++){
      pg.translate(0,0,-1);
      pg.circle(0,0,200);
    }
    
    pg.beginShape();
    pg.stroke(0);
    pg.strokeWeight(3);
    pg.vertex(0,-100);
    pg.vertex(-65,76);
    pg.vertex(94,-38);
    pg.vertex(-94,-38);
    pg.vertex(49,85);
    pg.vertex(0,-100);
    pg.endShape();
    pg.endDraw();
    popMatrix();
    putar++;
    putar%=360;
    
    image(pg,0,0);
    
    popMatrix();
  }
}
