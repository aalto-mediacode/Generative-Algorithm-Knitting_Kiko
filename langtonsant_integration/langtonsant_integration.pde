
int[][] grid;
int x;
int y;
int dir;
int level=0;

int ANTUP = 0;
int ANTRIGHT = 1;
int ANTDOWN = 2;
int ANTLEFT = 3;

PImage ant;


void setup() {
 
  frameRate(15);
  fullScreen();
  //size(1200,800);
  grid = new int[width][height];
  ant = createImage(width,height,RGB);
  ant.loadPixels();
  for (int i = 0; i < ant.pixels.length; i++) {
    ant.pixels[i] = color(0); // background color
  }
  ant.updatePixels();
  x = width/2;
  y = height/2;
  dir = ANTUP;
}

void turnRight() {
  dir++;
  if (dir > ANTLEFT) {
    if(level==0||level==1||level==2||level==3||level==4){
    dir = ANTUP;
    }
    else if(level==5){
    dir = ANTLEFT;
  }
  }
}

void turnLeft() {
  dir--;
  if (dir < ANTUP) {
    dir = ANTLEFT;
  }
}



void draw() {
  background(255);
   ant.loadPixels();
   
  for (int n = 0; n < 100000; n++) {
    int state = grid[x][y];
    if (state == 0) {
      turnRight();
      grid[x][y] = 1;
    } else if (state == 1) {
      turnLeft();
      grid[x][y] = 0;
    }
    switch(level){
    case 0:
      moveForward1();
      break;
    case 1:
      moveForward2();
      break;
    case 2:
      moveForward3();
      break;
    case 3:
      moveForward4();
      break;
    case 4:
      moveForward5();
      break;
    case 5:
      moveForward6();
      break;
  }
  
 
// change color
    //color col = color(random(190,200),random(210,230),random(210,220),125);
    color col = color(random(255),0,random(50,200));;
    if (grid[x][y] == 1) {
      //col = color(random(10));
      col = color(random(190,200),random(210,230),random(210,220),10);
      
    }
    int pix = x + y * ant.width;
    ant.pixels[pix] = col;
   
  }
  
  ant.updatePixels();
  image(ant,0,0);
  
  //saveFrame("output2/LA_#####.png");
}

void mousePressed(){
  grid = new int[width][height];
  ant.loadPixels();
  for (int i = 0; i < ant.pixels.length; i++) {
    ant.pixels[i] = color(0); // background color
  }
  ant.updatePixels();
  x = width/2;
  y = height/2;
  dir = ANTUP;
  
  level++;
  if(level > 5){
    level = 0;
    }
  }
