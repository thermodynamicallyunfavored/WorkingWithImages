PImage tae; //declare variables
PImage jimin;
PImage run;
PImage seaside;


void setup (){
  size (800,600); 
  tae = loadImage("taehyung.jpg");
  jimin = loadImage("bubbles.jpg"); 
  run = loadImage("run run run.jpg"); 
  seaside = loadImage("seaside.jpg"); 
  
}

void draw (){
  image(run, mouseX, mouseY); //test
}
  