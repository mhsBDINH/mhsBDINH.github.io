void setup() {
  size(800,800);
  background(#00b4ff);
}

int houseWidth=500;
int houseHeight=300;
int houseMove=250;

void draw() {
  // SUN
  fill(#FDB813);
  ellipse(50, 50, 200, 200);
  fill(#ffffff);
  text("(\u00B4\u30FB\u25E1\u30FB\uFF40)", 40, 65); 
  //Roof
  noStroke();
  fill(#eeeeee);
  triangle(400, 365, 585, 500, 215, 500);
  //Base
  noStroke();
  fill(#555555);
  rect(houseMove,500,houseHeight,houseWidth);
  //Top Glass Door
  noStroke();
  fill(#d3ffff);
  rect(400,560, 60, 40);
  //Door
  noStroke();
  fill(#8b4513);
  rect(400,610, 60, 90);
  //Door Knob
  noStroke();
  fill(#000000);
  ellipse(445, 660, 13, 13);
  //Door Knob(center)
  noStroke();
  fill(#ffffff);
  ellipse(445, 660, 5, 5);
  //Grass
  noStroke();
  fill(#005C09);
  rect(0,700,800,100);
  //Glass
  fill(#d3ffff);
  rect(270, 560, 110, 110);
  stroke(0);
  line(325, 560, 325, 670);
  line(380, 615, 270, 615);
}