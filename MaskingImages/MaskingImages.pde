//declare PImages
PImage potato;
PImage snow;

void setup() {
  size(800, 600);
  //initialize PImages
  potato = loadImage("potato.jpg");
  snow = loadImage("snowmask.jpg");

//mask the potato image
  potato.mask(snow);
}

void draw() {
  //draw a background
  background(map(mouseY, 0, height, 0, 255));
  
  //display the mapped image
  image(potato, mouseX, mouseY);
}