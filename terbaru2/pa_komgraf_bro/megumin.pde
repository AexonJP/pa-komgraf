
void megumin(float size, int xs, int ys){
  scale(size);
  translate(-280-156+xs,-5+ys);
  fill(0);
  
  
  //wallpaper di topi
  fill(#8d6887);
  strokeWeight(3);
  beginShape();
  vertex(1089,336);
  bezierVertex(1006,250, 906,320,412+338,207);
  bezierVertex(600,320,500,250,406,336);
  endShape();
  
  
  
  //membuat muka
  fill(#fee8d2);
  ellipse(753,236,280,280);
  translate(0,10);
  beginShape();
  vertex(687,252);
  vertex(724,274);
  vertex(686,300);
  endShape();
  beginShape();
  vertex(687+120,252);
  vertex(687+120-37,274);
  vertex(686+120,300);
  endShape();
  translate(0, -10);
  
  
  
  
  
  //membuat senyum
  translate(-11,-11);
  beginShape();
  noFill();
  vertex(750,338);
  bezierVertex(762,342,770,340,775,337);
  endShape();
  bezier(775,331,775,333,778,338,781,339);
  translate(11,11);
  
  
  
  
  
  
  //rambut kanan
  fill(#6e4e53);
  strokeWeight(2);
  beginShape();
  vertex(940,281);
  bezierVertex(950,300,938,325,942,342);
  bezierVertex(930,331,930,327,928,320);
  bezierVertex(928,331,930,332,905,356);
  bezierVertex(928-7,331,930-7,332,918,312);
  bezierVertex(930-7,332,928-7,331,905,356);
  vertex(836,399);
  vertex(850,368);
  bezierVertex(865,330,850,325,859,311);
  bezierVertex(859,318,850,328,840,342);
  bezierVertex(855,310,855,280,846,268);
  bezierVertex(851,275,853,285,851,292);
  bezierVertex(835,283,825,275,816,253);
  bezierVertex(815,265,815,275,830,291);
  bezierVertex(805,285,800,255,799,235);
  vertex(940,281);
  endShape();
  
  
  
  
  //rambut kiri
  beginShape();
  strokeWeight(3);
  vertex(566,283);
  bezierVertex( 567,297,566,315,544,336);
  bezierVertex(576,320,581,287,579,292);
  bezierVertex(570,311,575,324,580,362);
  bezierVertex(586,355,587,320,593,308);
  bezierVertex(588,320,595,330,619,366);
  bezierVertex(600,320,618,293,628,270);
  bezierVertex(618,293,600,320,619,366);
  bezierVertex(620,340,635,280,659,259);
  bezierVertex(657,265,660,290,679,309);
  bezierVertex(675,280,678,265,684,245);
  vertex(709,236);
  bezierVertex(709,250,725,275,735,289);
  bezierVertex(726,267,720,240,727,223);
  bezierVertex(730,260,745,280,759,291);
  vertex(755,280);
  bezierVertex(770,289,776,293,780,291);
  bezierVertex(765,260,780,240,779,227);
  bezierVertex(720,170,600,170,566,283);
  endShape();
  

  
  
  
  //membuat topi
  fill(#e4021e);
  circle(1004,229,50);
  noFill();
  strokeWeight(1);
  
  beginShape();
  strokeWeight(3);
fill(#4c272f);
vertex(406,333);
  bezierVertex(406+80, 250-15 ,406+110, 250-10, 556,209);
  bezierVertex(565, 160, 575, 150 ,620,124);
  bezierVertex(656,55,716,15 ,746,11);
  
  bezierVertex(796,17,866,30,942,124);
  
  bezierVertex(1089-60,250-15,1089-80,250-10,930,209);
  bezierVertex(920, 160, 910, 150 ,866,124);
  bezierVertex(910, 150,920, 160, 930,209);
  
  bezierVertex(1089-110,250-10,1089-90,250-15,1089, 333);
  bezierVertex(1006,250, 906,320,412+338,207);
  bezierVertex(600,320,500,250,406,333);
  
  
  strokeWeight(3);
  
  endShape();
  
  fill(#ffd660);
  beginShape();
  vertex(1089,336);
  bezierVertex(1006,250, 906,320,412+338,207);
  bezierVertex(600,320,500,250,406,333);
  vertex(412,326);
  bezierVertex(500,230, 600,300,412+338,192);
  bezierVertex(901,300,1001,230,1089-5,326);
  endShape();
  noFill();
  //sampe sini membuat topi
  
  
  
  
  //mewarnai oren di topi
  stroke(#f39638);
  strokeWeight(20);
  arc(556+187, 202,368,80, radians(200),radians(340));
  fill(#f39638);
  strokeWeight(0);
  circle(875,150,37);
  circle(890,159,30);
  circle(902,162,20);
  circle(924,198,7);
  circle(910,174,20);
  strokeWeight(7);
  bezier(863,131,873,145,885,155,860,161);
  strokeWeight(0);
  noFill();
  strokeWeight(39);
  stroke(#feae4d);
  arc(741,197,395,130,radians(234),radians(304));
  strokeWeight(30);
  bezier(579,174,579,174,594,154,603,150);
  strokeWeight(18);
  line(593,183,628,158);
  strokeWeight(2);
  stroke(#fffbef);
  arc(767,139,300,50,radians(200),radians(230));
  arc(717,189,300,150,radians(190),radians(215));
  
  
  
  
  
  //garis merah di topi
  strokeWeight(6);
  stroke(#e0001a);
  arc(556+187, 213,374,80, radians(190),radians(350));
  arc(620+123, 139, 265,60,radians(200), radians(340));
  
  
  
  
  
  //garis di topi
  line(560,199,617,130);
  line(617,130,652,179);
  line(652,179,692,113);
  line(692,113,730,172);
  line(730,172,772,112);
  line(772,112,806,174);
  line(806,174,838,119);
  line(838,119,857,182);
  line(857,182,871,131);
  stroke(0);
  strokeWeight(1);
  
  
  
  
  
  //menggambar ulang garis
  beginShape();
  strokeWeight(3);
noFill();
vertex(406,336);
  bezierVertex(406+80, 250-15 ,406+110, 250-10, 556,209);
  bezierVertex(565, 160, 575, 150 ,620,124);
  bezierVertex(656,55,716,15 ,746,11);
  
  bezierVertex(796,17,866,30,942,124);
  
  bezierVertex(1089-60,250-15,1089-80,250-10,930,209);
  bezierVertex(920, 160, 910, 150 ,866,124);
  bezierVertex(910, 150,920, 160, 930,209);
  
  bezierVertex(1089-110,250-10,1089-90,250-15,1089, 333);
  bezierVertex(1006,250, 906,320,412+338,207);
  bezierVertex(600,320,500,250,406,336);
  
  strokeWeight(3);
  
  endShape();
  
  
  
  
  
  //garis kuning di topi
  noFill();
  beginShape();
  vertex(1089,336);
  bezierVertex(1006,250, 906,320,412+338,207);
  bezierVertex(600,320,500,250,406,332);
  vertex(412,326);
  bezierVertex(500,230, 600,300,412+338,192);
  bezierVertex(901,300,1001,230,1089-5,326);
  endShape();
  noFill();
  
  
  line(841,85,866,124);
  //sampe sini menggambar ulang garis
  
  
  
  
  
  
  //kancing kiri
  strokeWeight(0);
  fill(#e0001a);
  circle(672,89,45);
  fill(#f62236);
  circle(672,89,37);
  strokeWeight(1);
  
  
  
  
  
  //kancing kanan
  strokeWeight(0);
  fill(#e0001a);
  circle(819,89,45);
  fill(#f62236);
  circle(819,89,37);
  strokeWeight(1);
  
  
  
  
  
  //x di kancing kiri
  stroke(#ffad5b);
  strokeWeight(5);
  line(660,77,684,101);
  line(685,78,659,100);
  stroke(0);
  
  
  
  
  
  //x di kancing kanan
  stroke(#ffad5b);
  strokeWeight(5);
  line(807,77,831,101);
  line(832,78,806,100);
  stroke(0);
  
  translate(-(-280-156+xs),-(-5+ys));
}



void ikutiMouse(){
  pushMatrix();
  if(mario.x+(mario.lebar/2) > width/2){
    translate(mouseX+(mario.x+(mario.lebar/2) -(width/2)),mouseY);
  }
  else{
    translate(mouseX, mouseY);
  }
  
  megumin(0.15,0,0);
  popMatrix();
}
