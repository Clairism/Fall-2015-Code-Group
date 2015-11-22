class flowerImg {

  PImage flower;
  PVector pos, speed;
  float flowerSize;
  float defaultSize;
  float flowerV = 20;
  float x,y;

  flowerImg(float _imgSize) {

    flower = loadImage("flower.png");

    flowerSize = _imgSize; 
    defaultSize = _imgSize; 

    x = random(flowerSize/2, width - flowerSize/2);
    y = random(height/2 + flowerSize/2, height - flowerSize);

    pos = new PVector(x, y);
  }

  void Update() {

    image(flower, pos.x, pos.y, flowerSize, flowerSize);

    if (mousePressed && mouseY>height/2 ) {
      RotatingFlowers();
      flowerSize = defaultSize + 15;
    } else {
      flowerSize = defaultSize;
    }
  }

  void RotatingFlowers() {
    pos.x += cos( (flowerV/180) * TWO_PI * millis());
    pos.y += sin( (flowerV/180) * TWO_PI * millis()*50);
  }
}