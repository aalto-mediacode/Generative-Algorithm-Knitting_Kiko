void moveForward6() {
  if (dir == ANTUP) {
    y--;
  } else if (dir == ANTRIGHT) {
    x++;
  } else if (dir == ANTDOWN) {
    y++;
  } else if (dir == ANTLEFT) {
    x--;
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
