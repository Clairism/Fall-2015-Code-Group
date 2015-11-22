class flowerImg {

  PImage flower;
  PVector pos, speed;
  float flowerSize;
  float flowerV = 0;

  flowerImg(float _imgSize) {

    flower = loadImage("flower.png");

    flowerSize = _imgSize; 

    float x = random(flowerSize, width - flowerSize);
    float y = random(height/2 + flowerSize, height - flowerSize);

    pos = new PVector(x, y);
  }

  void Update() {

    rotate(flowerV);

    image(flower, pos.x, pos.y, flowerSize, flowerSize);
    tint(200, 255, 255, random(0, 255));

    if (mousePressed && mouseY>height/2 ) {
      translate(width/2, height/3 * 2);
      flowerV = 2;
      flowerV += 0.2;
    } else {

      flowerSize = 50;
      flowerV =0;
    }
  }
}