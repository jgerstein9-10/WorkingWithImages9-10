//declare PImage
PImage purrito;

void setup() {
  size(800, 600);
  //initialize PImage
  purrito = loadImage("cat.jpg");
}

void draw() {
  //display an image
  image(purrito, 0, 0, width, height);
  //use filter to filter the canvas
  filter(POSTERIZE, 2);
}