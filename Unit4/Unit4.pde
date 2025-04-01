//Joanna Sun
//Mar. 31, 2025
//2-4
color blue = #bde0fe;
color green = #6a994e;
color red = #ba181b;

void setup() {
  size(800, 600);
  background(blue);
}

void draw()  {
  house(200, 100);
}

void house(int x, int y)  {
 pushMatrix();
 translate(x, y);
 base();
 //roof();
 //window();  //left
 //window();  //right
 //door();
 
 popMatrix();
}

void base()  {
 fill(green);
 stroke(0);
 strokeWeight(3);
 rect(0, 0, 400, 400);
}
