float x;
float y;
float tx;
float ty;
 
void setup(){
 size(400, 400);
 rectMode(CENTER);
 
 x = random(width);
 y = random(height);
 tx = x;
 ty = y;
}

void draw(){
  fill(234, 100);
  rect(200, 200, 400, 400);
  
  x = lerp(x, tx, .2);
  y = lerp(y, ty, .2);
  
  fill(lerpColor(int(x), int(tx), .3),lerpColor(int(x), int(tx), .5) , lerpColor(int(x), int(tx), .2));
  noStroke();
  ellipse(x, y, 40, 40);
  
  tx = mouseX;
  ty = mouseY;
  
}

void mousePressed(){
  tx = mouseX;
  ty = mouseY;
}
