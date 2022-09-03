// Annie Lee
// 1-4B
// sliders&mapfn

color darkBlue = #00A7C5;
color jake = #FFC620;
color lumpySpacePrincess = #BC70FF;
color lpsOutline = #894AB5;
color iceKing = #A6DEF9;
color canvas = #BFD7DB;

float sliderY;
float shade;
float thickness;

void setup() {

  sliderY = 100;
  shade = 0;
  thickness = 0;

  size(800, 800);
}

void draw() {
  background(canvas);

  //                 range of sliderY     desired range of shade
  shade = map(sliderY, 100, 700, 0, 255); // map function

  //                range of sliderY    desired range of thickness
  thickness = map(sliderY, 100, 700, 0, 50); // map function

  strokeWeight(5);
  stroke(lpsOutline);
  fill(lpsOutline);
  line(400, 100, 400, 700);

  strokeWeight(thickness);
  stroke(shade);
  fill(shade);
  circle(400, sliderY, 50);
}

void mouseDragged() {
  controlSlider();
}

void mousePressed() {
  controlSlider();
}

void controlSlider() {
  // the y coordinates of the line    // slider can only move in specific y region
  if (mouseY > 100 && mouseY < 700 && mouseX > 375 && mouseX < 425) {
    sliderY = mouseY; // move circle to mouse
  }
}
