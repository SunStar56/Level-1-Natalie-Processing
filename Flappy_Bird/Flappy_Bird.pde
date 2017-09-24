int birdX = 200;
int birdY = 250;
int birdW = 50;
int birdH = 50;
int pipeX = 400;
int pipeY = 0;
int pipeW = 100;
int pipeH = 400;
int pipeRand = (int) random(0,100);
double birdYVelocity = 0;
double gravity = .5;
void setup() {
size(500,800);
}
void draw() {
background(204,255,255);
fill(255,255,153);
ellipse(birdX,birdY,birdW,birdH);
birdYVelocity+=gravity;
birdY+=birdYVelocity;
fill(0,102,0);
rect(pipeX,pipeY,pipeW,pipeRand);
pipeX -= 5;
if(pipeX <= -100){
pipeX = 800;
int pipeRand = (int) random(0,100);
pipeY = pipeRand;
}
}
void mousePressed(){
birdY-=birdYVelocity;
birdYVelocity = -10;
}