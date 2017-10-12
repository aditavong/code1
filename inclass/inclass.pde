

void setup() {
  size(800, 800);
}

void draw() {
  drawCircle(100, 200, 50, 255, 50, 200, 5);
  drawCircle(300, 200, 80, 200, 0, 0, 4);
  drawCircle(200, 400, 200, 0, 50, 200, 10);
  drawCircle(500, 500, 100, 50, 250, 50, 1);
}


void drawCircle(float x, float y, float d, float r, int g, int b, int sw) {
  strokeWeight(sw);
  fill (r, b, g);
  ellipse(x, y, d, d);
}