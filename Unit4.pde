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
  house(random(0, 600), random(10, 600), random(0.5, 1));

  
}

void draw()  {


  
}

void house(float x, float y, float s)  {
 pushMatrix();
 translate(x, y);
 //rotate(PI/2);
 scale(s);
 
 base();
 roof();
 float r, g, b;
 r = random(0, 255);
  g = random(0, 255);
   b = random(0, 255);
 window(50, 100, r, g, b);  //left
 window(250, 100, r, g, b);  //right
 door(150, 250);
 
 popMatrix();
}

void base()  {
 fill(random(0, 255), random(0, 255) , random(0, 255) );
 stroke(0);
 strokeWeight(3);
 rect(0, 0, 400, 400);
}

void roof()  {
  int x = -100;
 fill(random(0, 255), random(0, 255) , random(0, 255) );
 triangle(x, 50, x + 300, -100, x +600, 50);
}

void window(float x, float y, float r, float g, float b)  {
    fill(r, g, b);
    rect(x, y, 90, 90);
}

void door(float x, float y)  {
 fill(random(0, 255), random(0, 255) , random(0, 255) );
 rect(x, y, 90, 150);
 
}
