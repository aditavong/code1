boolean switchState = false;

void setup() {
  size(600, 600);
}

void draw() {
  if (switchState == true) {
    background(255);
  } else { 
    background (0);
  } 
  ellipse(width/2, height/2, 100, 100);
}
void mousePressed() {
  if (dist(mouseX, mouseY, width/2, height/2) < 50) {
    switchState = !switchState;
    //if (switchState == true) {
      //switchState = false;
    //} else { 
      //switchState = true;
    }
  }