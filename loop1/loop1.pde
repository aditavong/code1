void setup() {
  size(800, 800);
  noLoop();
}


void draw() {
  loop();
 // println("hi");
}

void loop() {
  int x = 0;
  while (x < 10) {
    print(x);
    x += 1;
  }
}