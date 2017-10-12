//a star
//dont make it look like a pentagram star buddy
//what 
//shootin star!!!!!!!!
PImage starry;
PImage blackhole;
PImage stars;
PImage shine;
float angle = 0;





void setup() {
  size(1000, 1000);
  starry = loadImage("Starrysky.png");
  imageMode(CENTER);
  blackhole = loadImage("blackhole.png");
  imageMode(CENTER);
  stars = loadImage("stars.png");
  imageMode(CENTER);
  shine = loadImage("shinystar.png");
  imageMode(CENTER);
}

void draw() {
  //change color 2 mouse - shades of blu
  //background(0, 0, 255*mouseX/1000, 1);
  //star background
  //background(0, 0, 1000, 1000);

  pushMatrix();
  translate(width/2, height/2);
  image(starry, 0, 0, 1000, 1000);
  angle = angle + 1;
  //blackhole
  pushMatrix();
  image(blackhole, 200, -300, 300, 150);
  popMatrix();

  //star stars
  //shiny star 
  pushMatrix();
  image(shine, -300, -350, 200, 300);
  rotate(radians(angle));
  angle = angle + 4;
  popMatrix();

  popMatrix();




  pushMatrix(); 
  //star
  star(mouseX, mouseY);
  stroke(255, 255, 0);
  strokeWeight(35.0);

  popMatrix();
}

void star(float x, float y) {
  float xOffset1 = -50;
  float xOffset2 = 0;
  float xOffset3 = 50;
  float yOffset1 = -40;
  float yOffset2 = 10;
  float yOffset3 = 85;
  float x1 = x + xOffset1;
  float x2 = x + xOffset2;
  float x3 = x + xOffset3;
  float y1 = y + yOffset1;
  float y2 = y + yOffset2;
  float y3 = y + yOffset3;
  // x1, y2; x3, y3; x2, y1; x1, y3; x3, y2

  line(x1, y2, x3, y3);
  line(x3, y3, x2, y1);
  line(x2, y1, x1, y3);
  line(x1, y3, x3, y2);
  line(x3, y2, x1, y2);
}