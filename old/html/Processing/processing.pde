PFont Roboto;

void setup() {
  size(800,800);
  Roboto = createFont("Roboto", 32);
  textFont(Roboto);
}

void draw() {
background(#f4f4f4);
textFont(Roboto);
fill(#000000);
textSize(35);
textAlign(CENTER, CENTER);
text("Hello World", 350, 350, 100, 100);
}