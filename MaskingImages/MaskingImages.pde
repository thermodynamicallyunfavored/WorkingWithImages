PImage cat;
PImage bh6; 


void setup () {
  size(800, 500);
  cat = loadImage("cat.jpg"); 
  bh6 = loadImage("bh6 poster.jpg"); 
  bh6.mask(cat); //mask bh6 image w/ cat image
}

void draw() {
  background(map(mouseY, 0, height, 0, 255)); 
  image(bh6, 0, 0); // draw bh6 pic
}