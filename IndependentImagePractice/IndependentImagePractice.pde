PImage tae; //declare variables
PImage jimin;
PImage run;
PImage seaside;
int sz = 2; 

void setup () {
  size (800, 600); 
  tae = loadImage("taehyung.jpg");
  jimin = loadImage("bubbles.jpg"); 
  run = loadImage("run run run.jpg"); 
  seaside = loadImage("seaside.jpg");
  image(tae, 0, 0); //draws taehyung as bg initially
}

void draw () {
  //create a grid of circles
  for (int x = 0; x < width; x += sz){
    for (int y = 0; y < height; y += sz){
    fill(jimin.get(x,y)); //replaces taehyung with jimin
    noStroke(); 
    ellipse(x, y, 3, 3);
    }
  }
  
}
