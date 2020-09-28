// Alan Fung
// Sept 2020
// 1-2B

// Sketchbook Animation Project


//variable names
int planeX;
int blink;
int on;

//start
void setup() {
  size(800, 600, P2D);
  planeX = 0;
}


void draw() {

  //sky

  background(27, 77, 126);

  fill(5, 85, 24);
  strokeWeight(0);
  rect(0, 350, 800, 170);
  fill(210);
  rect(0, 520, 800, 80);

  // text
  textSize(17);
  textAlign(CENTER, CENTER);
  fill(0);
  text("I enjoy nature and have a keen interest in aviation. I am from Canada. - Alan Fung", 380, 560);

  // Inuksuk shadow
  on = on + 1;
  if (on < 150) {
    fill(9, 36, 16);
    quad(680, 415, 710, 415, 650, 390, 680, 390);
    quad(630, 413, 657, 413, 600, 390, 627, 390);
    quad(600, 385, 680, 385, 670, 375, 585, 375);
    quad(550, 370, 680, 370, 670, 360, 530, 360);
  }
  if (on > 300) {
    fill(55, 160, 11);
    quad(680, 415, 710, 415, 650, 390, 680, 390);
    quad(630, 413, 657, 413, 600, 390, 627, 390);
    quad(600, 385, 680, 385, 670, 375, 585, 375);
    quad(550, 370, 680, 370, 670, 360, 530, 360);
  }
  if (on == 300) {
    on = 0;
  }
  //lights
  fill(0);
  strokeWeight(1);
  line(700, 440, 700, 460);
  line(660, 440, 660, 460);

  strokeWeight(0);
  fill(250, 255, 8);
  ellipse(700, 440, 20, 20);
  ellipse(660, 440, 20, 20);

  on = on + 1;
  if (on < 150) {
    fill(250, 255, 8);
    ellipse(700, 440, 20, 20);
    ellipse(660, 440, 20, 20);
  }
  if (on > 150) {
    fill(255);
    ellipse(700, 440, 20, 20);
    ellipse(660, 440, 20, 20);
    ;
  }
  if (on == 300) {
    on = 0;
  }


  //Inuksuk
  fill(224, 5, 30);
  strokeWeight(0);
  // rounded rectangles (Inuksuk)
  rect (657, 275, 25, 25, 7);
  rect (590, 305, 160, 20, 10);
  rect (630, 330, 80, 30, 3);
  rect (630, 365, 27, 48, 2);
  rect (680, 365, 30, 50, 2);


  //pizza
  fill(224, 177, 5);
  ellipse(400, 420, 57, 50);
  fill(240, 64, 29);
  ellipse(400, 420, 47, 40);
  fill(255, 255, 255);
  stroke(255);
  strokeWeight(1);
  line(410, 425, 405, 410);
  line(383, 412, 397, 410);
  line(384, 420, 400, 424);
  strokeWeight(0);
  fill(206, 0, 3);
  ellipse(415, 420, 7, 7);
  ellipse(400, 433, 7, 7);
  ellipse(397, 417, 7, 7);


  //mountains
  fill(7, 72, 15);
  strokeWeight(0);
  triangle(0, 350, 300, 350, 120, 200);
  triangle(0, 350, 200, 350, 40, 150);
  triangle(0, 350, 400, 350, 300, 230);

  // snow on mountains?
  fill(229, 232, 230);
  triangle(40, 150, 33, 180, 65, 180);
  ellipse(41, 176, 15, 15);
  ellipse(51, 177, 17, 17);
  //snow2 on mountain
  triangle(120, 200, 105, 220, 143, 220);
  ellipse(118, 216, 16, 16);
  ellipse(129, 217, 14, 14);

  //tree 1
  fill(152, 91, 91);
  rect(170, 400, 15, 50);
  fill(36, 224, 72);
  ellipse(170, 400, 20, 20);
  ellipse(165, 390, 25, 25);
  ellipse(180, 380, 17, 17);
  ellipse(166, 390, 10, 10);
  ellipse(190, 400, 19, 19);
  ellipse(180, 375, 18, 18);
  ellipse(190, 390, 23, 23);
  ellipse(180, 390, 20, 20);

  //tree2
  fill(152, 91, 91);
  rect(120, 410, 15, 50);
  fill(36, 224, 72);
  ellipse(120, 410, 20, 20);
  ellipse(115, 400, 25, 25);
  ellipse(130, 390, 17, 17);
  ellipse(116, 400, 10, 10);
  ellipse(140, 410, 19, 19);
  ellipse(130, 385, 18, 18);
  ellipse(140, 400, 23, 23);
  ellipse(130, 400, 20, 20);

  //plane function
  plane(planeX, 100);
  planeX = planeX + 3;
  if (planeX > 1200) {
    planeX = -200;
  }
}

void plane(int x, int y) {
  pushMatrix();
  translate(x, y);

  //Engines
  fill(44, 255, 84);
  rect(-10, 30, 50, 20, 5);
  rect(-15, -30, 50, 20, 5);

  // Plane wings1
  strokeWeight(1);
  fill(84, 93, 86);
  strokeWeight(0);
  stroke(0);
  triangle(-15, 12, 60, 12, -40, -70);

  // Plane
  fill(160);
  strokeWeight(0);
  triangle(-140, 0, -75, 0, -155, -70);
  fill(214, 212, 212);
  ellipse(0, 0, 300, 40);

  //text
  textSize(19);
  textAlign(CENTER, CENTER);
  float angle1 = radians(60);
  rotate(angle1);
  fill(39, 105, 137);
  text("Alan", -90, 95);

  // Independent Research: https://processing.org/examples/textrotation.html

  float angle2 = radians(-60);
  rotate(angle2);

  //Plane cockpit
  fill(13, 176, 250);
  ellipse(130, -5, 35, 7);

  //Plane windows
  ellipse(70, 0, 9, 12);
  ellipse(50, 0, 9, 12);
  ellipse(30, 0, 9, 12);
  ellipse(10, 0, 9, 12);
  ellipse(-10, 0, 9, 12);
  ellipse(-30, 0, 9, 12);
  ellipse(-50, 0, 9, 12);

  //doors
  fill(255);
  rect(-85, -12, 12, 25, 3);
  rect(85, -12, 12, 25, 3);

  //plane wing2
  fill(84, 93, 86);
  strokeWeight(0);
  triangle(-20, 12, 40, 12, -40, 100);

  //plane lights
  blink = blink + 1;

  //plane lights (green)

  if (blink < 50) {
    fill(23, 255, 8);
    strokeWeight(0);
    ellipse(-38, 97, 6, 6);
  }
  if (blink > 50) {
    fill(255);
    strokeWeight(0);
    ellipse(-38, 97, 6, 6);
  }
  if (blink == 100) {
    blink = 0;
  }

  // plane lights(red)

  if (blink < 50) {
    fill(255, 8, 41);
    ellipse(-40, -70, 5, 5);
  }
  if (blink > 50) {
    fill(255);
    strokeWeight(0);
    ellipse(-40, -70, 5, 5);
  }
  if (blink == 100) {
    blink = 0;
  }
  popMatrix();
}
