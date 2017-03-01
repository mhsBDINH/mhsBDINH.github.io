PImage startbg;
PImage bg;

void setup() {
  size(800, 800, P2D);
  frameRate(120);
  noStroke();
  smooth();
  startbg = loadImage("mania.png");
  bg = loadImage("bg.jpg");
  imageMode(CENTER);
  rectMode(CENTER);
}

ArrayList tile = new ArrayList(); //Tile lists
final int stateStart = 0; //State of Start page
final int stateGame = 1; //State of Game page
final int stateInstruction = 2; //State of Instruction Page
int state = 0; //Set state on start
boolean dev = false; //Dev Mode
boolean win = false; //Boolean for the Winner!! screen
int score = 0; //The score
int btnWidth =  250;
int btnHeight =  100;
float testCircle;
float bpm = 183.5;

void draw()  {
  //State logic
  switch(state) {
    case stateStart:
       setStart();
       break;
    case stateGame:  // here once was a typo (edited)
       setGame();
       break;
    }
  FpsOverlay();
  fill(255);
}

void FpsOverlay() {
  int fpslocY = 720; //loc for FpsOverlay
  int fpslocX = 790; //loc for FpsOverlay
  if (dev  ==  true) { //Check for Dev mode
    fill(#4CAF60);
    textSize(20);
    text(frameRate, fpslocY, fpslocX); //Framerate Count of FpsOverlay
  }
}

void setStart() {
  background(#cc5288);
  startbg.resize(width / 2, height / 2);
  image(startbg, width / 2, height / 3);
  textAlign(CENTER, BOTTOM);
  textSize(20);
  text("Welcome to Mania!", width / 2, height / 1.45);
  text("To play: use the D, F, J, K key to click the tile to the beat", width / 2, height / 1.35);
  //Start and instruction button
  rect(width / 2, height / 1.15, btnWidth, btnHeight);
  fill(0);
  text("Click anywhere to play", width / 2, height / 1.13);
}

void setGame() {
  background(#212121);
  image(bg, width / 2, height / 2);
  fill(49, 49, 49, 100);
  //Column with Letter
  rect(width / 2, height / 2, 50, height);
  rect(width / 2 - 100, height / 2, 50, height);
  rect(width / 2 - 200, height / 2, 50, height);
  rect(width / 2 - 300, height / 2, 50, height);
  fill(#FFFFFF);
  text("D",width / 2, height - 20);
  text("F",width / 2 - 100, height - 20);
  text("J",width / 2 - 200, height - 20);
  text("K",width / 2 - 300, height - 20);
  //Tile logic
  tiles til = new tiles(int(random(0, 3.9)));
  //amount of notes generates per second, frameCount%10=6 notes/second
    if (frameCount % 100 == 60) {
      tile.add(til);
    }

  for (int i=0; i<tile.size(); i++) {
    tiles block = (tiles) tile.get(i);
    block.run();
    block.move();
    if (key  ==  'k'  &&  block.loc.y > height - 370  &&  block.loc.x == width / 2 && keyPressed) {//K key
      block.miss=true;
    }
    if (key == 'j' && block.loc.y > height - 370 && block.loc.x == width / 2 - 100 && keyPressed) {//J Key
      block.miss=true;
    }
    if (key == 'f' && block.loc.y > height - 370 && block.loc.x == width / 2 - 200 && keyPressed) {//F key
      block.miss=true;
    }
    if (key == 'd' && block.loc.y > height - 370 && block.loc.x == width / 2 - 300 && keyPressed) {//D key
      block.miss=true;
    }
    fill(255,0,0);
    rect(width / 2, 650, width, 50);
    if (block.loc.y > 650) {
      tile.remove(i);
      score=0;
    }
    if (block.miss == true) {
      score += block.loc.y > 700 ? 30:block.loc.y > 600 ? 20:10;    //scoring system(you get more points if you do better)
      tile.remove(i);
    }
  }
  fill(#0000aa);
  textAlign(CENTER);
  textSize(100);
  text(score, width / 3 - 15, 450);
}

class tiles {
  PVector loc;
  Boolean miss=false;

  tiles(int i) {
    loc = new PVector(width / 2 - (100 * i), 0);
  }

  void run() {
    col1();
    col2();
    col3();
    col4();
    move();
  }

  void col1() {
    fill(#1d76a9);
    rect(loc.x, loc.y, 100, 50);
  }
  void col2() {
    fill(#23a11d);
    rect(loc.x, loc.y, 100, 50);
  }
  void col3() {
    fill(#23a11d);
    rect(loc.x, loc.y, 100, 50);
  }
  void col4() {
    fill(#1d76a9);
    rect(loc.x, loc.y, 100, 50);
  }
  void move() {
    loc.y+=bpm/60;                   //note speed, changing this will up the difficulity, putting it too high will make
  }                                  //it literally impossible
}

void mousePressed() {
  if (state  ==  0) {
    state = 1;
  }
}

class BeatListener implements AudioListener
{
  private BeatDetect beat;
  private AudioPlayer source;

  BeatListener(BeatDetect beat, AudioPlayer source)
  {
    this.source = source;
    this.source.addListener(this);
    this.beat = beat;
  }

  void samples(float[] samps)
  {
    beat.detect(source.mix);
  }

  void samples(float[] sampsL, float[] sampsR)
  {
    beat.detect(source.mix);
  }
}