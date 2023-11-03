void wallpaper(){
  geraks%= width;
  
  pushMatrix();
  fill(255, 204, 0); 
  translate(0, -400);
  noStroke();
  ellipse(width/2, height/2, 200, 200);
  popMatrix();
  
  
  pushMatrix();
  translate(-geraks,0);
  fill(#d0cec3);
  beginShape();
    curveVertex(50, 100);
    curveVertex(50, 100);
    curveVertex(100, 60);
    curveVertex(150, 70);
    curveVertex(200, 60);
    curveVertex(250, 70);
    curveVertex(300, 60);
    curveVertex(350, 100);
    curveVertex(350, 100);
  endShape();
  beginShape();
    curveVertex(50, 100);
    curveVertex(50, 100);
    curveVertex(100, 124);
    curveVertex(150, 111);
    curveVertex(200, 124);
    curveVertex(250, 126);
    curveVertex(290, 140);
    curveVertex(350, 100);
    curveVertex(350, 100);
  endShape();
  
  ellipse(450,50,70,45);
  ellipse(500,50,85,65);
  ellipse(540,50,70,35);
    
  ellipse(950,50,70,45);
  ellipse(1000,50,85,65);
  ellipse(1040,50,70,35);
  
  ellipse(1250, 100,80,50);
  ellipse(1300, 100,95,75);
  ellipse(1330, 100,80,55);
  ellipse(1345, 100,75,40);
  
  
  
  pushMatrix();
  translate(width, 0);
  fill(#d0cec3);
  beginShape();
    curveVertex(50, 100);
    curveVertex(50, 100);
    curveVertex(100, 60);
    curveVertex(150, 70);
    curveVertex(200, 60);
    curveVertex(250, 70);
    curveVertex(300, 60);
    curveVertex(350, 100);
    curveVertex(350, 100);
  endShape();
  beginShape();
    curveVertex(50, 100);
    curveVertex(50, 100);
    curveVertex(100, 124);
    curveVertex(150, 111);
    curveVertex(200, 124);
    curveVertex(250, 126);
    curveVertex(290, 140);
    curveVertex(350, 100);
    curveVertex(350, 100);
  endShape();
  
  ellipse(450,50,70,45);
  ellipse(500,50,85,65);
  ellipse(540,50,70,35);
    
  ellipse(950,50,70,45);
  ellipse(1000,50,85,65);
  ellipse(1040,50,70,35);
  
  ellipse(1250, 100,80,50);
  ellipse(1300, 100,95,75);
  ellipse(1330, 100,80,55);
  ellipse(1345, 100,75,40);
  popMatrix();
  popMatrix();
  
  geraks += 0.3;
  
  
  //Matahari
  
  
  ////Gunung
  //fill(#0e5712);
  //beginShape();
  //vertex(400, 500);
  //vertex(200,100);
  //vertex(1, 500);
  //endShape();
  //beginShape();
  //vertex(800, 500);
  //vertex(600, 300);
  //vertex(400, 500);
  //endShape();
  //beginShape();
  //vertex(1200, 500);
  //vertex(1000, 200);
  //vertex(800, 500);
  //endShape();
  //beginShape();
  //vertex(1600, 500);
  //vertex(1400, 50);
  //vertex(1200, 500);
  //endShape();
  //beginShape();
  //vertex(1850, 500);
  //vertex(1725, 400);
  //vertex(1600, 500);
  //endShape();
}
