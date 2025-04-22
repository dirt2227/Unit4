color blue = #ade8f4;
color sgreen = #3a6941;
color lgreen = #83A86E;
color brown = #6a3a00;
color yellow = #ffd302;
color dyellow = #ea8a00;
color lyellow = #FFDB4B;
color grey = #C4C4C4;
color purple = #A85FD9;
color dpurple = #723B97;
color nblue = #8EDDF5;


void setup()  {
 size (800, 800);
 background(blue);
 
 stroke(sgreen);
 fill(sgreen);
 rect(0, 300, 800, 300);
 stroke(lgreen);
  fill(lgreen);
 rect(0, 600, 800, 300);
  
  int x = 0;
 while ( x <= 800)  {
trees(x, 400);
x = x + 5;
}



float a = 0;
while (a <= 800)  {
sunflower(a, random(350, 450));
a = a + random(0, 40);
}

float b = 0;
while (b <= 800)  {
sunflower(b, random(450, 550));
b = b + random(0, 50);
}

float c = 0;
while (c <= 800)  {
sunflowerb(c, random(500, 600));
c = c + random(0, 60);
}

float e = 0;
while (e <= 800)  {
pdaisy(e, random(750, 1000));
e = e + random(0, 35);
}

float d = 0;
while (d <= 800)  {
daisy(d, random(1000, 1200));
d = d + random(0, 50);
}

float f = 0;
while (f <= 800)  {
forget(f, random(350, 1000));
f = f + random(0, 70);
}

}

//-------------------------------------------------------------------------------sunflower--------------------------------
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
  strokeWeight(3);
  ellipse(60, 0, 80, 20);
  rotate(radians(25.7));
  a = a + 1;
  }
   popMatrix();
}

//------------------------------------------------------------------------------------trees--------------------------------
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
tleaves(a, c, d);
trunk(r, g, b);


 popMatrix();
}

void tleaves(float a, float c, float d )  {
 fill(a, c, d,  random(40, 255));
stroke(a, c, d);
float x = -20;
while (x < 70)  {
ellipse(x, random(-1000, -300), random(20, 80), random(20, 80));
x = x + 20;

}
 
}

void trunk(float r, float g, float b)  {
  fill(r, g, b);
  stroke(0, 50);
  rotate(PI);
  rect(random(-700, 700), 50, random(30, 50), random(200, 300));
}

//-----------------------------------------------------------------------------------sunflowerb------------------------------
void sunflowerb(float x, float y)  {
  pushMatrix();
  translate(x, y);
  scale(0.8);
 stalkb(-16.5, -120);
 centerb(-10, -135);
 petalsb(-10, -135);
 leavesb(25, -80);
 popMatrix();
}

void stalkb(float x, float y)  {
  pushMatrix();
  translate(x, y);
  fill(lgreen);
  stroke(lgreen);
  rect(0, 0, 15, 150);
  popMatrix();
 
}

void leavesb(float x, float y)  {
   pushMatrix();
  translate(x, y);
   fill(lgreen);
  stroke(lgreen);
     rotate(PI/4);
  ellipse(random(0, 20), random(0, 100), 20, 70);
  popMatrix();
  
}

void centerb(int x, int y)  {
   pushMatrix();
  translate(x, y);
   fill(brown);
  stroke(brown);
 circle(0, 0, 40);
  popMatrix();
}

void petalsb(float x, float y)  {
    pushMatrix();
  translate(x, y);
  scale(0.8);
  int a = 0;
  while (a < 14) {
  fill(lyellow);
  stroke(dyellow);
  ellipse(60, 0, 80, 20);
  rotate(radians(25.7));
  a = a + 1;
  }
   popMatrix();
}

//---------------------------------------------------------------------daisy-----------------------------------------------
void daisy(float x, float y)  {
  pushMatrix();
  translate(x, y);
  scale(2.5);
 stalks(-16.5, -120);
 ycenter(-10, -135);
 petal(-10, -135);
 popMatrix();
}

void stalks(float x, float y)  {
  pushMatrix();
  translate(x, y);
  fill(lgreen);
  stroke(lgreen);
  rect(5, -5, 5, 55);
  popMatrix();
 
}


void ycenter(int x, int y)  {
   pushMatrix();
  translate(x, y);
   fill(yellow);
  stroke(brown);
 circle(0, 0, 20);
  popMatrix();
}

void petal(float x, float y)  {
    pushMatrix();
  translate(x, y);
  scale(0.5);
  int a = 0;
  while (a < 10) {
  fill(255);
  stroke(grey);
  ellipse(35, 0, 50, 20);
  rotate(radians(36));
  a = a + 1;
  }
   popMatrix();
}

//--------------------------------------------------------------------------pdaisy------------------------------------
void pdaisy(float x, float y)  {
  pushMatrix();
  translate(x, y);
  scale(2);
 stalkp(-16.5, -120);
 bcenter(-10, -135);
 ppetal(-10, -135);
 popMatrix();
}

void stalkp(float x, float y)  {
  pushMatrix();
  translate(x, y);
  fill(lgreen);
  stroke(lgreen);
  rect(5, -5, 5, 55);
  popMatrix();
 
}


void bcenter(int x, int y)  {
   pushMatrix();
  translate(x, y);
   fill(0);
  stroke(brown);
 circle(0, 0, 20);
  popMatrix();
}

void ppetal(float x, float y)  {
    pushMatrix();
  translate(x, y);
  scale(0.5);
  int a = 0;
  while (a < 10) {
  fill(purple);
  stroke(dpurple);
  ellipse(40, 0, 50, 20);
  rotate(radians(36));
  a = a + 1;
  }
   popMatrix();
}
 //----------------------------------------------------forget me nots------------------------------------------------
void forget(float x, float y)  {
  pushMatrix();
  translate(x, y);
  scale(0.7);
 ncenter(-10, -135);
 npetal(-10, -135);
 popMatrix();
}


void ncenter(int x, int y)  {
   pushMatrix();
  translate(x, y);  
 fill(yellow);
  stroke(brown);
 circle(0, 0, 20);
  fill(brown);
  stroke(brown);
 circle(0, 0, 5);
  popMatrix();
}

void npetal(float x, float y)  {
    pushMatrix();
  translate(x, y);
  scale(0.5);
  int a = 0;
  while (a < 5) {
  fill(nblue);
  stroke(nblue);
  ellipse(40, 0, 60, 50);
  rotate(radians(72));
  a = a + 1;
  }
   popMatrix();
}
