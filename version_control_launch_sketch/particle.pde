class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  int r;
  int g;
  int b;
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
    r = int(random(1, 256));
    g = int(random(1, 256));
    b = int(random(1, 256));
    
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    fill(r, g, b);
    ellipse(position.x, position.y, 10, 10);
  }
}
