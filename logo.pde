void logo() {
  textAlign(LEFT);
  int randFont = int(random(fonts.length));
  textFont(fonts[randFont], textSize);
  
  //DRAW MAGICAL
  float z= margin/2;
  for (int i = 0; i < m.length(); i++) {
    char s = m.charAt(i);
     //textAlign(LEFT,BOTTOM);
    int randFont1 = int(random(fonts.length));
    textFont(fonts[randFont1], textSize);
    //text(s, z, height/2-textSize/2.2);
    text(s, z, height/2+textSize/4);
    z  = z+ textWidth(s)-1.5;   
  }
  //DRAW OPERATORS
  float y= margin;
  for (int i = 0; i < o.length(); i++) {
    char s = o.charAt(i);
    int randFont2 = int(random(fonts.length));
    textFont(fonts[randFont2], textSize);
    text(s, y, height/2+textSize/2.2);
    y = y+ textWidth(s);
    
  }
}
