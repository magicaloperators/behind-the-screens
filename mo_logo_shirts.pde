import processing.svg.*;

PGraphics magic;

PFont [] fonts = new PFont[9];
int format = 1748;
float  textSize = format/6;
float margin = textSize/1.5;
//float marginHalf = margin/2;

String m = "magical_operators";
String o = "";

boolean record;


void setup() {
  size(1748, 1748);
  colorMode(HSB);
  frameRate(1);
  println(textSize);
  magic = createGraphics(width, height);
}

void draw() {
  if (record) {
    beginRecord(SVG, "LOGO/logoShape/frame-####.svg");
  }
  int randColor = int(random(colors.length));
  int randPastell = int(random(pastells.length));
  int textColor = black; // colors[randColor], pastells[randPastell]
  int backColor = 255;

  background(colors[randColor]);
   fill(pastells[randPastell]);
   stroke(pastells[randPastell]);
  
  technical();

  //fill(pastells[randPastell]);
  //stroke(textColor);
  fonts();
  //logo();


  /*
  if(frameCount%3 == 1){
   technical();
   }
   if (frameCount%3 == 0){
   experimental();
   }
   //magical2(randPastell);
   if(frameCount%3 == 2) {
   magical();
   }*/

  //rect(0, height/2, width, 2);
  //saveFrame("Sticken/experimental2####.png");
  if (record) {
    endRecord();
    record = false;
  }
}

// Use a keypress so thousands of files aren't created
void mousePressed() {
  record = true;
}
