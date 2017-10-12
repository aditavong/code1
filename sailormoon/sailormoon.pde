PImage moon; 
float angle = 0;



void setup() {
  size(1000, 1000);
  moon = loadImage("sailormoon.png");
  imageMode(CENTER);
  
}

void draw() {
  background(0,0, 255*mouseX/1000, 1);
  translate(width/2, height/2);
  rotate(radians(angle));
  image(moon, 0, 0, mouseX, mouseY);
  angle = angle + 1;
  
  
  
}