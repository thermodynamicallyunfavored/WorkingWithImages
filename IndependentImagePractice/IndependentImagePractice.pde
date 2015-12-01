PImage tae, jimin, run, seaside, bubbles; //declare variables

int sz = 5; 
float a,b; 

void setup () {
  size (800, 600); 
  tae = loadImage("taehyung.jpg");
  image(tae, 0, 0); //draws taehyung as bg initially
  filter(DILATE); 
  jimin = loadImage("jimin.jpg"); 
  run = loadImage("run run run.jpg"); 
  seaside = loadImage("seaside.jpg");
  bubbles = loadImage("bubbles.jpg");
  jimin.mask(bubbles);
  a = random(700,800);
  b = random(450,600); 
}

void draw () {
  //create a grid of circles
  background(map(mouseY, 0, height, 0, 255));
  for (int x = 0; x < width; x += sz) { //frame rate for this is too fast rn, need to fix it
    for (int y = 0; y < height; y += sz) { 

      fill(jimin.get(x, y)); //replaces taehyung with jimin
      noStroke(); 
      ellipse(x, y, sz, sz);
    }
  }
  filter(POSTERIZE, 64); //jimin only made up of 16 colors
  if (mouseX < 300 && mouseY > 350) {
    image(seaside, a,b);
  }
}
