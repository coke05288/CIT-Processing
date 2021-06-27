boolean check = true;
float check_start = 0;
float check_end = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  noFill();
  strokeWeight(6);
  stroke(#292664);
  arc(250, 250, 80, 80, radians(0)+frameCount/20.0, radians(70)+frameCount/20.0);
  arc(250, 250, 80, 80, radians(180)+frameCount/20.0, radians(250)+frameCount/20.0);
  
  strokeWeight(2);
  stroke(#f2bed1);

  arc(250, 250, 70, 70, radians(0), radians(360));


  strokeWeight(4);
  stroke(#b5ccf1);
  arc(250, 250, 55, 55, radians(0)-frameCount/10.0, radians(70)-frameCount/10.0);
  arc(250, 250, 55, 55, radians(180)-frameCount/10.0, radians(250)-frameCount/10.0);

  strokeWeight(2);
  stroke(#f2bed1);

  if(check){
    check_start = 0;
    check_end += 0.5;
  }else{
    check_start += 0.5;
    check_end = 0;
  }
  
  arc(250, 250, 90, 90, radians(0)+check_start, radians(70)+check_end);
  
  
  
  
}
