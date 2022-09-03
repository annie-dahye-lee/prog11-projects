// squiggly lines

void setup() {
  size(600, 600);
  background(255); // when in setup, it keeps background without erasing
                   // if in draw, background erases
}


void draw() {
  
}

void mouseDragged() {
  strokeWeight(5);
 
  //   pmouse: previous mouse coordinates last frame
  line(pmouseX, pmouseY, mouseX, mouseY);
}
