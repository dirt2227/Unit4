color blue = #ade8f4;
color sgreen = #3a6941;
color brown = #6a3a00;
color yellow = #ffd302;
color dyellow = #ea8a00;

void setup()  {
 size (800, 800);
 background(blue);

sunflower(400, 400);
 int x = 0;
 while ( x <= 800)  {
trees(x, 400);
x = x + 10;
}

}

void draw ()  {
  
}

void sunflower(float x, float y)  {
  pushMatrix();
  translate(x, y);
 stalk(-16.5, -120);
 center(-10, -135);
 petals(-10, -195);
 leaves(10, -80);
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
  ellipse(0, 0, 20, 70);
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
  int a = 0;
  translate(x, y);
  while (a < 10) {
  fill(yellow);
  stroke(dyellow);
  ellipse(0, 0, 80, 20);
  rotate (radians(36));
  a = a + 10;
  }
  
}

void trees(float x, float y)  {
   pushMatrix();
  translate(x, y);
  float r, g, b;
  r = random(86, 118);
  g = random(48, 74);
  b = random(33);
trunk(r, g, b);
//tleaves();
 popMatrix();
}

void trunk(float r, float g, float b)  {
  fill(r, g, b);
  stroke(r, g, b);
  rect(random(800), -400, 30, 80);
}
