PVector p1, p2, p3, p4;
PVector h1, h2, h3, h4, h5, h6, h7, h8;
int v;

void magical() {
  //DRAW "magical" SHAPE


  p1 = new PVector( margin, margin);
  p2 = new PVector(width-margin, margin);
  p3 = new PVector(width-margin, height-margin);
  p4 = new PVector(margin, height-margin);


  h1 = new PVector(random( margin, width/2), random(margin, height/2));
  h2 = new PVector(random( width/4*2, width-margin), random(height/4, height/2));
  h3 = new PVector(random( width/4*2, width-margin), random(height/4, height/2));
  h4 = new PVector(random( width/4*2, width-margin), random(height/4*2, height-margin));
  h5 = new PVector(random( width/4*2, width-margin), random(height/4*2, height-margin));
  h6 = new PVector(random( width/4, width/2), random(height/4*2, height-margin));
  h7 = new PVector(random( margin, width/2), random(height/4*2, height-margin));
  h8 = new PVector(random( width/4, width/2), random(height/4, height/2));

  noFill();
  strokeWeight(textSize/30);

  bezier (p1.x, p1.y, h1.x, h1.y, h2.x, h2.y, p2.x, p2.y);
  bezier (p2.x, p2.y, h3.x, h3.y, h4.x, h4.y, p3.x, p3.y);
  bezier (p3.x, p3.y, h5.x, h5.y, h6.x, h6.y, p4.x, p4.y);
  bezier (p4.x, p4.y, h7.x, h7.y, h8.x, h8.y, p1.x, p1.y);
}

void magical2(int pos) {

  p1 = new PVector( margin, margin);
  p2 = new PVector(width-margin, margin);
  p3 = new PVector(width-margin, height-margin);
  p4 = new PVector(margin, height-margin);

  float a = map(mouseX, 0, width, 0, width/2);
  float b = map(mouseY, 0, height, 0, height/2);
  float c = map(mouseX, 0, width, width/2, width);
  float d = map(mouseY, 0, height, height/2, height);

  h1 = new PVector(a, b);
  h2 = new PVector(c, mouseY);
  h3 = new PVector(c, b);
  h4 = new PVector(c, d);
  h5 = new PVector(c, d);
  h6 = new PVector(a, d);
  h7 = new PVector(mouseX, d);
  h8 = new PVector(a, b);

  //beginShape();
  magic.beginDraw();
  if ((keyPressed==true)&&(key == 'c')) {
    v++;
  }
  if (v>=colors.length) {
    v=0;
  }
  magic.background(colors[v]);
  magic.noFill();
  magic.strokeWeight(textSize/30);
  if (frameCount%30==0) {
    magic.stroke(pastells[pos]);
  }
  magic.bezier (p1.x, p1.y, h1.x, h1.y, h2.x, h2.y, p2.x, p2.y);
  magic.bezier (p2.x, p2.y, h3.x, h3.y, h4.x, h4.y, p3.x, p3.y);
  magic.bezier (p3.x, p3.y, h5.x, h5.y, h6.x, h6.y, p4.x, p4.y);
  magic.bezier (p4.x, p4.y, h7.x, h7.y, h8.x, h8.y, p1.x, p1.y);
  magic.endDraw();
  image(magic, 0, 0);
  /*
point(h1.x, h1.y);
   point(h2.x, h2.y);
   point(h3.x, h3.y);
   point(h4.x, h4.y);
   point(h5.x, h5.y);
   point(h6.x, h6.y);
   point(h7.x, h7.y);
   point(h8.x, h8.y);
   */
}

void experimental() {
  p2 = new PVector(width-margin, height-margin);
  p4 = new PVector(margin, height-margin);

  h1 = new PVector(random(width/2, width-margin), -width/5);
  h4 = new PVector(random(margin, width/2), -width/5);
  h5 = new PVector(random(margin, width/2-margin), height/5*3);
  h6 = new PVector(random(width/2,width-margin), height/5*3);

  //DRAW "technical" SHAPE
  beginShape();
  //noFill();
  //colorfill();
  strokeWeight(textSize/30);
  bezier (p2.x, p2.y, h1.x, h1.y, h4.x, h4.y, p4.x, p4.y);
  bezier (p4.x, p4.y, h5.x, h5.y, h6.x, h6.y, p2.x, p2.y);
  endShape(CLOSE);
}

void technical() {
  p1 = new PVector(random(margin, width-margin), margin);
  p2 = new PVector (width-margin, random(height/3, height-margin));
  p3 = new PVector (random(margin, width/2), height-margin);
  p4 = new PVector (margin, random(height/2, height-margin));
  //DRAW "experimental" SHAPE
  noFill();
  strokeWeight(textSize/30);
  beginShape();
  vertex(p1.x, p1.y);
  //vertex(p1.x, p4.y);
  vertex(p2.x, p2.y);
  vertex(p3.x, p3.y);
  vertex(p4.x, p4.y);
  endShape(CLOSE);
}
