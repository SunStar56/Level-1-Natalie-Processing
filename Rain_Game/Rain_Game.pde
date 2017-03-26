int rainY = 100;
int rainX = (int) random (width);
int bucketY = 500-50;
int bucketWidth = 75;
int mouseRound = mouseX + 75;
int score = 0;
String winningMessage = "You win! Now we need to wait for the water to evaporate again...";
void setup() {
  size (500, 500);
  rect (250, 500, 50, 100);
}
void draw() {

  background (120, 100, 120);
  fill(0, 0, 0);
  textSize(16);
  text("Score: " + score, 20, 20);
  if (score == 10){
    text(winningMessage, 00,250);
  }
  fill (50, 50, 100);
  stroke (50, 50, 200);
  ellipse (rainX, rainY, 10, 10);
  fill (100, 150, 100);
  stroke (0, 0, 0);
  rect (mouseX, bucketY, bucketWidth, 50);
  rainY = rainY + 10;
  if (rainY > height-25) {
    if (mouseX < rainX && mouseX+bucketWidth > rainX) {
      score++;
      println ("Caught!  Your score is now " + score);
    } else if (score > 0) {
      score--; 
      println ("Missed!  Your score is now " + score);
    }
    rainY = 0;
    rainX = (int) random (width);
    

  }
}

