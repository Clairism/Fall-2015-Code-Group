void LightsShape(float x, float y, float size) {
  fill(255, 255, 0);
  ellipseMode(CENTER);
  ellipse(x, y, size, size/3);
}


void LeftCorner() {

  for (int i=1; i<=3; i++) {
    LightsShape(50+i*20, 50+i*15, 30+i*5);
  }
}

void Checker(float maxV, float minV) {
  if (rotV >= maxV) {
    speed *= -1;
  } else if (rotV <= minV) {
    speed *= -1;
  }
}

void DudeShape(float size, float h) {

  ellipseMode(CENTER);
  ellipse(mouseX, h-20, size, size);
  ellipse(mouseX, h, size*2, size*2);
}


void LittleDudes(int maxNum) {

  for (int i = 1; i<= maxNum; i+=10) {
    DudeShape(20, height-i*5);
  }
}