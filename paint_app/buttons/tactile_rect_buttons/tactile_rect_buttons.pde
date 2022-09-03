// Annie Lee
// 1-4B
// Tactile rect buttons

color darkBlue = #00A7C5;
color jake = #FFC620;
color lumpySpacePrincess = #BC70FF;
color lpsOutline = #894AB5;
color iceKing = #A6DEF9;
color canvas = #BFD7DB;

int toggle;

void setup() {
  size(800, 800);
  background(canvas);
  strokeWeight(5);
  textSize(30);
  
  toggle = 1;
}


void draw() {
  stroke(lpsOutline);
  fill(lumpySpacePrincess);
  rect(100, 100, 200, 100);
  
  if (toggle > 0) {
    guidelines();
  }
}

void mouseReleased() {
  //            x             x + w             y            y + h
  if (mouseX > 100 && mouseX < 300 && mouseY > 200 && mouseY < 200) {
    toggle = toggle * -1; // on off switch for guidelines
  }
}

void guidelines() {
  
}
