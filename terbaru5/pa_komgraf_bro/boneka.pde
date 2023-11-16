class boneka{
  float scales=0.2;
  int x,y;
  boneka(int x, int y, float scales){
    this.x = x;
    this.y = y;
    this.scales = scales;
  }
  boneka(int x, int y){
    this.x = x;
    this.y = y;
  }
  void bentuk(){
    pushMatrix();
    strokeWeight(3);
    translate(x,y);
    scale(scales);
    translate(-194, -255);
    fill(0, 255, 255);
    beginShape();
    curveVertex(618, 188);
    curveVertex(618, 298);
    curveVertex(520, 240);
    curveVertex(420, 260);
    curveVertex(128, 400);
    endShape();
    
    //mata kiri
    
    
    //mata kanan
    
    
    //telinga kiri
    fill(0, 255, 255);
    beginShape();
    curveVertex(358,387);
    curveVertex(358,387);
    curveVertex(321,421);
    curveVertex(280,438);
    
    curveVertex(221,438);
    
    curveVertex(194,404);
    curveVertex(208,356);
    curveVertex(300,320);
    curveVertex(388,260);
    curveVertex(430,255);
    curveVertex(430,255);
    endShape();
    
    //telinga kanan
    fill(0, 255, 255);
    beginShape();
    curveVertex(647,407);
    curveVertex(647,407);
    curveVertex(684,466);
    curveVertex(745,495);
    
    
    curveVertex(820,475);
    
    curveVertex(820,425);
    curveVertex(780,395);
    curveVertex(721,342);
    curveVertex(675,294);
    curveVertex(595,288);
    curveVertex(608,288);
    endShape();
    
    //pipi
    beginShape();
    curveVertex(390,300);
    curveVertex(390,300);
    curveVertex(363,338);
    curveVertex(358,384);
    curveVertex(420,420);
    
    curveVertex(497,436);
    
    curveVertex(591,441);
    curveVertex(644,411);
    curveVertex(642,356);
    curveVertex(634,344);
    curveVertex(634,344);
    endShape();
    
    //lesung pipi kanan
    beginShape();
    //noStroke();
    fill(255,192,203);
    ellipse(600, 400, 70, 30);
    endShape();
    
    //lesung pipi kiri
    beginShape();
    //noStroke();
    fill(255,192,203);
    ellipse(395, 375, 70, 30);
    endShape();
    
    //bibir atas
    //noFill();
    beginShape();
    curveVertex(522,377);
    curveVertex(522,377);
    
    
    curveVertex(493,375);
    
    curveVertex(465,370);
    curveVertex(465,370);
    endShape();
    
    //bibir bawah
    beginShape();
    fill(255,192,203);
    curveVertex(511,379);
    curveVertex(511,379);
    curveVertex(504,403);
    
    curveVertex(490,408);
    
    curveVertex(473,403);
    curveVertex(479,375);
    curveVertex(479,375);
    endShape();
    
    //badan kanan
    fill(0, 255, 255);
    beginShape();
    curveVertex(447,428);
    curveVertex(447,428);
    curveVertex(413,533);
    
    curveVertex(570,572);
    curveVertex(600,559);
    
    curveVertex(611,527);
    
    curveVertex(590,440);
    curveVertex(590,440);
    endShape();
    
    //badan kiri
    fill(0, 255, 255);
    beginShape();
    curveVertex(435,520);
    curveVertex(435,520);
    curveVertex(460,505);
    curveVertex(472,518);
    curveVertex(465,560);
    curveVertex(445,570);
    
    curveVertex(417,556);
    
    curveVertex(406,526);
    curveVertex(413,495);
    curveVertex(425,470);
    curveVertex(425,470);
    endShape();
    
    //ekor
    fill(0, 255, 255);
    beginShape();
    curveVertex(598,470);
    curveVertex(598,470);
    curveVertex(634,460);
    curveVertex(670,476);
    
    curveVertex(686,517);
    
    curveVertex(670,555);
    curveVertex(642,558);
    curveVertex(609,545);
    curveVertex(609,545);
    endShape();
    
    //ekor dalam
    fill(0, 255, 255);
    beginShape();
    curveVertex(643,503);
    curveVertex(643,503);
    
    curveVertex(640,515);
    
    curveVertex(610,515);
    curveVertex(610,515);
    endShape();
    
    //tangan kanan
    fill(0, 255, 255);
    beginShape();
    curveVertex(540,486);
    curveVertex(540,486);
    curveVertex(525,441);
    
    curveVertex(535,425);
    
    curveVertex(557,432);
    curveVertex(580,460);
    curveVertex(580,460);
    endShape();
    
    //tangan kiri
    beginShape();
    curveVertex(463,462);
    curveVertex(463,462);
  
    curveVertex(460,425);
    
    curveVertex(450,408);
    curveVertex(417,421);
    curveVertex(423,472);
    curveVertex(423,472);
    endShape();
    
    //kaki kanan
    fill(0, 255, 255);
    beginShape();
    curveVertex(530,537);
    curveVertex(530,537);
    curveVertex(506,512);
    curveVertex(480,518);
    
    curveVertex(475,565);
    
    curveVertex(505,576);
    curveVertex(530,570);
    curveVertex(540,560);
    curveVertex(540,560);
    endShape();
    
    
    //Desa Amegakure
    fill(211,211,211);
    quad(427,262,597,294,617,340,404,302);
    //kiri
    fill(211,211,211);
    ellipse(435, 271, 5, 5);
    fill(211,211,211);
    ellipse(422, 282, 5, 5);
    fill(211,211,211);
    ellipse(423, 295, 5, 5);
    
    //garis tengah
    beginShape();
    vertex(440,285);
    vertex(587,312);
    endShape();
    
    //no1
    beginShape();
    vertex(471,280);
    vertex(465,300);
    endShape();
    
    beginShape();
    vertex(496,286);
    vertex(491,305);
    endShape();
    
    //no3
    beginShape();
    vertex(524,291);
    vertex(520,309);
    endShape();
    
    //no4
    beginShape();
    vertex(554,296);
    vertex(550,315);
    endShape();
    
    
    //kanan
    fill(211,211,211);
    ellipse(590, 299, 5, 5);
    fill(211,211,211);
    ellipse(601, 315, 5, 5);
    fill(211,211,211);
    ellipse(604, 331, 5, 5);
    popMatrix();
    strokeWeight(2);
  }
}
