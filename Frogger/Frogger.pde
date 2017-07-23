int frogHopDist=25;
int frogX=200;
int frogY=300;
Car c1 = new Car (25,50,50,75,3);
Car c2 = new Car (350,100,50,75,3);
Car c3 = new Car (250,150,50,75,3);
Car c4 = new Car (400,200,50,75,3);
Car c5 = new Car (100,250,50,75,3);
void setup(){
size(400,400);

}
void draw(){
  background(175,119,212);
  fill(93, 171, 101);
  ellipse(frogX,frogY,50,50);
  boundary();
  c1.display();
  c1.moveRight();
  c2.display();
  c2.moveLeft();
  c3.display();
  c3.moveRight();
  c4.display();
  c4.moveLeft();
  c5.display();
  c5.moveRight();
  
 

}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      frogY = frogY - frogHopDist;
      }
      else if(keyCode == DOWN)
      {
         frogY = frogY + frogHopDist;
      }
      else if(keyCode == RIGHT)
      {
         frogX = frogX + frogHopDist;
      }
      else if(keyCode == LEFT)
      {
         frogX = frogX - frogHopDist;
      }
   }
}
void boundary()
{
if(frogX > 400){
  frogX = 350;
}
 if(frogY > 400){
  frogY = 350;
 }
if(frogX< 0){
  frogX = 50;
}
if(frogY < 0){
  frogY = 50;
}
}




public class Car{
int carX;
int carY;
int carLength;
int carWidth;
int carSpeed;

public Car(int carX, int carY, int carWidth, int carLength, int carSpeed){
  this.carX = carX;
  this.carY = carY;
  this.carLength = carLength;
  this.carWidth = carWidth;
  this.carSpeed = carSpeed;
}
void display() 
  {
    fill(0,255,0);
    rect(carX, carY, carLength, carWidth, carSpeed);
  }

void moveLeft(){
this.carX = carX - carSpeed;
if(this.carX < 0){
this.carX = 400;
}
}

void moveRight(){
this.carX = carX + carSpeed;
if(this.carX > 400){
this.carX = 0;
}
}
public int getCarX(){
return carX;
}
public int getCarY(){
 return carY; 
}
public int getCarLength(){
return carLength;
}
public int getCarWidth(){
return carWidth;
}
 boolean intersects(Car c1) {
if ((frogY > c1.getCarY() && frogY < c1.getCarY()+50) && (frogX > c1.getCarX() && frogX < c1.getCarX()+c1.getCarLength())){
          frogX = 200;
          frogY = 300;
          return true;
}  else{
        return false;
}
}
}