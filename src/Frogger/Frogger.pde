int x = 350;
int y = 350;
Car C1 = new Car(100,100,60,60);
Car C2 = new Car(20,30,40,50);
void draw(){
 background(0,0,255);
fill(0,255,0);
ellipse(x,y,25,25);
Borders();
C1.display();
C2.display();
C1.carleft();
C2.carright();

if (intersects(C1)==true){
  x= 350;
  y=350;
}
if (intersects(C2)==true){
 x=350;
 y=350;
}
}
void setup(){
  size(400,400);

}
void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
                  y=y-5;
            }
            else if(keyCode == DOWN)
            {
                  y=y+5; 
            }
            else if(keyCode == RIGHT)
            {
                  x=x+5;
            }
            else if(keyCode == LEFT)
            {
                  x=x-5;      
            }
      }
}
void Borders(){
  if(x>400)
 {
   x=0;
   
}
if(x<0){
  x=400;
}
if(y>400){
y=0;

}
if(y<0){
  y=400;
}
}
public class Car{
 int carx;
 int cary;
 int carSize;
 int speed;

public Car(int carx, int cary,int carSize, int speed){
  this.carx = carx;
  this.cary= cary;
  this.carSize = carSize;
  this.speed = speed;
} 
void display(){
  fill(255,0,0);
  rect(carx,cary,carSize,carSize);
}  
void carleft(){
  carx = carx-speed;
  if(carx<0) {
   carx=width; 
  }
}
void carright(){
 carx = carx + speed;
 if(carx>width){
   carx = 0;
 }
}
int getx(){
  return carx;
}
int gety(){
  return cary;
}
int getSize(){
  return carSize;
}
}
boolean intersects(Car car) {
      if ((y > car.gety() && y < car.gety()+50) && (x > car.getx() && x < car.getx()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}