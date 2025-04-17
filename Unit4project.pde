color blue = #ade8f4;
color sgreen = #3a6941;
color brown = #6a3a00;
color yellow = #ffd302;
color dyellow = #ea8a00;

void setup()  {
 size (800, 800);
 background(blue);
  int x = 0;
 while ( x <= 800)  {
trees(x, 400);
x = x + 10;
}

float a = 0;
while (a <= 800)  {
sunflower(a, random(350, 500));
a = a + random(50, 100);
}

float b = 0;
while (b <= 800)  {
sunflower(b, random(450, 550));
b = b + random(50, 100);
}


}


void sunflower(float x, float y)  {
  pushMatrix();
  translate(x, y);
  scale(0.8);
 stalk(-16.5, -120);
 center(-10, -135);
 petals(-10, -135);
 leaves(25, -80);
 popMatrix();
}

void stalk(float x, float y)  {
  pushMatrix();
  translate(x, y);
  fill(sgreen);
  stroke(sgreen);
  rect(0, 0, 15, 150);
  popMatrix();
 
}

void leaves(float x, float y)  {
   pushMatrix();
  translate(x, y);
   fill(sgreen);
  stroke(sgreen);
     rotate(PI/4);
  ellipse(random(0, 20), random(0, 100), 20, 70);
  popMatrix();
  
}

void center(int x, int y)  {
   pushMatrix();
  translate(x, y);
   fill(brown);
  stroke(brown);
 circle(0, 0, 40);
  popMatrix();
}

void petals(float x, float y)  {
    pushMatrix();
  translate(x, y);
  scale(0.8);
  int a = 0;
  while (a < 14) {
  fill(yellow);
  stroke(dyellow);
  ellipse(60, 0, 80, 20);
  rotate(radians(25.7));
  a = a + 1;
  }
   popMatrix();
}

void trees(float x, float y)  {
   pushMatrix();
  translate(x, y);
  float r, g, b;
  r = random(86, 118);
  g = random(48, 74);
  b = random(33);
  float a, c, d;
  a = random(13, 93);
  c = random(91, 145);
  d = random(83);
trunk(r, g, b);
tleaves(a, c, d);
 popMatrix();
}

void trunk(float r, float g, float b)  {
  fill(r, g, b);
  stroke(0, 50);
  rect(random(-400, 400), -300, random(30, 50), 200);
}

void tleaves(float a, float c, float d )  {
 fill(a, c, d,  random(40, 255));
stroke(a, c, d);
float x = 
while
ellipse(x, 0, random(20, 80), random(20, 80));
 
}
