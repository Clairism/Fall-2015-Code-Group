class flowerImg {

  PImage flower;
  PVector pos, speed;
  float flowerSize;
  float flowerV = 20;

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
      RotatingFlowers();
    } else {
    }
  }

  void RotatingFlowers() {
    pos.x += cos( (flowerV/180) * TWO_PI * millis());
    pos.y += sin( (flowerV/180) * TWO_PI * millis()*50);
  }
}