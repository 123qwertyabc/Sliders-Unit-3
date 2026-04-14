// Palette
color darkPurple = #230F2B;
color pink = #F21D41;
color lightGreen = #EBEBBC;
color medGreen = #BCE3C5;
color darkGreen = #82B3AE;

float sliderY;
float shade;
void setup() {
  size(800, 600);
  strokeWeight(5);
  stroke(pink);
  fill(pink);
  sliderY = 400;
}

void draw() {
  background(shade);
  shade = map(sliderY, 100, 700, 0, 255);
  line(400, 0, 400, 600);
  circle(400, sliderY, 50);
}
void mouseReleased() {
  controlSlider();
}

void mouseDragged() {
  controlSlider();
}


void controlSlider() {
  if (mouseX > 375 && mouseX < 425 && mouseY > 0 && mouseY < 600) {
    sliderY = mouseY;
  }

}
