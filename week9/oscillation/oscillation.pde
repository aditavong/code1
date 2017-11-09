float x[] = new float[100];
float angle;
float rate;
float amplitude;
//float r;
//float g;
//float b;

void setup() {
  size(700, 700);
  noStroke();
// ?? ? ??
  angle = 0;
  //longer
  amplitude = 25;
  //sped
  rate = 0.7;
}

void draw() {
  background(255);
  noStroke();
  angle -= rate;
  for (int i = 0; i < x.length; i++) {
    x[i] = width/2 + sin((angle + i) * 0.1) * amplitude;
    fill(map(i, 0, x.length, 0, 230));
    float yPos = map(i, 0, x.length, 30, height-100);
    float yPos2 = map(i, 45, x.length, 30, height-300);
    ellipse(x[i], yPos, 10, 50);
    ellipse(x[i], yPos2, 10, 50);
  }
}