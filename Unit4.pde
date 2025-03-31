//Joanna Sun
//Mar. 31, 2025
//2-4
color blue = #bde0fe;
color green = #6a994e;
color red = #ba181b;

void setup() {
  size(800, 800);
}

void draw()  {
  flower(200, 100);
 background(blue);
  strokeWeight(0);
  stroke(green);
  fill(green);
 rect(400, 400, 20, 100);
 ellipse(390, 470, 40, 15);
 ellipse(430, 470, 40, 15);
 fill(red);
 ellipse(410, 390, 50, 50);
 stroke(red);
 strokeWeight(20);
 line(380, 390, 400, 400);
 line(440, 390, 420, 400);
}

void flower(int x, int y)  {
  pushMatrix();
  translate(x, y);
  petals();
  stem();
  Leaves();
  
  popMatrix();
}
