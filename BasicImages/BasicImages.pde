//declare PImage
PImage dog;

void setup() {
  size(800, 600);

  //initialize PImage
  dog = loadImage("mayim.jpg");
}

void draw() {
  background(0);

  //display image
  image(dog, mouseX, mouseY);
}