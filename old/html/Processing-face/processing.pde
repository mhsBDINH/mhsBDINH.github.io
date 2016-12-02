void setup() {
  size(800,800);
  background(#00b4ff);
  noStroke();
}
int PositionX = 400;
int PositionY = 400;
int HeadSize = 300;
int HeadColor = #FEFEFE;
int EyeColor = #ff4b00;
int MouthColor = #ff4b00;
int x,y;

void draw() {
  head();
  eye();
  mouth();
}

void head() {
  fill(HeadColor);
  ellipse(PositionX, PositionY, HeadSize, HeadSize);
}

void eye() {
  int EyeSize = int(HeadSize * 2 / 15);
  fill(EyeColor);
  ellipse(PositionX - EyeSize, PositionY, EyeSize, EyeSize/1);
  ellipse(PositionX + EyeSize, PositionY, EyeSize, EyeSize/1);
}

void mouth() {
  fill(MouthColor);
  arc(PositionX, PositionY + (HeadSize * 3 / 10), HeadSize / 3, HeadSize / 4, 0, PI);
}