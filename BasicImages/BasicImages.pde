PImage cat; 


int sz = 3; 

void setup () {
  size (800, 450); //size of canvas
  cat = loadImage("cat in snow.jpg");
}


void draw () {
  background(218, 238, 245); // background color

  // to create a grid of circles
  for (int x = 0; x< width; x += sz) {
    for (int y = 0; y < height; y += sz) {
      fill(cat.get(x, y));
      noStroke(); // sets no stroke
      ellipse(x, y, sz, sz);
    }
  }
  filter(POSTERIZE, 16);
}


void keyPressed() { //run this each time key is pressed
  if (keyCode == UP) {
    sz +=1;
  } else if (keyCode == DOWN && sz > 2) { // otherwise if key is down and scale factor is greater than .2, decrease sz
    sz -=1;
  }
}