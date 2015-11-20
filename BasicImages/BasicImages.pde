//declare variables
PImage dog;
float scaleFactor = .1;


void setup() {
  size(800, 600);

  //initialize variables
  dog = loadImage("mayim.jpg");


  //turn off display of cursor
  noCursor();
}

void draw() {

  scaleFactor = random(.01, .9);
  tint(255, 128);
  image(dog, random(width), random(height), dog.width*scaleFactor, dog.height*scaleFactor);
  tint(0, 255, 0, 128);
  image(dog, mouseX, mouseY, dog.width*.5, dog.height*.5);
}

void keyPressed() {  //run this once each time I press a key

  //if key is UP arrow, increase scale factor
  if (keyCode == UP) {
    scaleFactor += .1;
  } else if (keyCode == DOWN && scaleFactor > .2) {  //otherwise, if key is down arrow AND scale factor is greater than .2, decrease scale factor
    scaleFactor -= .1;
  }
}