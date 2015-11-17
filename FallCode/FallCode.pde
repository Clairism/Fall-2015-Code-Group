float rotV = 0.1;
float speed = 0.01;

void setup() {
  size(500, 800);
}


void draw() {
  background(0);

  LittleDudes(20);
  
  
  translate(15,15);

  rotate(rotV);
  rotV += speed;
  LeftCorner();
  
  Checker(0.5,-0.5);
}