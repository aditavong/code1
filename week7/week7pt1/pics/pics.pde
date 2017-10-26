int IMG_NUM = 3;

PImage[] spook = new PImage [IMG_NUM];

int verySpooky = 0;

void setup() {
  size(800, 800);
  imageMode(CENTER);

  for (int i = 0; i < spook.length; i++) {
    spook[i] = loadImage("spooky"+i+".png");
  }
}

void draw() {
  background(0);

  image(spook[verySpooky], width/2, height/2);

  if (frameCount % 10 == 0) {
    verySpooky++;
  }

  if (verySpooky >= spook.length) {
    verySpooky = 0;
  }
}