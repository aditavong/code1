ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  size(1000, 600);
  background(50);
}

void draw() {
  background(80);
  particles.add(new Particle(width/2, height/2));

  for (int i = 0; i < particles.size(); i++) {
    Particle p = particles.get(i);
    p.addAttract(mouseX, mouseY, 10);
    //p.addRepel(mouseX, mouseY, 10);
    //addRepel(900,500,10);
    Particle p1 = new Particle(width/2, height/2);
    p1.addRepel(900, 500, 10);
    Particle p2 = new Particle(width/2, height/2);
    p2.addRepel(100, 500, 10);
    Particle p3 = new Particle(width/2, height/2);
    p3.addRepel(400, 500, 10);
    Particle p4 = new Particle(width/2, height/2);
    p4.addRepel(-900, -500, 10);


    p.update();
    p.display();

    if (p.life < 0) {
      particles.remove(i);
    }
  }
}