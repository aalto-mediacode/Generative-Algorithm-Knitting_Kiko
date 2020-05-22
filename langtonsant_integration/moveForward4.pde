void moveForward4() {
  float xSpeed = map(mouseX,0,width,1,10);
  //float ySpeed = map(mouseY,0,height,0,2);
  
  if (dir == ANTUP) {
    if(mouseY<height/2){ y-=xSpeed;}else{y--;}
  
  } else if (dir == ANTRIGHT) {
    if(mouseY<height/2){x++;}else{x+=xSpeed;}
  } else if (dir == ANTDOWN) {
    if(mouseY<height/2){ y-=xSpeed;}else{y++;}
  } else if (dir == ANTLEFT) {
    if(mouseY<height/2){ x--;}else{x-=xSpeed;}
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
