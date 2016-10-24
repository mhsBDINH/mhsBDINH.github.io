void setup() {
 size(500, 500);
 frameRate(60);
  //surface.setResizable(true);
}

//position variables
int posX= 325;
int posY = 35;
int posA = 250;
int posB = 50;
int posC = 385;
int posD = 60;
// speed variables
int speedX = 1/35;
int speedY = 0;

void draw() {
  posX = posX + speedX;
  posY = posY + speedY;
  posA = posA + speedX;
  posB = posB + speedY;
  posC = posC + speedX;
  posD = posD + speedY;

  // SKY
  fill(255);
  background(#91bbff);
  // SUN
  fill(#FAFF0F);
  ellipse(50, 50, 150, 150);
  line(40, 20, 40, 60);
  line(80, 20, 80, 55);
  arc(60, 75, 50, 50, 0, PI);
  // FENCE
  fill(#c48a3e);
  rect(0, 375, 15, 75); // Start LS
  rect(16, 375, 15, 75);
  rect(32, 375, 15, 75);
  rect(48, 375, 15, 75);
  rect(64, 375, 15, 75);
  rect(80, 375, 15, 75);
  rect(96, 375, 15, 75);
  rect(112, 375, 15, 75);
  rect(128, 375, 15, 75);
  rect(144, 375, 6, 75); // End LS
  rect(350, 375, 15, 75); // Start RS
  rect(366, 375, 15, 75);
    rect(382, 375, 15, 75);
      rect(398, 375, 15, 75);
        rect(414, 375, 15, 75);
          rect(430, 375, 15, 75);
            rect(446, 375, 15, 75);
              rect(462, 375, 15, 75);
                rect(478, 375, 15, 75);
                  rect(494, 375, 6, 75); // End RS
  fill(#91bbff);
  ellipse(88, 410, 5, 5);
  // TREES
      noStroke();
  fill(#7a5c11);
  rect(425, 400, 20, 100);
  fill(#429900);
  triangle(485, 400, 435, 300, 390, 400);
  triangle(470, 370, 435, 270, 403, 370);
  triangle(460, 340, 435, 250, 412, 340);
  // GRASS
  fill(#429900);
  rect(0, 450, 500, 50);
  // PATHWAY
  fill(#c66a3f);
  beginShape();
  vertex(220, 450);
  vertex(190, 500);
  vertex(250, 500);
  vertex(280, 450);
  endShape();
  // HOUSE
  fill(#968b8e);
  rect(150, 250, 200, 200);
  // CHIMNEY
  fill(#a3a3a3);
  rect(160, 150, 50, 125);
  // CLOUDS
  fill(#efefef);
  ellipse(posX, posY, 230, 60);
  ellipse(posA, posB, 130, 40);
  ellipse(posC, posD, 100, 30);
  // ROOF
  fill(#a82f00);
  triangle(250, 150, 385, 285, 115, 285);
  // DOOR
  fill(#8e5e0b);
  rect(220, 360, 60, 90);
  // KNOB
  fill(#050500);
  ellipse(265, 410, 10, 10);
  // BUSH
  fill(#4fa548);
  ellipse(185, 428, 30, 30);
  ellipse(315, 428, 30, 30);
  fill(#adaaa6);
  rect(160, 425, 50, 25);
  rect(290, 425, 50, 25);
  // WINDOWS
  fill(#d3ffff);
  rect(160, 300, 50, 50);
  rect(290, 300, 50, 50);
  stroke(0);
  line(185, 300, 185, 350);
  line(160, 325, 210, 325);
  line(315, 350, 315, 300);
  line(290, 325, 340, 325);
}