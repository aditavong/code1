import processing.pdf.*;

PImage chimmy;

void setup() {
  size(564, 705);
  beginRecord(PDF, "jimin.pdf");
  chimmy = loadImage("jimin.jpg");
  noStroke();
}


void draw() {
  background(0);

  int widthStep = 10;
  int heightStep = 10;

  for (int i = 0; i <= height; i += heightStep) {
    for (int j = 0; j <= width; j += widthStep) {

      color c = chimmy.get(j, i);



      float r = red(c);
      float g = green(c);
      float b = blue(c);

      float brightness = (r+g+b)/3;

      float offset = map(brightness, 0, 150, 5, 0);
      
      stroke(map(brightness, 0, 200, 100, 250));
      point(j, i+offset);
    }
  }
}
void keyPressed() {
 if (key == 'q') {
   endRecord();
   exit();
 }
}