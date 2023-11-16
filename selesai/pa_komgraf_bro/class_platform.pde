class platform{
  float x1,x2,y1,y2;
  PImage img;
  PImage imgy;
  boolean hit = false;
  platform(float x1, float y1, float x2, float y2){
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2 +x1;
    this.y2 = y2 + y1;
  }
  void load(){
    img = loadImage("sprite/train/tanahs.png");
    imgy = loadImage("sprite/train/tanah.png");
    
  }
  void bentuk(){
    if(hit){
      fill(255,0,0);
    }
    
    //image(img,x1,y1,x2-x1,y2-y1, 0,0,(int)x2-(int)x1,(int)(y2-y1));
    for(int i = 0; i < x2-x1;i +=img.width){
      image(img, x1+i,y1, x2-x1-i,y2-y1, 0,0,(int)x2-(int)x1-i, (int)(y2-y1));
     }
    for(float i = img.height;i < y2-y1;i+=(imgy.height)){
      //image(img, x1 ,y1+i ,x2-x1, y2-y1-i, 0,30,(int)x2-(int)x1, (int)(y2-y1-i));
      for(float is = 0; is < x2-x1;is+=imgy.width){
        image(imgy, x1+is,y1+i, x2-x1-is,y2-y1-i, 0,0,(int)(x2-x1-is), (int)(y2-y1-i));
      }
    }
    
    noFill();
    hit =false;
  }
}
