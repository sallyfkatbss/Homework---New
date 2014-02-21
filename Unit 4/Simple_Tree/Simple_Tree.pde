void setup() {
  size(1000, 1000);

  //move the orgin
  translate(width/2, height/1.3);

  //thicker lines
  strokeWeight(5);

  // make the tree upright
  rotate(radians(-90));
  drawTreeRight(7); // with five generations
  drawTreeRight(6);
  drawTreeRight(5);
  drawTreeRight(4);
  drawTreeRight(3);
  drawTreeRight(2);
  drawTreeRight(1);


}

void drawTreeRight(int depth) {

  if (depth > 0) {
    //draw base  
    stroke(99, 69, 25);
    line(0, 0, 100, 0); //draw along the x-axis

    //move to the end of the base 
    translate (74, 0);

    //draw left branch 
    pushMatrix();
    rotate (radians(-23));
    stroke(99, 69, 25);
    line(0, 0, 50, 0); 
    translate(20, 0); // translate to end of branch before drawing 
    drawTreeRight(depth - 1);
    popMatrix(); 

    //draw right branch 
    pushMatrix();
    rotate (radians(23));
    stroke(99, 69, 25);
    line(0, 0, 50, 0);
    translate(20, 0); // translate to end of branch before drawing
    drawTreeRight(depth - 1);
    popMatrix();
  }
}
