class Obstacle extends GameObject{
  
  Obstacle(){
    super(purple);  
    while(touchingObstacle()){
     x = random(0,width);
     y = random(0, height);
     
    }
  }
  void act(){
   super.act(); 
   if(touching(myPlayer)){
     PVector bounce = new PVector(myPlayer.x-x,myPlayer.y-y);
     bounce.setMag(5);
     myPlayer.x+=bounce.x;
     myPlayer.y+=bounce.y;
  }
  }
 
  
  
}
