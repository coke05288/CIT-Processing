float x1;
float y1;
float x2;
float y2;

void setup(){
 size(400, 400);
 
 x1 = 50;
 y1 = 100;
 x2 = 320;
 y2 = 280;
}

void draw(){
  background(234);
  
  int numDots = 13;
  float spacing = 1.0 / (numDots - 1);
  for (int i =0; i< numDots; i++){
   float nx = lerp(x1, x2, spacing*i);
   float ny = lerp(y1, y2, spacing*i);
   ellipse(nx, ny, 10, 10);
  }
}
