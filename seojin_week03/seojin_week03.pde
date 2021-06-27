int direction = 0;

void setup() {
  size(500, 500); 
  rectMode(CENTER);  
}

void draw() {
  //drawLine();
  //drawEllipseLine();
  //drawEllipse();
  background(230);
  
  rect(250, 250 + direction, 50, 50);
  
  if(mousePressed){
    if(mouseButton == LEFT){
      background(255, 0 ,0);
    }else if(mouseButton == RIGHT){
      background(0, 255 ,0);
    }
  }
  
  if(keyPressed){ 
    if(key == CODED){
      if(keyCode == UP){
        direction--;
      }else if(keyCode == DOWN){
        direction++;
      }
    }
  }
}

void drawLine() {
  strokeWeight(2);
  for (int i = 0; i < 10; i++) {
    stroke(0 + i*20);
    line(i * 25, 500, 250 + i*25, 0);
  }
}

void drawEllipse() {
  ellipseMode(CENTER);
  strokeWeight(0.2);

  for (int i = 0; i < 25; i++) {
    fill(0 + i * 10);
    ellipse(250, 250, 500 - i * 20, 500 - i * 20);
  }
}

void drawEllipseLine() {
  ellipseMode(CENTER);
  strokeWeight(0.2);
  noFill();
  for (int i = 0; i<20; i++) {
    ellipse(i + 50*i, 250, 50, 50);
  }
}
