//declare variables
PImage dog;
float scaleFactor = .1;
PImage momo;


void setup() {
  size(480, 269);

  //initialize variables
  dog = loadImage("mayim.jpg");
  momo = loadImage("momo.jpg");


  //turn off display of cursor
  noCursor();

  noStroke();
}

void draw() {
  //repeat this 50 times per frame with a for loop
  for (int i = 0; i < 50; i++) {
    int x = int(random(width));
    int y = int(random(height));
    fill(momo.get(x, y));
    ellipse(x, y, 2, 2);
  }
}

void keyPressed() {  //run this once each time I press a key

  //if key is UP arrow, increase scale factor
  if (keyCode == UP) {
    scaleFactor += .1;
  } else if (keyCode == DOWN && scaleFactor > .2) {  //otherwise, if key is down arrow AND scale factor is greater than .2, decrease scale factor
    scaleFactor -= .1;
  }
}