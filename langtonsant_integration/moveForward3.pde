void moveForward3() {
 
 
  if (dir == ANTUP) {
    //y-=ySpeed;
    y=y-10;
  } else if (dir == ANTRIGHT) {
    //x+=xSpeed;
    x=x+2;
  } else if (dir == ANTDOWN) {
    //y+=ySpeed;
    y=y+10;
  } else if (dir == ANTLEFT) {
    //x-=xSpeed;
    x=x-2;
  }

  if (x > width-1) {
    x = 0;
  } else if (x < 0) {
    x = width-1;
  }
  if (y > height-1) {
    y = 0;
  } else if (y < 0) {
    y = height-1;
  }
}
