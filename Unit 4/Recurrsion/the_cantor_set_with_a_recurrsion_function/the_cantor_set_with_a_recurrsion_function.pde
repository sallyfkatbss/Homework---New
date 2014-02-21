void setup() {
  size(640, 360);
}

void draw() {
  background(255);
  drawCircle(width/2, height/2, 200);
}

void drawCircle(float x, float y, float radius) {
  ellipse(x, y, radius, radius);
  if (radius > 8) {
    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
    drawCircle(x, y + radius/2, radius/2);
    drawCircle(x, y - radius/2, radius/2);
    cantor(10, 20, width-20);
  }
}

void cantor(float x, float y, float len) {
  line(x,y,x+len,y);
 
  y += 20;
 
  cantor(x,y,len/3);
  cantor(x+len*2/3,y,len/3);
}
