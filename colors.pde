//COLORS
color rot = #FF4700;
color aquamarin = #2B536B;
color gold = #43434D; //gold
color azur = #8423FF; //azur
color blau = #3B5CD4; //blau
color gift = #3011E9; //gift
color pinkpink = #FF45E1; //pinkpink
color black =  #000000; //black
color dunkelgrau =  #242331; //dunkelgrau
color pink =  #FF5B84; // pink
color dunkelgrün = #008171; // dunkelgrün
color lila = #9074FF; //lila


int[] colors = {
  rot, aquamarin, lila, gold, azur, blau, gift, pinkpink, black, dunkelgrau, pink, dunkelgrün, lila
};

//PASTELLS
color rose = #FAB3A9; //rose
color mint =  #D6F9DD; //mint
color hellblau =  #D3D8FF; //hellblau
color sand =  #FAF3F2; //sand
color lime =  #DEFF5D; //lime
color rosa =  #F5E3F8; //rosa
color türkis =  #C6FFE5; //türkis
color senf =  #FFF8BB;//senf
color lachs =  #FFD3CA; //lachs
color offwhite =  #FBFBFB; //offwhite

int[] pastells = {
  rose, mint, hellblau, sand, lime, rosa, //midblue,
  türkis, senf, lachs, offwhite
};


void colorfill() {
  int randColor = int(random(colors.length));
  background(colors[randColor]);

  int randPastell = int(random(pastells.length));
  fill(pastells[randPastell]);
  stroke(pastells[randPastell]);
}

void bwFill() {
  fill(0);
  stroke(0);
  background(255);
}
