ArrayList<water> waters = new ArrayList<water>();

float rotV, speed;

void setup() {
  size(500, 500);
  rotV = 0.1;
  speed = 0.01;
}

void draw() {

  background(255);
  if (mousePressed) {
    waters.add(new water());
  }
  for (int i=0; i<waters.size(); i++) {
    water part = waters.get(i);
    part.update();
    if (part.alive == false) {
      waters.remove(i);
    }
  }


  LittleDudes(20);

  translate(15, 15);
  rotate(rotV);
  rotV += speed;
  LeftCorner();
  Checker(0.5, -0.5);
}