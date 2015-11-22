ArrayList<water> waters = new ArrayList<water>();
ArrayList<light> lights = new ArrayList<light>();

flowerImg[] flowers;

float rotV, speed;

void setup() {
  size(500, 500);
  rotV = 0.1;
  speed = 0.01;

  flowers = new flowerImg[18];

  for (int i = 0; i< flowers.length; i ++) {
    flowers[i]= new flowerImg(i+50);
  }
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


  for (int i = 0; i< flowers.length; i ++) {
    flowers[i].Update();
  }

  DudeShape(20, height-20);
  rotatingLights();
    
}

void rotatingLights() {
  
  translate(15, 15);
  rotate(rotV);
  rotV += speed;

  for (int i=0; i<3; i++) {
    lights.add(new light());
    light lightpart =  lights.get(i);
    lightpart.LightsShape(i, 50+i*5);

    lightpart.Update();
  }
  
}