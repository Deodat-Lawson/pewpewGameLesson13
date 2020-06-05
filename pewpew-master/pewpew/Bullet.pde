class Bullet extends GameObject{
  int time;

  Bullet(float x, float y, float size,float hp, color c){
    super(x,y,size,hp,c);
    if(c== yellow){
    PVector aim = new PVector(mouseX-myPlayer.x, mouseY-myPlayer.y);
    aim.setMag(10);
    vx = aim.x;
    vy = aim.y;
    
    }
    if(c == white){
      PVector aim = new PVector(myPlayer.x-x, myPlayer.y-y);
    aim.setMag(10);
    vx = aim.x;
    vy = aim.y;
      
    }

  }
  
 void act(){
   super.act();
   if(x < 0 || x > width || y < 0 || y  >height || time >= 500){
     hp = 0;
   }
   for(int i =0;i < objects.size();i++){
    GameObject obj = objects.get(i); 
    if(obj instanceof Obstacle){
      if(touching(obj)){
        PVector bounce = new PVector(x - obj.x,obj.y-y);
        bounce.setMag(10);
        vx = bounce.x;
        vy = bounce.y;
        
        
        //hp = 0;
   }
    }
    if(obj instanceof Enemy && myColor == yellow){
      if(touching(obj)){
        obj.hp--;
        
        
        //hp = 0;
   }
    }
 }
 time++;

  
  
}


}
