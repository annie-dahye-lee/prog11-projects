// Annie Lee
// 1-3B
// Feb 25 2021
// Map function

float testMark; // out of 29
float percent; // corresponding percent

void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  testMark = 46; // out of 29

  // 5 arguments, dependent var,  range of testMark,  range of percent
  percent = map(  testMark,       0, 48,              0, 100);
}
void draw() {
  background(0);
  textSize(100);
  text(percent, 400, 300);
}
