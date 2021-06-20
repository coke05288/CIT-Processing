int x_location = 0;
int x_speed = 5;

void setup(){
  size(300, 300);
  rectMode(CENTER);
}

void draw(){
  
  fill(255, 60);
  rect(150, 150, 310, 310);
  
  noStroke();
  fill(255, 130, 140);
  ellipse(x_location, 150, 50, 50);
  
  x_location += x_speed;
  
  if(x_location > 300 || x_location < 0){
    x_speed *= -1;
  }
  
}
