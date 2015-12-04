PImage tae, jimin, seaside, bubbles, bubbles2, sky, run; //declare variables
int sz = 5; 

int count = 700; //makes 50 bubbles arrays
PVector [] loc = new PVector [count]; //to make arrays
PVector [] vel = new PVector [count]; 
float sz2 [] = new float [count]; 




void setup () {
  size (800, 600); //canvas size larger for taehyung
  tae = loadImage("taehyung.jpg");
  image(tae, 0, 0); //draws taehyung as bg initially
  filter(DILATE); 
  jimin = loadImage("jimin.jpg"); 
  seaside = loadImage("seaside.jpg");
  bubbles = loadImage("bubbles.jpg");
  jimin.mask(bubbles); //create mask for jimin with bubbles
  bubbles2 = loadImage("bubbles 2.jpg"); 
  sky = loadImage("sky.jpg"); 
  seaside.mask(sky); //create mask for seaside with sky
  run = loadImage("run run run.jpg"); 

  for (int i = 0; i < count; i ++) { // for arrays
    //initialize variables
    loc[i] = new PVector (random(650, 800), random(450, 600)); //starts off in random region on lower right hand side of screen
    vel[i] = PVector.random2D(); //gives speed magnitude of one
    vel[i].mult(random(3, 10)); //multiply by random speed between 3 and 10
    sz2[i] = random(2, 60); //random diamater between 2-60
  }
}

void draw () {
  //create a grid of circles
  background(map(mouseY, 0, height, 0, 255));
  for (int x = 0; x < width; x += sz) { //frame rate for this too fast rn
    for (int y = 0; y < height; y += sz) { 

      fill(jimin.get(x, y)); //replaces taehyung with jimin
      noStroke(); //no stroke
      ellipse(x, y, sz, sz); //draw random ellipse
    }
  }
  filter(POSTERIZE, 64); //jimin only made up of 64 colors


  for (int i = 0; i < count; i ++) { // for arrays
    if (mouseX < 300 && mouseY > 350) { // if mouse in lower left corner of screen

      //then fill up with bubbles wiwth the img bubbles2

      fill(bubbles2.get(300, 239)); //want to fill up with random spots from bubbles2.jp but?? 
      ellipse(loc[i].x, loc[i].y, sz2[i], sz2[i]); //draw ellipse 
      loc[i].add(vel[i]); // gives ellipse velocity

      //just want to blur bubbles img but it affects jimin.jpg and sometimes makes the code not run

      if (loc[i].x < 100 && loc[i].y < 50) { //if one of the bubbles reaches top left corner
        image(seaside, loc[i].x, loc[i].y); //draw seaside
        if (loc[i].x < 10 && loc[i].y < 10) { //if seaside reaches top left corner
          image(run, 0, 0); //draw run
        }
      }
    }
  }
}
