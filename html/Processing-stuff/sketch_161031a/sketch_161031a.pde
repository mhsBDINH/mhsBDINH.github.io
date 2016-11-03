PImage img;

void setup()
{
  size(500, 500);
  frameRate(120);
  img = loadImage("osu-logo@2x.png");
  fill(myFill);
  
}

color myFill = color (#fefefe);
int y = 0;
int x = 0;

int speedY = 10;
int speedX = 5;


void draw(){
  x = x + speedX;
  y = y + speedY;
  image(img, x, y, 50, 50);
  if (x > width) {
    speedX = speedX * -1;
  }
  else if (x < 0) {
    speedX = speedX * -1;
  }
  if (y > height)
  {
    speedY = speedY * -1;
  } else if (y < 0)
  {
    speedY = speedY * -1;
  }
  if (keyPressed) {
    if (key == 'z' || key == 'Z') {
      x = mouseX;
      y = mouseY;
    }
  }
  if (keyPressed) {
    if (key == 'x' || key == 'X') {
      x = mouseX;
      y = mouseY;
    }
  }
}

void mouseClicked() {
  x = mouseX;
  y = mouseY;
}