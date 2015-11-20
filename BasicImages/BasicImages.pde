//declare variables
PImage dog;
float scaleFactor = .1;
PImage momo;
int sz = 5;

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
  //create a grid of rectangles
  for (int x = 0; x < width; x+= sz) {
    for (int y = 0; y < height; y += sz) {
      fill(momo.get(x, y));
      rect(x, y, sz, sz);
    }
  }
}

void keyPressed() {  //run this once each time I press a key

  //if key is UP arrow, increase sz
  if (keyCode == UP) {
    sz += 1;
  } else if (keyCode == DOWN && sz > 2) {  //otherwise, if key is down arrow AND scale factor is greater than .2, decrease sz
    sz -= 1;
  }
}