int birdYVelocity = 30;
  int gravity =1;
  int x = 250;
  int y = 250;
void setup(){
  size(1000,1000);

}
void mousePressed(){
}
void draw(){
  background (0,0,255);
  stroke (0,0,255);
  ellipse(x,y,50,50);
  
  
  if(mousePressed){
 
  }
  fill(0,255,0);
  rect(250,0,0,250);
}