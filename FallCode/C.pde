class light{
  boolean isHide = false;
  color light = color(255,225,0);
  void LightsShape(float x, float y, float size) {
    if (isHide){
      noFill();
      noStroke();
    } else{
     fill(light); 
     stroke(0);
    }
    
    ellipseMode(CENTER);
    ellipse(x, y, size, size/3);
    Checker(0.5, -0.5);
  }
  
  
  //void DudeShape(float size, float h) {
  
  //  ellipseMode(CENTER);
  //  ellipse(mouseX, h-20, size, size);
  //  ellipse(mouseX, h, size*2, size*2);
  
  //  if (mousePressed) {
  
  //    fill(255, 0, 0);
  
  //    for (int i = 0; i<=5; i++) {
  //      ellipse(mouseX, h-i*3, 10, 10);
  //    }
  //  }
  //}
  void HideLight(){
   isHide = !isHide; 
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
}