// Annie Lee
// Feb 6, 2021
// 1-4B
// Robot Assignment 1

// background color
background(#87cefa);

// graphics window
size(1000, 800); 
strokeWeight(2);

// clouds
fill(#FFFFFF);
stroke(#FFFFFF);

ellipse(50, 50, 290, 150);
ellipse(120, 130, 200, 150);
ellipse(220, 50, 200, 150);
ellipse(250, 100, 100, 80);
ellipse(300, 50, 200, 150);

ellipse(700, 300, 200, 150);
ellipse(800, 370, 200, 150);
ellipse(800, 250, 300, 150);
ellipse(900, 300, 100, 150);
ellipse(1000, 350, 250, 250);

ellipse(0, 390, 180, 190);
ellipse(0, 450, 300, 200);
ellipse(0, 550, 200, 150);

// neck
fill(#C2C6C6);
stroke(#000000);
rect(460, 250, 90, 20);
rect(435, 270, 140, 40);

// beam stick
fill(#C2C6C6);
rect(490, 30, 25, 100);

// beam stand
fill(#DEE0E0);
ellipse(503, 113, 68, 60);

// beam bulb
fill(#ffff33);
ellipse(503, 23, 54, 46);

// head
fill(#DEE0E0);
rect(400, 100, 200, 150);

// eyes
fill(#FFFFFF);
ellipse(450, 160, 80, 80);
ellipse(550, 165, 60, 60);

// mouth
fill(#DEE0E0);
ellipse(505, 200, 22, 20);

stroke(#DEE0E0);
rect(490, 180, 30, 20);

// left ear 
fill(#ffff33);
stroke(#000000);
strokeWeight(2);
line(398, 180, 390, 185);
line(385, 179, 390, 185);
line(383, 178, 378, 185);
line(378, 185, 370, 182);

ellipse(361, 185, 15, 35);

// right ear 
fill(#ffff33);
line(625, 180, 630, 187);
line(615, 187, 623, 180);
line(611, 182, 615, 187);
line(601, 185, 609, 182);

ellipse(640, 185, 15, 35);

// left bicep
fill(#DEE0E0);
rect(320, 300, 40, 200);

// left arm
rect(310, 400, 60, 170);

// left shoulder
fill(#C2C6C6);
triangle(375, 300, 375, 350, 300, 300);

// right bicep
fill(#DEE0E0);
rect(640, 300, 40, 200);

// right arm
fill(#DEE0E0);
rect(632, 400, 60, 170);

// right shoulder
fill(#C2C6C6);
triangle(580, 300, 698, 300, 580, 370);

// left leg
fill(#DEE0E0);
rect(390, 500, 90, 260);

// left joint
fill(#C2C6C6);
rect(390, 635, 90, 25);

// left foot
fill(#DEE0E0);
rect(380, 750, 110, 30);

fill(#C2C6C6);
rect(380, 775, 110, 5);

// right leg
fill(#DEE0E0);
rect(520, 500, 90, 260);

// right joint
fill(#C2C6C6);
rect(520, 635, 90, 25);

// right foot
fill(#DEE0E0);
rect(510, 750, 110, 30);
fill(#C2C6C6);
rect(510, 775, 110, 5); 

// body
fill(#DEE0E0);
rect(375, 300, 250, 250);

// heart monitor
strokeWeight(3);
fill(#A2FFE7);
rect(390, 320, 220, 140, 7);

// heart monitor lines
stroke(#08C997);
strokeWeight(5);
line(394, 400, 410, 400);
line(410, 400, 435, 435);
line(435, 435, 460, 360);
line(460, 360, 470, 400);
line(470, 400, 480, 380);
line(480, 380, 500, 440);
line(500, 440, 520, 400);
line(520, 400, 540, 400);
line(540, 400, 565, 350);
line(565, 350, 580, 425);
line(580, 425, 590, 370);
line(590, 370, 606, 420);

// vent
stroke(#000000);
strokeWeight(3);
fill(#8E9392);
rect(450, 480, 113, 15, 12);
rect(450, 510, 113, 15, 12);

// buttons
fill(#F50F0F);
ellipse(410, 500, 40, 40);
ellipse(590, 500, 40, 40);

// left claw
strokeWeight(2);
fill(#DEE0E0);
ellipse(340, 580, 90, 80);

fill(#87cefa);
stroke(#87cefa);
ellipse(340, 610, 90, 80);

// right claw
fill(#DEE0E0);
stroke(#000000);
ellipse(665, 580, 90, 80);

fill(#87cefa);
stroke(#87cefa);
ellipse(665, 610, 90, 80);
