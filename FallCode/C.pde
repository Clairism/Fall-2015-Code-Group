class light {

  boolean isHide = false;
  color light = color(255, 225, 0);

  PVector pos;

  light() {

    pos = new PVector(50, 50);
  }

  void LightsShape(float i, float size) {
    if (isHide) {
      noFill();
      //noStroke();
    } else {
      fill(light); 
      stroke(0);
    }

    ellipseMode(CENTER);
    ellipse(pos.x+i*20, pos.y+i*15, size, size/3);
    Checker(0.5, -0.5);
  }

  void Update() {
    if ( mouseX > pos.x && mouseX < pos.x+100 &&
      mouseY > pos.y && mouseY < pos.y+100 ) {
      if (mousePressed) {
        for (int i=0; i<lights.size(); i++) {
          light lightpart =  lights.get(i);
          lightpart.HideLight();
        }
      }
    }
  }

  void HideLight() {
    isHide = !isHide;
  }
}

//void LeftCorner() {


//}

/*
  void LittleDudes(int maxNum) {
 
 for (int i = 1; i<= maxNum; i+=10) {
 DudeShape(20, height-i*5);
 }
 }
 */

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

  if (mousePressed) {

    fill(255, 0, 0);

    for (int i = 0; i<=5; i++) {
      ellipse(mouseX, h-i*3, 10, 10);
    }
  }
}