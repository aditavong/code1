boolean switchState = false;
float backX = 0;
float backY = 0;
float backW = 800;
float backH = 600;
PShape back;


void setup() {
  size(800, 800);
  //background(0, 0, 0);
  back = createShape(RECT, 0, 0, 800, 600);
}




void draw() { 
  if (switchState) {
   back.setFill (color(134, 227, 232));
   shape(back);
  } else {
   back.setFill(color(0, 0, 0));
   shape(back);
  }
  noStroke();

  //the great pyramids of giza
  fill(193, 160, 62);
  triangle(300, 600, 550, 300, 800, 600);
  triangle(0, 600, 280, 400, 560, 600); 
  //cheese
  fill(244, 229, 66);
  ellipse(150, 200, 200, 200);
  //saaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaand
  fill(142, 122, 59);
  rect(0, 600, 800, 200);

}

void mousePressed() {
 if (mouseX > backX && mouseX < backX + backW &&
        mouseY > backY && mouseY < backY + backH) {
      switchState = !switchState; 
        }
  
}