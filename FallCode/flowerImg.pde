class flowerImg {

  PImage flower;
  PVector pos, speed;
  float flowerSize;
  float flowerV = 10;

  flowerImg(float _imgSize) {

    flower = loadImage("flower.png");

    flowerSize = _imgSize; 

    float x = random(flowerSize, width - flowerSize);
    float y = random(height/2 + flowerSize, height - flowerSize);

    pos = new PVector(x, y);
  }

  void Update() {
    //tint(200, 255, 255, random(0, 255));
    image(flower, pos.x, pos.y, flowerSize, flowerSize);

    if (mousePressed && mouseY>height/2 ) {
     // rotate(flowerV*2*PI/360);
      //translate(width-flower.width/2, height-flower.height/3 * 2);
      //translate(pos.x, pos.y);
    // translate(pos.x, pos.y);   // Move coordinate system to center of sketch
  
   // rotate(millis() * 0.001 * TWO_PI / 10.0);   // Move 360 degrees in ten second
  
      RotatingFlowers();
    } else {

      //flowerSize = 50;
      //flowerV =0;
    }
  }

  void RotatingFlowers() {
    pos.x += cos( (flowerV/180) * TWO_PI )*360;
    pos.y += sin( (flowerV/180) * TWO_PI )*360;
  }
}