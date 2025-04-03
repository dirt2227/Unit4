//Joanna Sun
//Mar. 31, 2025
//2-4
color blue = #bde0fe;
color green = #6a994e;
color red = #ba181b;
color brown = #9c6644;



void setup() {
  size(800, 600);
  background(blue);
  
  random(0, 255);
  
}

void draw()  {
  house(random(100, 600), random(100, 600), 0.5);
  house(300, 300, 0.2);
  house(20, 100, 0.8);
  house(600, 100, 0.4);
  
}

void house(float x, float y, float s)  {
 pushMatrix();
 translate(x, y);
 rotate(PI/2);
 scale(s);
 base();
 roof();
 window(50, 100);  //left
 window(250, 100);  //right
 door(150, 250);
 
 popMatrix();
}

void base()  {
 fill(green);
 stroke(0);
 strokeWeight(3);
 rect(0, 0, 400, 400);
}

void roof()  {
  int x = -100;
 fill(red);
 triangle(x, 50, x + 300, -100, x +600, 50);
}

void window(int x, int y)  {
    fill(blue);
    rect(x, y, 90, 90);
}

void door(int x, int y)  {
 fill(brown); 
 rect(x, y, 90, 150);
 
}
