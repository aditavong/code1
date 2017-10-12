// use variables to parameterize this drawing
int faceMiddleX = 400;
int faceMiddleY = 400;
int rEyeX = faceMiddleX + 50;
int rEyeY = faceMiddleY - 10;
int lEyeX = faceMiddleY - 50;
int lEyeY = faceMiddleY - 10;
int rEyebrowY = rEyeY - 30;
int lEyebrowY = lEyeY - 10;
int faceWidth = 200;
int faceHeight = 300;
int eyeWidth = 40;
int eyeHeight = 30;
int browWidth = 40;
int browHeight = 10;

void setup() {
  size(800, 800);
  // face
  ellipse(faceMiddleX, faceMiddleY, faceWidth, faceHeight);
  // eyes
  ellipse(rEyeX, rEyeY, eyeWidth, eyeHeight);
  ellipse(lEyeX, lEyeY, eyeWidth, eyeHeight);
  //eyebrows
  // moving the mouse up and down should slightly raise and lower the right eyebrow
  ellipse(rEyeX, mouseY, browWidth, browHeight);
  ellipse(lEyeX, lEyebrowY, browWidth, browHeight);
  // nose


  triangle(400, 200, 200, 600, 300, 600);
  //mouth
  ellipse(400, 600, 200, 100);
  // ears
  ellipse(500, 200, 50, 70);
  ellipse(300, 400, 50, 70);
  // single line for hair - on the left side of the head next to the ear, straight down to the bottom
  line(100, 250, 100, 800);
  // draw single hair next to previous hair, parallel, same size
  line(105, 250, 100, 800);
}


//function syntax:
// draw face function
// void, name of the function, parenthesis, open bracket, close bracket

void draw() {
  background(240);
  drawFace(0, height/2);
  drawFace(200, height/2);
  drawFace(400, height/2);
  drawFace(600, height/2);

  ellipse(500, 500, 500, 500);
  circle(200, 200, 500);
}
void doSomething() {
  int x = 0;
  // println(x);
}

void circle(float x, float y, float d) {
  ellipse(x, y, d, d);
  greyScaleCircle(mouseX, mouseY, 100, mouseX);
}

 void greyScaleCircle(float x, float y, float d, int c) {

 }
void drawFace(float x, float y) {
  float faceMiddleX = x;
  float faceMiddleY = y;
  float rEyeX = faceMiddleX + 50;
  float rEyeY = faceMiddleY - 10;
  float lEyeX = faceMiddleY - 50;
  float lEyeY = faceMiddleY - 10;
  float rEyebrowY = rEyeY - 30;
  float lEyebrowY = rEyeY - 10;
  float faceWidth = 200;
  float faceHeight = 300;
  float eyeWidth = 40;
  float eyeHeight = 30;
  float browWidth = 40;
  float browHeight = 10;

  // face
  ellipse(faceMiddleX, faceMiddleY, faceWidth, faceHeight);
  // eyes
  ellipse(rEyeX, rEyeY, eyeWidth, eyeHeight);
  ellipse(lEyeX, lEyeY, eyeWidth, eyeHeight);
  //eyebrows
  // moving the mouse up and down should slightly raise and lower the right eyebrow
  ellipse(rEyeX, rEyebrowY, browWidth, browHeight);
  ellipse(lEyeX, lEyebrowY, browWidth, browHeight);
}