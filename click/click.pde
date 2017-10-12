int counter = 0;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  fill(0);
  textSize(32);
  text(counter, 100, 100);
  counter ++;

  if (mouseX > width/2 || counter > 200) { //OR timer over 300 frames
  if (mouseX > width/2) {
    fill(0, 0, 255);
  }
  if (counter > 200) {
    fill(0, 255, 0);
  }
    ellipse(width/2, height/2, 200, 200);
  }
}

 void mousePressed() {
   //anything in here happen when the mouse button is pushed
   counter = 0;
 }