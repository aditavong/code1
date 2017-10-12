void setup() {
  size(600, 600);
  rectMode(CENTER);
} 


void draw() {
  background(220);
  rect(125, 200, 350, 200);

  if (mouseX > 125 && mouseX < 475 &&
    mouseY > 200 && mouseY < 400) {
    fill(random(255), random(255), random(255));
  } else { 
    fill(255);
  }
  rect(125, 200, 350, 200);
}