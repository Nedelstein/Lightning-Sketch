class raindrop {

  float size;
  float x, y;
  float ySpeed;
  float xMove, yMove;


  raindrop(float tempX, float tempY) {
    x = tempX;
    y = tempY;
    xMove = random(width);
    yMove = random(height);
  }


  void displayRain() {
    stroke(255);
    line(x, y, x, y+10);
  }
/// move raindrop to random spot - not falling but instead flashing like an animation///
  void moveDrop() {
    y = random(height);
    x = random(width);
    
  }
  
 
  }
