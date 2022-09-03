// stamps

PImage finn;
boolean stampsOn;

void setup() {
  size(600, 600);
  background(255);
  finn = loadImage("finn.gif");
  stampsOn = false;
}

void draw() {
  fill(0);

  //toolbar
  stroke(0);
  strokeWeight(1);
  fill(100);
  rect(0, 0, 600, 125);

  tactile(0, 0, 100, 100);
  stampsOnOff();
  rect(0, 0, 100, 100);
  image(finn, 0, 0, 120, 120);

  stamps();
}
void mouseDragged() {
  // squiggly line
  if (stampsOn == false) {
    fill(255);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
    // stamps
    image(finn, mouseX, mouseY, 80, 100);
  }
}

void mouseReleased() {
  // stamps button
  if (mouseX > 0 && mouseX < 100 && mouseY > 0 && mouseY < 100) {
    stampsOn = !stampsOn;
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
}

void stamps() {
}

void stampsOnOff() {
  if (stampsOn == true) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
}
