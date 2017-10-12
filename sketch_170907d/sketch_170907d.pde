float angle = 0;
float x = 0;
float w = 500;
float h = 10;

void setup() {
  size(500, 500);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  //background(240);
  translate(x + 1, height/2);
  angle = angle + 1;
  //println(x);
  x = x + 1;
  w = w - 1;
  //h = h + 0.5;

  rotate(radians(angle));
  //fill(0); //greyscale
  //fill(255, 50); //greyscale tranparent
  //fill (x, h, w); //
  fill(255, w, 255, 10);
  //function overloading

  stroke(255, 50);


  rect(0, 0, w, h);

  // line(0, 0, 0, height);
  //line(0, 0, width, 0);
  //ellipse(100, 100, 50, 50);
}