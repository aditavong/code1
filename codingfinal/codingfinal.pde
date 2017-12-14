import ddf.minim.*;

Minim minim;
AudioPlayer mySound;


void setup() { 
  size(1500, 1500, P3D);
  noStroke();
  rectMode(CENTER);
  minim = new Minim(this);
  mySound = minim.loadFile("DNA.mp3");
  mySound.loop();
}
int n=0;
void draw() {
  background(10, 10, 10);
  translate(width/2, height/2);
  for (int i = 0; i < mySound.bufferSize() - 1; i++) {
    rotateX(n*-PI/9*0.001);
    fill(255, 0, 144);
    float leftLevel = mySound.left.level() * 100; 
    ellipse(i, i, leftLevel, leftLevel);
    rotateY(n*-PI/9*0.002);
    fill(0, 255, 237);
    float rightLevel = mySound.right.level() * 100;
    rect(i, i, rightLevel, rightLevel);
    fill(255, 140, 0);
    ellipse(i, i, leftLevel, leftLevel);
    rotateZ(n*-PI/9*0.006);
    fill(234, 198, 255);
    rect(i, i, rightLevel, rightLevel);
    rotateZ(n*-PI/9*0.004);
  }
  n++;
}
void stop() {
  mySound.close();
  minim.stop();
  super.stop();
}