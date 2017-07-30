int frogHopDist=20;
int frogX=200;
int frogY=350;
Car c1 = new Car (0,50,75,5);
Car c2 = new Car (250,100,75,2);
Car c3 = new Car (190,150,75,4);
Car c4 = new Car (398,200,75,4);
Car c5 = new Car (100,250,75,3);
void setup(){
size(400,400);

}
void draw(){
  background(45,168,213);
  fill(255, 204, 204);
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
  if(c1.intersects(c1) || c2.intersects(c2) || c3.intersects(c3) || c4.intersects(c4) || c5.intersects(c5) == true){
  frogY = 400;
  }
  if(frogY < 50){
  text("You Win!", 50,100);
  textSize(50);
  }
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
int carSize;
int carSpeed;

public Car(int carX, int carY, int carSize, int carSpeed){
  this.carX = carX;
  this.carY = carY;

  this.carSize = carSize;
  this.carSpeed = carSpeed;
}
void display() 
  {
    fill(255,255,153);
    rect(carX, carY, carSize, 50, carSpeed);
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
public int getCarSize(){
return carSize;
}
boolean intersects(Car car) {
if ((frogY > car.getCarY() && frogY < car.getCarY()+50) && (frogX > car.getCarX() && frogX < car.getCarX()+car.getCarSize()))
          return true;
else
          return false;
}

}