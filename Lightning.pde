int xRect = 240;

int startX = xRect + 10;
int startY = 0;
int endX = xRect + 10;
int endY = 0;

void setup() {
  size(500, 500);
  background(255);
  strokeWeight(5);
  stroke(255,255,0);
  fill(67,70,75);
}

void draw() {
 
  while (endY < 400) {
    endX = startX + (int) (Math.random() * 19 - 9); //* 10
    endY = startY + (int) (Math.random() *10); //*19 -9
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  noStroke();
  rect(xRect, 400, 20, 90);
  if (xRect <= -20 || xRect >= 500) {
    exit();
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      background(255);
      xRect = xRect - 10;
    } else if (keyCode == RIGHT) {
      xRect = xRect + 10;
      background(255);
    }
  }
}

void mousePressed() {
  startX = xRect + 10;
  startY = 0;
  endX = xRect + 10;
  endY = 0;
  stroke(255,255,0);
 
}
