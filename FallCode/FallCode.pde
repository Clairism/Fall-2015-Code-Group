float rotV = 0.1;
float speed = 0.01;

void setup() {
  size(500, 800);
}


void draw() {
  background(0);


  translate(15,15);

  rotate(rotV);
  rotV += speed;
  leftCorner();
  
  Checker(0.5,-0.5);
}