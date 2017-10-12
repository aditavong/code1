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