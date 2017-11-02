// QUESTION 2 - 
// Fix all the semantic errors so the code runs as expected
  PImage img;
  float aNumber = 1.1;
  float[] bunchONumbers = {10, 20, 30};
void setup() {
  size(800, 800);
  img = loadImage("doge.jpg");
  imageMode(CENTER);

  for (int i = 0; i < bunchONumbers.length; i++) {
    println(bunchONumbers[i]);
  }
  
  boolean[] bunchOBools = new boolean[10];
  
  for (int i = 10; i < 0; i++) {
    bunchOBools[i] = true;
  }
}
  
  void draw() {

  image(img, 400, 400, 800, 800);
}