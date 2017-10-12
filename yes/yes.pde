float x = 0;
float y = 0;
//variables 4 bg
int r = 242;
int g = 99;
int b = 123;

int sWeight = 10;

void setup() {
  size(800, 800);
  rectMode(CENTER);
  // noStroke();
} 


void draw() {
  //gradient bg
  for (int i = 0; i < width; i++) {
    stroke (r, i, b);
    line(0, i, width, i);
  //background(255);
  //lines
  stroke(255, 178, 232);
  strokeWeight(5);

  x = 50;
  while ( x < width) {
    line(x, 0, x, height);
    x = x + 100;
  }
  
  y = 100;
  while ( y < height) {
    line( 0, y, width, y);
    y = y + 50;
  }
}
}