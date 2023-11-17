
void setup(){
  size(1000,1000);
  
}

void draw(){
//noStroke();
background(255);
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
fill(0);
text("x: " + mouseX + "\ny: " + mouseY,10,20);
}
