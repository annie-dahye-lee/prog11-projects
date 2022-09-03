// Annie Lee
// 1-4B
// Adventure Time Paint App!

// variables ============================

// color palette

color finn = #0098CA;
color finnBackpack = #A9DD88;
color finnHat = #FCFDFF;
color finnSkin = #FAD1BD;

color jake =#FFC620;
color bubblegum = #F5CBF3;
color bubblegum2 = #FC61FF;
color iceKing = #A6DEF9;

color evilGuy = #14002B;
color evilGuy2 = #6DAA9A;
color evilGuy3 = #CDD8AD;
color bmoColor = #5FAD93;
color marcelline = #991522;
color marcelline2 = #392B8A;
color lspOutline = #894AB5;
color lsp = #BC70FF;
color yellow = #F5E058;

color canvas = #BFD7DB; // background
color toolbar = #7AC0C0;

color selectedColor; // variable for color selection

float sliderY; // slider movement variable
float thickness; // line stroke thickness & stamp size

// stamps
PImage finnStamp;
PImage jakeStamp;
PImage lspStamp;
PImage bmo;

PFont font; 

// boolean for if true, draw stamp, else draw squiggly line
boolean finnOn;
boolean jakeOn;
boolean bmoOn;
boolean lspOn; 
// variables end ============================

void setup() { // setup ============================
  size(900, 800);
  background(canvas);
  selectedColor = #ffffff;
  sliderY = 570;
  thickness = 3;

  boolean finnOn = false;
  boolean jakeOn = false;
  boolean bmoOn = false;
  boolean lspOn = false; 

  // loading stamp images
  finnStamp = loadImage("finn.gif");
  jakeStamp = loadImage("jake.png");
  lspStamp = loadImage("lsp.png");
  bmo = loadImage("bmo.png");

  font = createFont("Adventure Time Logo.ttf", 20); // font
} // setup end ============================

void draw() { // draw ============================
  newLoadSave();
  buttonToolbar();
  buttons();
  colorIndicator();
  controlSliderShapes();
  stampsToolbar();
  stamps();
  text();
} // draw end ============================

void buttonToolbar() { // buttonToolbar ============================
  fill(toolbar);
  noStroke();
  rect(0, 50, 120, 700, 35);
} // buttonToolbar end ============================

void stampsToolbar() { // stampsToolbar ============================
  fill(toolbar);
  noStroke();
  rect(150, 650, 700, 150, 55);
} // stampsToolbar end ============================

void buttons() { // buttons ============================
  buttonTactile(30, 90, 20);
  fill(finn);
  circle(30, 90, 40);

  buttonTactile(30, 140, 20);
  fill(finnHat);
  circle(30, 140, 40);

  buttonTactile(30, 180, 20);
  fill(finnBackpack);
  circle(30, 190, 40);

  buttonTactile(30, 240, 20);
  fill(finnSkin);
  circle(30, 240, 40);

  buttonTactile(80, 90, 20);
  fill(jake);
  circle(80, 90, 40);

  buttonTactile(80, 140, 20);
  fill(bubblegum);
  circle(80, 140, 40);

  buttonTactile(80, 190, 20);
  fill(iceKing);
  circle(80, 190, 40);

  buttonTactile(80, 240, 20);
  fill(bubblegum2);
  circle(80, 240, 40);

  buttonTactile(30, 310, 20);
  fill(lspOutline);
  circle(30, 310, 40);

  buttonTactile(30, 360, 20);
  fill(lsp);
  circle(30, 360, 40);

  buttonTactile(30, 410, 20);
  fill(yellow);
  circle(30, 410, 40);

  buttonTactile(80, 310, 20);
  fill(evilGuy3);
  circle(80, 310, 40);

  buttonTactile(80, 360, 20);
  fill(evilGuy2);
  circle(80, 360, 40);

  buttonTactile(80, 410, 20);
  fill(evilGuy);
  circle(80, 410, 40);
} // buttons end ============================

void buttonTactile(int x, int y, int r) { // tactile ============================
  if (dist(x, y, mouseX, mouseY) < r) { // r = radius
    strokeWeight(1);
    stroke(#ffffff);
  } else {
    noStroke();
  }
} // tactile end ============================

void mouseReleased() { // mouseReleased ============================
  if (dist(30, 90, mouseX, mouseY) < 20) {
    selectedColor = finn;
    fill(selectedColor);
  }
  if (dist(30, 140, mouseX, mouseY) < 20) {
    selectedColor = finnHat;
    fill(selectedColor);
  }
  if (dist(30, 190, mouseX, mouseY) < 20) {
    selectedColor = finnBackpack;
    fill(selectedColor);
  }
  if (dist(30, 240, mouseX, mouseY) < 20) {
    selectedColor = finnSkin;
    fill(selectedColor);
  }
  if (dist(30, 310, mouseX, mouseY) < 20) {
    selectedColor = lspOutline;
    fill(selectedColor);
  }
  if (dist(30, 360, mouseX, mouseY) < 20) {
    selectedColor = lsp;
    fill(selectedColor);
  }
  if (dist(30, 410, mouseX, mouseY) < 20) {
    selectedColor = yellow;
    fill(selectedColor);
  }
  if (dist(80, 90, mouseX, mouseY) < 20) {
    selectedColor = jake;
    fill(selectedColor);
  }
  if (dist(80, 140, mouseX, mouseY) < 20) {
    selectedColor = bubblegum;
    fill(selectedColor);
  }
  if (dist(80, 190, mouseX, mouseY) < 20) {
    selectedColor = iceKing;
    fill(selectedColor);
  }
  if (dist(80, 240, mouseX, mouseY) < 20) {
    selectedColor = bubblegum2;
    fill(selectedColor);
  }
  if (dist(80, 310, mouseX, mouseY) < 20) {
    selectedColor = evilGuy3;
    fill(selectedColor);
  }
  if (dist(80, 360, mouseX, mouseY) < 20) {
    selectedColor = evilGuy2;
    fill(selectedColor);
  }
  if (dist(80, 410, mouseX, mouseY) < 20) {
    selectedColor = evilGuy;
    fill(selectedColor);
  }
} // mouseReleased end ============================

void colorIndicator() { // colorIndicator ============================
  strokeWeight(thickness);
  stroke(0);
  fill(selectedColor);
  rect(30, 475, 60, 60, 5);
}
void tactileStamps(int x, int y, int w, int h) { // tactileStamps ============================
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(canvas);
  }
} // colorIndicator end ============================

void stamps() { // stamps ============================
  fill(255);
  tactileStamps(170, 655, 160, 170);
  finnOnOff();
  rect(170, 655, 160, 170, 10);
  image(finnStamp, 160, 610, 180, 180);

  fill(255);
  tactileStamps(350, 660, 120, 140);
  jakeOnOff();
  rect(350, 660, 120, 140, 10);
  image(jakeStamp, 360, 660, 100, 140);

  fill(255);
  tactileStamps(510, 670, 120, 120);
  bmoOnOff();
  rect(510, 670, 120, 120, 10);
  image(bmo, 510, 680, 110, 110);

  fill(255);
  tactileStamps(670, 660, 140, 130);
  lspOnOff();
  rect(670, 660, 140, 130, 10);
  image(lspStamp, 680, 660, 120, 120);
} // stamps end ============================

void mousePressed() { // mousePressed  ============================
  controlSlider(); 
  // rect(170, 655, 160, 170, 10);
  if (mouseX > 170 && mouseX < 330 && mouseY > 655 && mouseY < 825) {
    finnOn = !finnOn;
    jakeOn = false;
    bmoOn = false;
    lspOn = false;
  } 
  //rect(350, 660, 120, 140, 10);
  if (mouseX > 350 && mouseX < 470 && mouseY > 660 && mouseY < 800) {
    jakeOn = !jakeOn;
    finnOn = false;
    bmoOn = false;
    lspOn = false;
  }
  //  rect(510, 670, 120, 120, 10);
  if (mouseX > 510 && mouseX < 630 && mouseY > 670 && mouseY < 790) {
    bmoOn = !bmoOn;
    finnOn = false;
    jakeOn = false;
    lspOn = false;
  }
  //rect(670, 660, 140, 130, 10);
  if (mouseX > 670 && mouseX < 810 && mouseY > 660 && mouseY < 790) {
    lspOn = !lspOn;
    finnOn = false;
    jakeOn = false;
    bmoOn = false;
  }

  if (finnOn == true && jakeOn == false && bmoOn == false && lspOn == false) {
    image(finnStamp, mouseX, mouseY, (170 + thickness * 5), (170 + thickness * 5)); //finn stamp
  }
  if (jakeOn == true && finnOn == false && bmoOn == false && lspOn == false) {
    image(jakeStamp, mouseX, mouseY, (100 + thickness * 5), (140 + thickness * 5)); //jake stamp
  }
  if (bmoOn == true && finnOn == false && jakeOn == false && lspOn == false) {
    image(bmo, mouseX, mouseY, (100 + thickness * 5), (100 + thickness * 5)); //bmo stamp
  }
  if (lspOn == true && finnOn == false && jakeOn == false && bmoOn == false) {
    image(lspStamp, mouseX, mouseY, (120 + thickness * 5), (120 + thickness * 5)); //lsp stamp
  }

  // new button
  if (mouseX > 0 && mouseX < 80 && mouseY > 0 && mouseY < 40) {
    background(canvas);
  }

  // save button  
  if (mouseX > 90 && mouseX < 170 && mouseY > 0 && mouseY < 40) {
    selectOutput("Choose a name for your beautiful artwork!", "saveImage");
  }

  // load button 
  if (mouseX > 180 && mouseX < 360 && mouseY > 0 && mouseY < 40)
    selectInput("Pick an image to load!", "openImage");
} // mousePressed end ============================

void mouseDragged() { // mouseDragged ============================
  controlSlider(); 
  if (finnOn == false && jakeOn == false && bmoOn == false && lspOn == false) {
    //squiggly line
    strokeWeight(thickness);
    stroke(selectedColor);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } 
  if (finnOn == true && jakeOn == false && bmoOn == false && lspOn == false) { //finn stamp
    image(finnStamp, mouseX, mouseY, (170 + thickness * 5), (170 + thickness * 5));
  }
  if (jakeOn == true && finnOn == false && bmoOn == false && lspOn == false) {
    image(jakeStamp, mouseX, mouseY, (100 + thickness * 5), (140 + thickness * 5)); //jake stamp
  }
  if (bmoOn == true && finnOn == false && jakeOn == false && lspOn == false) {
    image(bmo, mouseX, mouseY, (100 + thickness * 5), (100 + thickness * 5)); //bmo stamp
  }
  if (lspOn == true && finnOn == false && jakeOn == false && bmoOn == false) {
    image(lspStamp, mouseX, mouseY, (120 + thickness * 5), (120 + thickness * 5)); //lsp stamp
  }
} // mouseDragged end ============================

void finnOnOff() { // finnOnOff ============================
  if (finnOn == true && jakeOn == false && bmoOn == false && lspOn == false) {
    strokeWeight(3);
    stroke(finn);
  } else {
    noStroke();
  }
} // finnOnOff end ============================

void jakeOnOff() { // jakeOnOff ============================
  if (jakeOn == true && finnOn == false && bmoOn == false && lspOn == false) {
    strokeWeight(3);
    stroke(jake);
  } else {
    noStroke();
  }
} // jakeOnOff end ============================

void bmoOnOff() { // bmoOnOff end ============================
  if (bmoOn == true && finnOn == false && jakeOn == false && lspOn == false) {
    strokeWeight(3.5);
    stroke(bmoColor);
  } else {
    noStroke();
  }
} // bmoOnOff end ============================

void lspOnOff() { // lspOnOff ============================
  if (lspOn == true && finnOn == false && jakeOn == false && bmoOn == false) {
    strokeWeight(3);
    stroke(lsp);
  } else {
    noStroke();
  }
} // lspOnOff end ============================

void controlSliderShapes() { // controlSliderShapes ============================
  //                     range     desired range of thickness
  thickness = map(sliderY, 570, 660, 0, 20); // map function

  tactileSlider(1, 570, 90);
  strokeWeight(0.5);
  rect(56, 570, 7, 90, 30);

  strokeWeight(thickness);
  stroke(selectedColor);
  circle(60, sliderY, 15);
} // controlSliderShapes end ============================

void controlSlider() { // controlSlider ============================ 
  // the y coordinates of the line    // slider can only move in specific y region
  if (mouseY > 570 && mouseY < 660 && mouseX > 55 && mouseX < 65) {
    sliderY = mouseY; // move circle to pressed cursor
  }
} // controlSlider ============================ 

void tactileSlider(int x, int y, int h) { // tactileSlider ============================
  if (dist(x, y, mouseX, mouseY) < h) { // h = height
    stroke(0);
    strokeWeight(10);
  } else {
    noStroke();
  }
} // tactileSlider end ============================ 

void tactileNewLoadSave(int x, int y, int w, int h) { // tactileStamps ============================
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(marcelline2);
    strokeWeight(2);
  } else {
    noStroke();
  }
} // tactileNewLoadSave end ============================

void newLoadSave() { // newLoadSave ============================
  noStroke();
  tactileNewLoadSave(0, 0, 80, 40);
  fill(255);
  rect(0, 0, 80, 40, 10); // new button

  noStroke();
  tactileNewLoadSave(90, 0, 80, 40);
  fill(255);
  rect(90, 0, 80, 40, 10); // file save button

  noStroke();
  tactileNewLoadSave(180, 0, 80, 40);
  rect(180, 0, 80, 40, 10); // load button
} // newLoadSave end ============================

void text() { // text ============================
  // font and text
  textAlign(CENTER, CENTER);
  fill(marcelline);
  textSize(50);
  textFont(font);
  text("new", 40, 20);
  text("save", 130, 20);
  text("load", 220, 20);
} // text end ============================

void saveImage(File f) { // saveImage ============================
  if (f != null) {
    PImage canvas = get(120, 42, width-120, height-200);  
    canvas.save(f.getAbsolutePath());
  }
} // saveImage end ============================

void openImage(File f) { // openImage ============================
  if (f != null) {
    //KLUDGE
    int n = 0;
    while (n < 10) {
      PImage pic = loadImage(f.getPath());
      image(pic, 0, 0);
      n = n + 1;
    }
  }
} // openImage end ============================
