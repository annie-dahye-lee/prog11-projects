// Annie Lee
// 1-4B
// GUI project

// color palette
color plum = #2F3559;
color magenta = #9A5071;
color mediumPink = #E394A7;
color babyPink = #F1BBBB;
color beige = #E6D8CB;
color white = #FFFFFF;

// variables for color selection
color selectedColor;

void setup() { // setup ===========================
  size(800, 600);
  strokeWeight(5);
  selectedColor = magenta;
} // setup end ================================  ====

void draw() { // draw =============================
  background(beige);

  //buttons
  tactile(100, 100, 50);
  fill(babyPink);
  circle(100, 100, 100); // (x, y, radius)

  tactile(100, 300, 50);
  fill(mediumPink);
  circle(100, 300, 100);

  tactile(100, 500, 50);
  circle(100, 500, 100);

  // indicator
  stroke(plum);
  fill(selectedColor);
  square(300, 100, 400); // (x, y, w+h for a square)
}
// draw end ======================================

void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) { // 50 = radius
    stroke(magenta);
  } else {
    stroke(plum);
  }
} // tactile end ======================================

void mouseReleased() { // when mouse is clicked & released function
  // babyPink button
  if (dist(100, 100, mouseX, mouseY) < 50) { // 50 = radius
    selectedColor = babyPink;
  }

  // mediumPink button
  if (dist(100, 300, mouseX, mouseY) < 50) { // 50 = radius
    selectedColor = mediumPink;
  }

  // magenta button
  if (dist(100, 500, mouseX, mouseY) < 50) { // 50 = radius
    selectedColor = magenta;
  }
}// mouseReleased end ======================================
