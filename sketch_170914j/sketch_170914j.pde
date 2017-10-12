int r = 255;
int g = 255;
int b = 150;

color c = color(r, g, b);

//2 kinds of function behavior?
//1 - side effects
//2 return value (pure function)

void doSomething() {
  println("hi");
}

float multByTwo(float x) {
  return x * 2;
}

// specifiying the return type of a function
int setToOne() {
  return 1;
}

String setToHello() {
  return "hello";
}


void setup() {
  size(600, 600);
  int test = setToOne();
  println(test);

  String h = (setToHello);
  println(h);

  float n = multByTwo(1546567);
  println(n);
}


void draw() {
  //background(r, g, b);
  // fill(r, g, b);
  //fill(r, g, b, 10);
  fill(c);
  rect(100, 100, width-200, height-200);
}