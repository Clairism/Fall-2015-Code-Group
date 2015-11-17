ArrayList<water> waters = new ArrayList<water>();

void setup() {
  size(500, 500);
  waters.add(new water());
}


void draw() {
  if(mousePressed){
    waters.add(new water());
  }
  background(255);
  for (int i=0; i<waters.size(); i++) {
    water part = waters.get(i);
    part.update();
    if(part.alive == false){
    waters.remove(i);
    
    }
  }
}