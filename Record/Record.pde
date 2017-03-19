      PImage pictureOfRecord;
       int spinningSpeed = 5;
       int startingSpeed = spinningSpeed;
       import ddf.minim.*;
       Minim minim; 
       AudioPlayer song;
void setup(){
      pictureOfRecord= loadImage("Record.jpeg");
       size(pictureOfRecord.width, pictureOfRecord.height); 
       minim = new Minim(this);
       song = minim.loadFile("celloSquadron.mp3", 512);
}
void rotateImage(PImage image, int amountToRotate) {
translate(width/2, height/2);
rotate(amountToRotate*TWO_PI/360);                              
translate(-image.width/2, -image.height/2);
}
void draw(){

if(mousePressed){
     rotateImage(pictureOfRecord,spinningSpeed);
  spinningSpeed = spinningSpeed + startingSpeed;
  song.play();
}
else{
song.pause();
}


 image(pictureOfRecord, 0, 0);
}



//7. Add a song.
//drop the song file onto your sketch

//  import ddf.minim.*;     //at the very top of your sketch
//  Minim minim;        //as a member variable
//  AudioPlayer song;      //as a member variable
//  minim = new Minim(this);    //in the setup method
//song = minim.loadFile("celloSquadron.mp3", 512);//in the setup method
//song.play();
  

//8. Only play the song when the mouse is pressed.
 // mousePressed
 // song.play()
 // song.pause()

//9. Make the record spin as fast as possible

