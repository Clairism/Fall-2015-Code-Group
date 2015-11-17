class water {

  PVector pos, vel;
  int size;
  color water = color(0,100,255);
  float gravity, friction;
  float starttime = millis();
  boolean alive;

  water() {
    pos = new PVector(mouseX,mouseY);
    vel = new PVector(0, 0);
    size = 25;
    gravity = 0.2;
    friction = -0.7;
    alive = true;
    
  }

  void update() {
    if(millis()<starttime+5000){
    fill(water);
    rectMode(CENTER);
    rect(pos.x, pos.y, size, size);
    move();
    }else{
    alive = false;
    }
  }

  void move() {
    vel.y += gravity;
    pos.x += vel.x;
    pos.y += vel.y;
    if (pos.x + size/2 > width) {
      pos.x = width - size/2;
      vel.x *= friction;
    } else if (pos.x - size/2 < 0) {
      pos.x = size/2;
      vel.x *= friction;
    }
    if (pos.y + size/2 > height) {
      pos.y = height - size/2;
      vel.y *= friction;
    } else if (pos.y - size/2 < 0) {
      pos.y = size/2;
      vel.y *= friction;
    }
  }
}