float angle = 0;
float x = 0;


void setup() {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(200);

  //save the starting coordinate system
  pushMatrix();
  translate(mouseX, mouseY);
  scale(0.8);
  rotate(radians(angle));
  angle = angle - 1;
  fill(255);

  rect(0, 0, 200, 200);
  //go back to that saved starting coordinate system
  
  pushMatrix();
  translate(150, 150);
  rotate(radians(-angle * 2));
  rect(0, 0, 100, 120);
  
  pushMatrix();
  translate(80, 80);
  rotate(radians(angle * 3));
  rect(0, 0, 40, 40);
  popMatrix();
  
  
  
  popMatrix();
  
  
  
  popMatrix();

  //fill(255, 20, 100);
  //ellipse(0, 0, 100, 100);

  //ellipse(-400, -400, 200, 200);
  //rect(-800, -800, -150, 150);
}