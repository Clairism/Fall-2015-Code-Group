void windowShape(float x, float y, float size) {

  fill(255, 255, 0);
  ellipseMode(CENTER);
  ellipse(x, y, size, size/3);
}


void leftCorner() {

  for (int i=1; i<=3; i++) {
    windowShape(50+i*20, 50+i*15, 30+i*5);
  }
  
}

void Checker(float maxV, float minV){
 if(rotV >= maxV){
   speed *= -1; 
  } else if (rotV <= minV){
   speed *= -1; 
  }
}