class flash {

  float x, y;
  float xMove, yMove;
  float strike;
  float transparency;


  flash(float tempX, float tempY) {
    x = tempX;
    y = tempY;
    xMove = random(width);
    yMove = random(height);
    strike = random(0,20);
    transparency = 255;
  }


  void lightingStrike() {
    if (frameCount % 20 == 0){
      if(transparency>0){
    transparency -=10; 
    }
    tint(255, transparency);
    image(lightning, x, y);
    y = random(height);
    x = random(width);
    
  }
  }
    void moveLightning() {
    y = random(height);
    x = random(width);
    if(transparency>0){
    transparency -=10; 
    }
    tint(255, transparency);
  
}
}
