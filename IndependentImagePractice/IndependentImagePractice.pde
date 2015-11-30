PImage tae; //declare variables
PImage jimin;
PImage run;
PImage seaside;
float x = random(width); 
float y = random(height); 

void setup () {
  size (800, 600); 
  tae = loadImage("taehyung.jpg");
  jimin = loadImage("bubbles.jpg"); 
  run = loadImage("run run run.jpg"); 
  seaside = loadImage("seaside.jpg");
}

void draw () {
  image(tae, 0, 0); //draws taehyung
  while (mouseX < width && mouseY < height) {
    fill(jimin.get(x, y)); //replaces taehyung with jimin
    ellipse(x, y, 3, 3);
  }
}