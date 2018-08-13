import com.temboo.core.*;
import com.temboo.Library.Yahoo.Weather.*;

PImage stormMountain;
PImage lightning;

flash[] boom = new flash[1];
raindrop[] rain = new raindrop[30]; 

void setup() {
  size(350, 350);
  frameRate(15);
  for (int i = 0; i<30; i++) {
    rain[i] = new raindrop(random(width), random(height));
    
  }
  for (int i = 0; i<1; i++){
boom[i] = new flash(random(width), random(height));
}

  ///mountain image///
  stormMountain = loadImage("stormMountain.png");
  ///lightning image
  lightning = loadImage("lightning.png");
}


void draw() {
  noTint();
  background(255);

  rect(0,0,width,height);
  
  imageMode(CENTER);
  image(stormMountain, width/2, height/2);

  for (int i = 0; i<30; i++) {
    rain[i].displayRain();
    rain[i].moveDrop();
    //loop();
  }
  for (int i = 0; i<1; i++){
  boom[i].lightingStrike();
  boom[i].moveLightning(); 
}
}
