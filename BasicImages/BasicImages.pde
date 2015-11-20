//declare variables
PImage dog;
float scaleFactor = .1;
PVector loc, vel;

void setup() {
  size(800, 600);
  
  //initialize variables
  dog = loadImage("mayim.jpg");
    loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
  
  //turn off display of cursor
  noCursor();
}

void draw() {
  background(0);
  
  //display image, with size scaled
  image(dog, loc.x, loc.y, dog.width*scaleFactor, dog.height*scaleFactor);
  
  //move the image around
  loc.add(vel);
  if (loc.x > width) {
    loc.x = 0;
  } else if (loc.x < 0) {
    loc.x = width;
  }
  if (loc.y > height) {
    loc.y = 0;
  } else if (loc.y < 0) {
    loc.y = height;
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